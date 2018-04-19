CREATE VIEW higgins_students4 as SELECT c.id as class_id, s.id as sid, s.lastName, room, grade from student s, class c where c.student = s.id and grade = '8' and room = '120';
CREATE VIEW quiz_results4 as SELECT id as quizid, question as qid, weight, response, sID FROM quiz q, responses r where r.quizId = 'Pr1-220310' and q.id = 'Pr1-220310' and q.question = r.question_id;
CREATE VIEW all_questions4 as select * from quiz where id = 'Pr1-220310';
CREATE VIEW answered_all4 as select sid, question as qid from higgins_students4 , all_questions4;
CREATE VIEW didnt_answer4 as (select * from answered_all4) EXCEPT (select sid, qid from quiz_results4);
select sid, qid, left(question,50) as question from didnt_answer4 d, question q where d.qid = q.id;
