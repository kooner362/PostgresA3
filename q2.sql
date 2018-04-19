CREATE VIEW all_questions2 as select id, left(question, 50) as question from question;
CREATE VIEW all_mc_count as select id , count(hint) as hint from multiple_choice_question group by id, hint;
CREATE VIEW mc_sum as select id, sum(hint) as num_hints from all_mc_count group by id;
CREATE view all_numeric_count as select id, count(hint) as hint from numeric_question group by id, hint;
CREATE view numeric_sum as select id, sum(hint) as num_hints from all_numeric_count group by id;
CREATE view merged_mc as select * from all_questions2 natural join mc_sum;
CREATE view merged_numeric as select * from all_questions2 natural join numeric_sum;
CREATE view tf_hint as select distinct id, (cast(NULL as INT)) as num_hints from tf_question;
CREATE view merged_tf as select * from all_questions2 natural join tf_hint;
SELECT * from merged_mc UNION select * from merged_numeric UNION select * from merged_tf;