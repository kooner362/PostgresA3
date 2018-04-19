INSERT INTO question (id, type, question, answer) VALUES ('782', 'Multiple-choice', 'What do you promise when you take the oath of citizenship?', 'To pledge your loyalty to the Sovereign, Queen Elizabeth II');
INSERT INTO multiple_choice_question(id, option, hint) VALUES('782', 'To pledge your loyalty to the Sovereign, Queen Elizabeth II',NULL);
INSERT INTO multiple_choice_question(id, option, hint) VALUES('782', 'To pledge your allegiance to the flag and fulfill the duties of a Canadian', 'Think regally.');
INSERT INTO multiple_choice_question(id, option, hint) VALUES('782', 'To pledge your loyalty to Canada from sea to sea',NULL);


INSERT INTO question (id, type, question, answer) VALUES ('566', 'True-False', 'The Prime Minister, Justin Trudeau, is Canadas Head of State.', 'False');
INSERT INTO tf_question(id, option) VALUES('566', 'True');
INSERT INTO tf_question(id, option) VALUES('566', 'False');

INSERT INTO question (id, type, question, answer) VALUES ('601', 'Numeric', 'During the "Quiet Revolution," Quebec experienced rapid change. In what
decade did this occur? (Enter the year that began the decade, e.g., 1840.)', '1960');
INSERT INTO numeric_question(id, min_range, max_range, hint) VALUES('601', '1800', '1900', 'The Quiet Revolution happened during the 20th Century.');
INSERT INTO numeric_question(id, min_range, max_range, hint) VALUES('601', '2000','2010','The Quiet Revolution happened some time ago.');
INSERT INTO numeric_question(id, min_range, max_range, hint) VALUES('601', '2020', '3000', 'The Quiet Revolution has already happened!');


INSERT INTO question (id, type, question, answer) VALUES ('625', 'Multiple-choice', 'What is the Underground Railroad?', 'A network used by slaves who escaped the United States into Canada');
INSERT INTO multiple_choice_question(id, option, hint) VALUES('625', 'The first railway to cross Canada', 'The Underground Railroad was generally south to north, not east-west.');
INSERT INTO multiple_choice_question(id, option, hint) VALUES('625', 'The CPRs secret railway line', 'The Underground Railroad was secret, but it had nothing to do with trains.');
INSERT INTO multiple_choice_question(id, option, hint) VALUES('625', 'The TTC subway system', 'The TTC is relatively recent; the Underground Railroad was in operation over 100 years ago.');
INSERT INTO multiple_choice_question(id, option, hint) VALUES('625', 'A network used by slaves who escaped the United States into Canada', NULL);


INSERT INTO question (id, type, question, answer) VALUES ('790', 'Multiple-choice', 'During the War of 1812 the Americans burned down the Parliament Buildings in
York (now Toronto). What did the British and Canadians do in return?', 'They burned down the White House in Washington D.C.');
INSERT INTO multiple_choice_question(id, option, hint) VALUES('790', 'They attacked American merchant ships', NULL);
INSERT INTO multiple_choice_question(id, option, hint) VALUES('790', 'They expanded their defence system, including Fort York', NULL);
INSERT INTO multiple_choice_question(id, option, hint) VALUES('790', 'They burned down the White House in Washington D.C.', NULL);
INSERT INTO multiple_choice_question(id, option, hint) VALUES('790', 'They captured Niagara Falls', NULL);


INSERT INTO room (room, teacher) VALUES ('120', 'Mr Higgins');
INSERT INTO room (room, teacher) VALUES ('366', 'Miss Miss Nyers');


INSERT INTO student (id, firstName, lastName) VALUES ('0998801234', 'Lena', 'Headey');
INSERT INTO student (id, firstName, lastName) VALUES ('0010784522', 'Peter', 'Dinklage');
INSERT INTO student (id, firstName, lastName) VALUES ('0997733991', 'Emilia', 'Clarke');
INSERT INTO student (id, firstName, lastName) VALUES ('5555555555', 'Kit', 'Harrington');
INSERT INTO student (id, firstName, lastName) VALUES ('1111111111', 'Sophie', 'Turner');
INSERT INTO student (id, firstName, lastName) VALUES ('2222222222', 'Maisie', 'Williams');


INSERT INTO class (id, room, grade, student) VALUES ('1', '120', '8', '0998801234');
INSERT INTO class (id, room, grade, student) VALUES ('1', '120', '8', '0010784522');
INSERT INTO class (id, room, grade, student) VALUES ('1', '120', '8', '0997733991');
INSERT INTO class (id, room, grade, student) VALUES ('1', '120', '8', '5555555555');
INSERT INTO class (id, room, grade, student) VALUES ('1', '120', '8', '1111111111');
INSERT INTO class (id, room, grade, student) VALUES ('2', '366', '5', '2222222222');


INSERT INTO quiz (id, due_date_time, title, question, weight, class_id, hint) VALUES ('Pr1-220310', '2017-10-1 13:30:00', 'Citizenship Test Practise Questions', '601', '2', '1', true);
INSERT INTO quiz (id, due_date_time, title, question, weight, class_id, hint) VALUES ('Pr1-220310', '2017-10-1 13:30:00', 'Citizenship Test Practise Questions', '566', '1', '1', true);
INSERT INTO quiz (id, due_date_time, title, question, weight, class_id, hint) VALUES ('Pr1-220310', '2017-10-1 13:30:00', 'Citizenship Test Practise Questions', '790', '3', '1', true);
INSERT INTO quiz (id, due_date_time, title, question, weight, class_id, hint) VALUES ('Pr1-220310', '2017-10-1 13:30:00', 'Citizenship Test Practise Questions', '625', '2', '1', true);


INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '601', '1950', '1', '0998801234');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '566', false, '1', '0998801234');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '790', 'They expanded their defence system, including Fort York', '1', '0998801234');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '625', 'A network used by slaves who escaped the United States into Canada', '1', '0998801234');

INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '601', '1960', '1', '0010784522');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '566', false, '1', '0010784522');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '790', 'They burned down the White House in Washington D.C.', '1', '0010784522');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '625', 'A network used by slaves who escaped the United States into Canada', '1', '0010784522');

INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '601', '1960', '1', '0997733991');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '566', true, '1', '0997733991');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '790', 'They burned down the White House in Washington D.C.', '1', '0997733991');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '625', 'The CPRs secret railway line', '1', '0997733991');

INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '566', false, '1', '5555555555');
INSERT INTO responses (quizId, question_id, response, class_id, sID) VALUES ('Pr1-220310', '790', 'They captured Niagara Falls', '1', '5555555555');
