CREATE VIEW higgins_students5 as SELECT c.id as class_id, s.id as sid, s.lastName, room, grade from student s, class c where c.student = s.id and grade = '8' and room = '120';
CREATE VIEW quiz_results5 as SELECT  question as qid, weight, response, sID FROM quiz q, responses r where r.quizId = 'Pr1-220310' and q.id = 'Pr1-220310' and q.question = r.question_id;
CREATE VIEW correct_responses5 as select id, count(*) as correct from question q1, quiz_results5 q2 where q1.id = q2.qid and q1.answer = q2.response group by id;
create view incorrect_responses as select id, count(*) as incorrect from question q1, quiz_results5 q2 where q1.id = q2.qid and q1.answer != q2.response group by id;
CREATE VIEW all_questions5 as select * from quiz where id = 'Pr1-220310';
CREATE VIEW answered_all5 as select sid, question as qid from higgins_students5 , all_questions5;
CREATE VIEW didnt_answer5 as (select * from answered_all5) EXCEPT (select sid, qid from quiz_results5);
create view didnt_answer_total as select qid as id, count(*) as did_not_answer from didnt_answer5 group by qid;
select * from correct_responses5 natural join incorrect_responses natural join didnt_answer_total;
