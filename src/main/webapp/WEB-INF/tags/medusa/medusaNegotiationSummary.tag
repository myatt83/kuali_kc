<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>

<%@ attribute name="node" required="true" type="org.kuali.kra.medusa.MedusaNode"%>
  <table style="border: 1px solid rgb(147, 147, 147); padding: 0px; width: 97%; border-collapse: collapse;">
    <tr>
      <th colspan="4" style="border-style: solid; text-align: left; border-color: rgb(230, 230, 230) rgb(147, 147, 147) rgb(147, 147, 147); border-width: 1px; padding: 3px; border-collapse: collapse; background-color: rgb(184, 184, 184); background-image: none;">Negotiation ${node.bo.negotiationId}</th>
    </tr>
    <tr>
      <td style="text-align: center;" colspan="4">
	  <a href="${ConfigProperties.application.url}/negotiationNegotiation.do?methodToCall=docHandler&command=displayDocSearchView&docId=${node.bo.documentNumber}&medusaOpenedDoc=true"
	     target="_blank" class="medusaOpenLink">
	    <img title="Open Negotiation" 
	          alt="Open Negotiation" style="border: medium none ;" 
	          src="static/images/tinybutton-opennegotiation.gif"/>
	  </a>      	  
      </td>
    </tr>
    <tr>
      <th colspan="4" style="border-style: solid; text-align:left; border-color: rgb(230, 230, 230) rgb(147, 147, 147) rgb(147, 147, 147); border-width: 1px; padding: 3px; border-collapse: collapse; background-color: rgb(184, 184, 184); background-image: none;">Summary</th>
    </tr>
    <tr>
      <th style="text-align: right;">Negotiation ID:</th>
      <td><c:out value="${node.bo.negotiationId}"/></td>
      <th style="text-align: right;">Negotiation Status:</th>
      <td><c:out value="${node.bo.negotiationStatus.description}"/></td>
    </tr>
    <tr>
      <th style="text-align: right;">Negotiatior:</th>
      <td><c:out value="${node.bo.negotiator.userName}"/></td>
      <th style="text-align: right;">Negotiation Start Date:</th>
      <td><fmt:formatDate pattern="MM/dd/yyyy" value="${node.bo.negotiationStartDate}"/></td>
    </tr>
    <tr>
      <th style="text-align: right;">Agreement Type:</th>
      <td><c:out value="${node.bo.negotiationAgreementType.description}"/></td>
      <th style="text-align: right;">Negotiation End Date:</th>
      <td><fmt:formatDate pattern="MM/dd/yyyy" value="${node.bo.negotiationEndDate}"/></td>      
    </tr>
    <tr>
      <th style="text-align: right;" colspan="3">Negotiation Age:</th>
      <td><c:out value="${node.bo.negotiationAge}"/> days</td>
    </tr>
  </table>
