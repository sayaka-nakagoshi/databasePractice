-- 問題1. postgresqlでpracticeデータベースを生成するSQL文を記述してください。
CREATE DATABASE practice;


-- 問題2. postgresqlでpracticeデータベースのusersテーブルを生成するSQL文を記述してください。
CREATE TYPE gender_type AS ENUM ('Man','Woman','Other');

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL DEFAULT '',
    age INTEGER NOT NULL DEFAULT 0,
    gender gender_type VARCHAR(10) NOT NULL DEFAULT 'Other'
);

COMMENT ON COLUMN users.username IS '氏名';
COMMENT ON COLUMN users.age IS '年齢';
COMMENT ON COLUMN users.gender IS '性別';


-- 問題3. postgresqlでpracticeデータベースのjobsテーブルを生成するSQL文を記述してください。
CREATE TABLE jobs(
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    username VARCHAR(255) NOT NULL DEFAULT '会社員',
    FOREIGN KEY (user_id) REFERENCES users(id)
);

COMMENT ON COLUMN jobs.username IS '仕事名';

