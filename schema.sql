--I couldn't enforce a room can have two classes in it. Also I couldn't enforce at least two options for multiple choice.
-- I didn't enforce a correct answer must be in options because I choose to have my answer in a table called question instead
--of being the the table for the specific type of question(i.e multiple choice). Also I didn't
--enforce only a student in the class tha was assigned a quiz can answer questions on that quiz.
-- This was because I was trying to get rid of redundant information in the quiz and responses table.
-- This resulted in me not being able to use a contraint on sid and grade since I used a classId.

drop schema if exists quizschema cascade;
create schema quizschema;
set search_path to quizschema;

CREATE TABLE room(
  room VARCHAR(15) PRIMARY KEY,
  teacher VARCHAR(20) UNIQUE NOT NULL
);

CREATE TABLE student(
  id VARCHAR(10) PRIMARY KEY CHECK (char_length(id) = 10),
  firstName VARCHAR(20) NOT NULL,
  lastName VARCHAR(20) NOT NULL
);

CREATE TABLE class(
  id VARCHAR(10) NOT NULL,
  room VARCHAR(15) NOT NULL REFERENCES room(room),
  grade VARCHAR(20) NOT NULL,
  student VARCHAR(10) NOT NULL REFERENCES student(id),
  PRIMARY KEY(id, student)
);

CREATE TYPE question_type AS ENUM('True-False', 'Multiple-choice', 'Numeric');

CREATE TYPE tf AS ENUM(
  'True', 'False'
);

create TABLE question(
  id INT PRIMARY KEY,
  type question_type NOT NULL,
  question VARCHAR(200) UNIQUE NOT NULL,
  answer VARCHAR(200) UNIQUE NOT NULL
);


create TABLE multiple_choice_question(
  id INT REFERENCES question(id),
  option VARCHAR(100) UNIQUE NOT NULL,
  hint VARCHAR(100) UNIQUE,
  PRIMARY KEY(id, option)
);

create TABLE numeric_question(
  id INT REFERENCES question(id),
  min_range VARCHAR(20) UNIQUE NOT NULL,
  max_range VARCHAR(20) UNIQUE NOT NULL,
  hint VARCHAR(200) UNIQUE NOT NULL,
  PRIMARY KEY(id, min_range)
);

create TABLE tf_question(
  id INT REFERENCES question(id),
  option tf UNIQUE NOT NULL,
  PRIMARY KEY(id, option)
);

create TABLE quiz(
  id VARCHAR(20),
  due_date_time TIMESTAMP NOT NULL,
  title VARCHAR(100) NOT NULL,
  question INT REFERENCES question(id) NOT NULL,
  weight INT NOT NULL,
  class_id VARCHAR(10) NOT NULL,
  hint BOOLEAN NOT NULL,
  PRIMARY KEY(id, question)
);

create TABLE responses(
  quizId VARCHAR(20),
  question_id INT REFERENCES question(id) NOT NULL,
  response VARCHAR(100) NOT NULL,
  class_id VARCHAR(10)  NOT NULL,
  sID VARCHAR(10) NOT NULL,
  PRIMARY KEY (question_id, sID)
);
