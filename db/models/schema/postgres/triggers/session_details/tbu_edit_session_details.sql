CREATE OR REPLACE FUNCTION edit_session_detail()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL 
AS $edit_session_detail$


$edit_session_detail$

-- CREATE TRIGGER tbu_edit_session_detail BEFORE UPDATE ON session_details FOR EACH ROW EXECUTE PROCEDURE edit_session_detail();