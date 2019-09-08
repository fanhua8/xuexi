#设置客户端连接服务器端的编码为utf8
SET NAMES UTF8;
#丢弃指定的数据库xuezi,如果存在
DROP DATABASE IF EXISTS xuezi;
#创建新的数据库xuezi，设置存储的编码utf8
CREATE DATABASE xuezi CHARSET=UTF8;
#进入数据库xuezi
USE xuezi;
#创建保存学生数据的表（编号、姓名、性别、分数）
CREATE TABLE student(
  sid INT, #integer  整形
  name VARCHAR(8),  #variable character 字符串型
  sex VARCHAR(1),# m->男 f->女
  score INT

);
#往学生表中插入数据
INSERT INTO student 
VALUES('1','tom','男','85');
INSERT INTO student
VALUES('2','kate','f','92');
INSERT INTO student
VALUES('3','king','m','74');
#修改数据
#修改编号为2的学员，成绩为100，姓名为Lucy
UPDATE student SET 
name='Lucy',score='100' WHERE sid='2';
#删除编号为3的学员数据
DELETE FROM student WHERE sid='3';
#查询所有的数据
SELECT * FROM student;