DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  fname TEXT NOT NULL,
  lname TEXT NOT NULL,

  FOREIGN KEY (id) REFERENCES questions(author_id)
);

DROP TABLE if exists questions;

CREATE TABLE questions (
  id INTEGER PRIMARY KEY,
  q_title TEXT NOT NULL,
  q_body TEXT NOT NULL

  FOREIGN KEY (author_id) REFERENCES users(id)
);

DROP TABLE if exists question_follows;

CREATE TABLE question_follows (
  id INTEGER PRIMARY KEY,
  question_id TEXT NOT NULL,
  user_id TEXT NOT NULL,

  FOREIGN KEY (question_id) REFERENCES questions(id)
  FOREIGN KEY (user_id) REFERENCES users(id)

);

DROP TABLE if exists replies;

CREATE TABLE replies (
  replies_id INTEGER PRIMARY KEY,
  reply TEXT NOT NULL,
  author TEXT NOT NULL,

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
