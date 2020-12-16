DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  fname TEXT NOT NULL,
  lname TEXT NOT NULL,

  FOREIGN KEY (id) REFERENCES questions(author_id)
);

DROP TABLE if exists questions;

CREATE TABLE questions (
  author_id INTEGER PRIMARY KEY,
  q_title TEXT NOT NULL,
  q_body TEXT NOT NULL

  FOREIGN KEY (q_title) REFERENCES question_follows(q_f_title)
  FOREIGN KEY (q_body) REFERENCES question_follows(q_f_body)
);

CREATE TABLE question_follows (
  question_follows_id INTEGER PRIMARY KEY,
  q_f_title TEXT NOT NULL,
  q_f_body TEXT NOT NULL,

  FOREIGN KEY (q_f_title) REFERENCES questions(q_title)
  FOREIGN KEY (q_f_body) REFERENCES questions(q_body)

);



INSERT INTO
  playwrights (name, birth_year)
VALUES
  ('Arthur Miller', 1915),
  ('Eugene O''Neill', 1888);

INSERT INTO
  plays (title, year, playwright_id)
VALUES
  ('All My Sons', 1947, (SELECT id FROM playwrights WHERE name = 'Arthur Miller')),
  ('Long Day''s Journey Into Night', 1956, (SELECT id FROM playwrights WHERE name = 'Eugene O''Neill'));
