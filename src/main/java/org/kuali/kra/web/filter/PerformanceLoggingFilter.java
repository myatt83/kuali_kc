/*
 * Copyright 2005-2014 The Kuali Foundation.
 * 
 * Licensed under the Educational Community License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.web.filter;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Part of KRA's {@link FilterChain} that handles timing a {@link HttpServletRequest} and reporting on the state of 
 * resource consumption. The following information gets logged from this {@link Filter} at the <b>INFO</b> log level.
 * <ul>
 *   <li>Request execution time</li>
 *   <li>Initial resource consumption</li>
 *   <li>Initial available resources</li>
 *   <li>Final resource consumption</li>
 *   <li>Final available resources</li>
 * </ul>
 */
public class PerformanceLoggingFilter implements Filter {
    private static final Log LOG = LogFactory.getLog(PerformanceLoggingFilter.class);
    private static final int MB_CONVERSION = 1024 * 1024;
    
    /**
     * @see Filter#destroy()
     */
    public void destroy() {}
    
    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig config) throws ServletException {
    }


    /**
     * <p>Does the actual logging. The log4j.properties file already covers user and date/time logging for us, so the
     * only thing that gets logged in <b>INFO</b> here is the intended action.</p>
     * 
     * <p>Memory used for a request is calculated with {@link Runtime#freeMemory()} and 
     * {@link Runtime#totalMemory()}. The calculation is imperfect and subject to
     * garbage collection so you may see negative numbers if GC occurred during
     * the threads execution. If you take multiple samples in a very controlled environment
     * (i.e. only one interactive user), you can extract some reasonable data. You have been warned.
     *
     * @see javax.servlet.Filter#doFilter(ServletRequest,ServletResponse,FilterChain)
     * @see Runtime#totalMemory()
     * @see Runtime#freeMemory()
     */
    public void doFilter(final ServletRequest request,
                         final ServletResponse response,
                         final FilterChain chain) throws IOException, ServletException {
        if (LOG.isInfoEnabled()) {
            final long start = System.currentTimeMillis();
            final Runtime rt = Runtime.getRuntime();
            final long totalMem = rt.totalMemory();
            final long startMemInUse = totalMem - rt.freeMemory();

            chain.doFilter(request, response);

            long elapsed = System.currentTimeMillis() - start;
            final long finishMemInUse = totalMem - rt.freeMemory();
            final long usedMemory = finishMemInUse - startMemInUse;
            final String uri = ((HttpServletRequest) request).getRequestURI();
            // elapsed time in milliseconds
            LOG.info(uri + " : " + elapsed + " ms");
            // for backwards compatibility, display total amount of memory used in the jvm in bytes
            // FYI there are better ways to get this information; you might take a look at:
            // http://stackoverflow.com/questions/1161647/how-to-redirect-verbose-garbage-collection-output-to-a-file
            // And a handy tool to go with the data: https://github.com/chewiebug/GCViewer
            LOG.info(uri + " : " + finishMemInUse + " memory used");
            // try to calculate MB used by this particular servlet request
            LOG.info(uri + " : " + usedMemory / MB_CONVERSION + " MB memory used for request *");
        }
        else { // just run the filter
            chain.doFilter(request, response);
        }
    }
}
