USE xk

INSERT INTO XSDA(ѧ��,����,ϵ��,��������,��ѧ��)
VALUES('200806','JUSTIN','SOFTWARE','1990-1-1',60)

--������������������ 
INSERT INTO xs
SELECT ѧ��,����,ϵ��
FROM XSDA
WHERE ϵ��='����'

--��������
UPDATE XSDA SET ��ע='����ѧ��'
WHERE ѧ��='200604'
UPDATE XSDA SET ��ѧ��=��ѧ��+10
UPDATE XSDA SET ϵ��='��������',��ע='תרҵ'
WHERE ����='��ƽ'
--ɾ�����м�¼
DELETE FROM XSDA 
WHERE ����='��ƽ'
--ɾ���������м�¼
TRUNCATE TABLE xs
