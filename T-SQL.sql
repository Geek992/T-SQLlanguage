USE xk

GO
--����ƽ����
SELECT AVG(�ɼ�) AS'200502��ѧ��ƽ����'
FROM XSCJ
WHERE ѧ��='200502'
--�����ֵ����Сֵ
SELECT MAX(�ɼ�) AS'200502ѧ������߷�', MIN(�ɼ�) AS'200502ѧ������ͷ�'
FROM XSCJ
WHERE ѧ��='200502'
--ͳ������������������������
SELECT COUNT(*) AS'����������'
FROM XSDA
WHERE ����='��'
--�����ͬ���ݵ�ͳ��
SELECT COUNT(DISTINCT ѧ��) AS'ѧ������'
FROM XSDA
--����ɸѡ����
SELECT �Ա�,COUNT(*) AS'����'
FROM XSDA
GROUP BY �Ա�

SELECT ϵ��,�Ա�, AVG(��ѧ��) AS'��ѧ�ֵ�ƽ��ֵ'
FROM XSDA
GROUP BY ϵ��,�Ա�
--��һ��ɸѡHAVING������group byһ��ʹ��
SELECT ѧ��,AVG(�ɼ�) AS'ƽ����'
FROM XSCJ
GROUP BY ѧ��
HAVING AVG(�ɼ�)>50
--�γ̳���3�ţ��ɼ�����90
SELECT ѧ��
FROM XSCJ
WHERE �ɼ�>60
GROUP BY ѧ��
HAVING COUNT(*)>3
--���������
SELECT ѧ��,����,�Ա�,ϵ��
FROM XSDA
WHERE ϵ��='��Ϣ' AND �Ա�='��'
COMPUTE COUNT(ѧ��)
GO
--�������
SELECT ѧ��,����,ϵ��,��ѧ��
FROM XSDA
ORDER BY ϵ��
COMPUTE COUNT(ѧ��) BY ϵ��
--���Ӳ�ѯ
SELECT *
FROM XSDA INNER JOIN XSCJ ON XSDA.ѧ��=XSCJ.ѧ��
--������
SELECT XSDA.*,XSCJ.*
FROM XSDA LEFT JOIN XSCJ ON XSDA.ѧ��=XSCJ.ѧ��
--������
SELECT XSDA.*,XSCJ.*
FROM XSDA RIGHT JOIN XSCJ ON XSDA.ѧ��=XSCJ.ѧ��
--FULL JION
--CROSS JOIN �������� ����Ҫ����
--������ 
SELECT XSDA1.����,XSDA1.ѧ��,XSDA2.����
FROM XSDA AS XSDA1 JOIN XSDA AS XSDA2 ON XSDA1.����=XSDA2.����
--�Ӳ�ѯ 
SELECT *
FROM XSDA
WHERE ѧ�� IN
(SELECT ѧ�� 
FROM XSDA
WHERE �Ա�='��'
)
--ANY�Ƚ��Ӳ�ѯ
SELECT ѧ��,�γ̱��
FROM XSCJ
WHERE �γ̱��='202' AND �ɼ�!<ANY
( SELECT �ɼ�
FROM XSCJ
WHERE �γ̱��='104'
)
--INTO ����ѯ������浽�±�
--UNION �������ѯ����ϲ� ʹ��ALL ��ȥ���ظ��У����Ĭ�Ϸ��ڵ�һ������ 