-- 2020-10-11 --

-- Crear base de datos
CREATE DATABASE labadmin;

-- Seleccionar DB creada
USE labadmin;

-- Crear tabla departamento
CREATE TABLE DEPT (
	DEPTNO NUMERIC(2) NOT NULL PRIMARY KEY,
	DNAME NVARCHAR(140),
	LOC NVARCHAR(13)
);

-- Crear tabla empleados
CREATE TABLE EMP (
	EMPNO NUMERIC(4) NOT NULL PRIMARY KEY,
	ENAME NVARCHAR(10),
	JOB NVARCHAR(9),
	MGR NUMERIC(4),
	HIREDATE DATE,
	SAL NUMERIC(7, 2),
	COMM NUMERIC(7, 2),
	DEPTNO NUMERIC(2) FOREIGN KEY REFERENCES DEPT(DEPTNO)
);

-- INSERTAR DATOS DE DEPARTAMENTOS
INSERT INTO DEPT (DEPTNO, DNAME, LOC)
VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO DEPT
VALUES (20, 'RESEARCH', 'DALLAS');

INSERT INTO DEPT
VALUES (30, 'SALES', 'CHICAGO');

INSERT INTO DEPT
VALUES (40, 'OPERATIONS', 'BOSTON');

-- INSERTAR DATOS EN LA TABLA EMPLEADOS
INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, 20);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7900, 'JAMES', 'CLERK', 7788, '1981-12-03', 950, NULL, 30);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000, NULL, 20);

INSERT INTO EMP (EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);

-- CONTAR FILAS DE EMPLEADOS
SELECT COUNT(*) AS Filas FROM EMP;

-- Pruebas de Query

-- #1
SELECT ENAME, JOB FROM EMP
ORDER BY SAL;

-- #2
SELECT ENAME, JOB, SAL FROM EMP
ORDER BY JOB, SAL;

-- #3
SELECT SAL, COMM FROM EMP
WHERE DEPTNO = 30;

-- #4
SELECT SAL, COMM FROM EMP
WHERE DEPTNO = 30
ORDER BY COMM;

-- #5
SELECT DISTINCT(COMM) FROM EMP
WHERE COMM IS NOT NULL;

-- #6
SELECT DISTINCT(DEPTNO) FROM EMP;
