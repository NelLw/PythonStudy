-- 创建‘learn’ 并使用编码 ‘utf - 8’
CREATE SCHEMA `learn` DEFAULT CHARACTER SET utf8 ; 
-- 使用learn
use learn;
-- 创建department表
CREATE TABLE `learn`.`department` (
  `dept_name` VARCHAR(45) NOT NULL, -- dept_name 数据类型为 VARCHAR 并且不为空
  `building` VARCHAR(45) NULL, -- building 数据类型为 VARCHAR 
  `budget` INT NULL, -- budget 数据类型为 INT
  PRIMARY KEY (`dept_name`)); -- 主码为dept_name
-- 创建student表
CREATE TABLE `learn`.`student` (
  `ID` INT NOT NULL, -- ID 数据类型为 INT 不为空
  `name` VARCHAR(45) NOT NULL, -- name 数据类型为 VARCHAR 不为空
  `sex` CHAR(1) NULL, -- sex 数据类型为 CHAR 
  `age` INT UNSIGNED NULL, -- age 数据类型为 INT 不为负
  `emotion_state` VARCHAR(45) NULL, -- emotion_state 数据类型为 VARCHAR 
  `dept_name` VARCHAR(45) NULL, -- dept_name 数据类型为 VARCHAR 
  PRIMARY KEY (`ID`), -- 主码为 ID 
  INDEX `fk_student_1_idx` (`dept_name` ASC),
  CONSTRAINT `fk_student_1`
    FOREIGN KEY (`dept_name`) -- 外码为 dept_name
    REFERENCES `learn`.`department` (`dept_name`) -- 参照department中的dept_name
    ON DELETE SET NULL -- 如果删除的话就置空
    ON UPDATE CASCADE); -- 如果更改的话就跟着更改
-- 创建exam表
CREATE TABLE `learn`.`exam` (
  `student_ID` INT NOT NULL, -- student_ID 数据类型 INT 不为空
  `exam_name` VARCHAR(45) NOT NULL, -- exam_name 数据类型 VARCHAR 不为空 
  `grade` INT UNSIGNED NULL, -- grade 数据类型 INT 不为负
  PRIMARY KEY (`student_ID`, `exam_name`), -- 主码为 student_ID 和 exam_name
  CONSTRAINT `fk_exam_1` 
    FOREIGN KEY (`student_ID`) -- 外码为student_ID
    REFERENCES `learn`.`student` (`ID`) -- 参照为student里的ID
    ON DELETE CASCADE -- 如果删除的话所有关联的数据都会删除
    ON UPDATE CASCADE); -- 如果变化的话就跟着变化

