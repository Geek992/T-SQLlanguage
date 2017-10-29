USE xk

INSERT INTO XSDA(学号,姓名,系名,出生日期,总学分)
VALUES('200806','JUSTIN','SOFTWARE','1990-1-1',60)

--从其他表中批量插入 
INSERT INTO xs
SELECT 学号,姓名,系名
FROM XSDA
WHERE 系名='管理'

--更新数据
UPDATE XSDA SET 备注='三好学生'
WHERE 学号='200604'
UPDATE XSDA SET 总学分=总学分+10
UPDATE XSDA SET 系名='电子商务',备注='转专业'
WHERE 姓名='方平'
--删除表中记录
DELETE FROM XSDA 
WHERE 姓名='方平'
--删除表中所有记录
TRUNCATE TABLE xs
