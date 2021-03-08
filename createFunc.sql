--FUNCTIONS
--FUNCTION_1
CREATE FUNCTION GET_FIMNAME(V_BOOKNAME VARCHAR(50))
RETURNS VARCHAR(50)
RETURN
    SELECT FILMNAME
    FROM BOOKS
    WHERE TITLE = V_BOOKNAME;

--CALL FUNCTION_1
VALUES GET_FIMNAME('Goblet of Fire');

--FUNCTION_2
CREATE FUNCTION GET_COUNT_DIRECTOR(V_CODEDIRECTOR CHAR(4))
RETURNS INT
RETURN
    SELECT COUNT(*)
    FROM DIRECTS
    WHERE CODEDIRECTOR = V_CODEDIRECTOR;

--CALL FUNCTION_2
VALUES GET_COUNT_DIRECTOR('004');