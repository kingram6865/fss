-- instructor2session table triggers
CREATE TRIGGER tbi_new_teacher4session BEFORE INSERT ON instructor2session FOR EACH ROW EXECUTE PROCEDURE new_teacher_session();
CREATE TRIGGER tbu_edit_teacher4session BEFORE UPDATE ON instructor2session FOR EACH ROW EXECUTE PROCEDURE edit_teacher_session();

-- appointment_schedule table triggers
CREATE TRIGGER tbi_new_appointment BEFORE INSERT ON appointment_schedule FOR EACH ROW EXECUTE PROCEDURE new_appointment();
CREATE TRIGGER tbu_edit_appointment BEFORE UPDATE ON appointment_schedule FOR EACH ROW EXECUTE PROCEDURE edit_appointment();

-- session_details table triggers

CREATE TRIGGER tbi_new_session_detail BEFORE INSERT ON session_details FOR EACH ROW EXECUTE PROCEDURE new_session_detail();
CREATE TRIGGER tbu_edit_session_detail BEFORE UPDATE ON session_details FOR EACH ROW EXECUTE PROCEDURE edit_session_detail();