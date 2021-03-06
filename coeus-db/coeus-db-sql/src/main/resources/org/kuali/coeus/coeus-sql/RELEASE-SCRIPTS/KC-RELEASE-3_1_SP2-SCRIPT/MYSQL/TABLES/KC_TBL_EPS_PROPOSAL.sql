-- These must be run together to avoid errors --
ALTER TABLE EPS_PROPOSAL 
  DROP FOREIGN KEY FK_EPS_PROPOSAL_DOCUMENT;
ALTER TABLE EPS_PROPOSAL MODIFY DOCUMENT_NUMBER VARCHAR(40);
ALTER TABLE EPS_PROPOSAL_DOCUMENT MODIFY DOCUMENT_NUMBER VARCHAR(40);
ALTER TABLE EPS_PROPOSAL
  ADD CONSTRAINT FK_EPS_PROPOSAL_DOCUMENT FOREIGN KEY (DOCUMENT_NUMBER)
  REFERENCES EPS_PROPOSAL_DOCUMENT (DOCUMENT_NUMBER);