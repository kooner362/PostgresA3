CREATE VIEW higgins_students3 as SELECT c.id as class_id, s.id as sid, s.lastName, room, grade from student s, class c where c.student = s.id and grade = '8' and room = '120';
CREATE VIEW quiz_results3 as SELECT id as quizid, question as qid, weight, response, sID FROM quiz q, responses r where r.quizId = 'Pr1-220310' and q.id = 'Pr1-220310' and q.question = r.question_id;
CREATE VIEW correct_responses3 as select * from question q1, quiz_results3 q2 where q1.id = q2.qid and q1.answer = q2.response;
CREATE VIEW sum3 as select sid, sum(weight) as total_grade from correct_responses3 group by sid;
create view quiz_score3 as select h.sid, lastName, total_grade from higgins_students3 h left join sum3 s on h.sid = s.sid;
select sid, lastName, COALESCE(total_grade, 0) as total_grade from quiz_score3;
