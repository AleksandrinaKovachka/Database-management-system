--PROCEDURE
--PROCEDURE_1 - процедура с курсор и входни и изходни параметри
CREATE PROCEDURE FN71890.film_director(IN film_actor_name VARCHAR(50), OUT result VARCHAR(50))
RESULT SETS 1
LANGUAGE SQL
SPECIFIC film_director
BEGIN
	DECLARE cursor1 CURSOR WITH RETURN FOR SELECT CODEDIRECTOR 
		FROM DIRECTS WHERE FILMNAME = result AND (film_actor_name) IN (SELECT ACTORNAME FROM STARSIN WHERE FILMNAME = result);
	
	SET result = 'Harry Potter and the Philosophers Stone';
	
	OPEN cursor1;

END@

--CALL PROCEDURE_1
CALL FN71890.film_director('Harry Potter', ?)@

CREATE PROCEDURE FN71890.film_director_actor(IN film_actor_name VARCHAR(50), OUT result CHAR(3))
RESULT SETS 1
LANGUAGE SQL
SPECIFIC film_director_actor
BEGIN
	DECLARE cursor1 CURSOR WITH RETURN FOR SELECT D.CODEDIRECTOR, S.ACTORNAME 
		FROM DIRECTS D, STARSIN S WHERE D.FILMNAME = result AND S.ACTORNAME <> film_actor_name;
	
	SET result = 'Harry Potter and the Philosophers Stone';
	
	OPEN cursor1;

END@

--PROCEDURE_2 - процедура с прихващане на изключение
CREATE PROCEDURE FN71890.film_name_error(IN book_name VARCHAR(50), OUT result VARCHAR(50))
LANGUAGE SQL
BEGIN
	DECLARE exit_state INTEGER DEFAULT 0;
	DECLARE v_name_book VARCHAR(50) DEFAULT ' ';
	DECLARE v_name_film VARCHAR(50) DEFAULT ' ';
	DECLARE not_found CONDITION FOR SQLSTATE '02000';

	DECLARE cursor1 CURSOR FOR SELECT TITLE, FILMNAME FROM BOOKS;

	DECLARE CONTINUE HANDLER FOR not_found SET exit_state = 1;

	OPEN cursor1; 
	filmname_loop: LOOP
		FETCH cursor1 INTO v_name_book, v_name_film;
			IF exit_state = 1 THEN LEAVE filmname_loop; 
			ELSEIF v_name_book = book_name THEN SET result = v_name_film;
			END IF;
	END LOOP;
	
	CLOSE cursor1;
END@

--CALL PROCEDURE_2
CALL FN71890.film_name_error('Philosophers Stone', ?)@

--PROCEDURE_3 - процедура с курсор и while цикъл
CREATE PROCEDURE FN71890.real_name(IN real_actor_name VARCHAR(50), OUT result VARCHAR(50))
LANGUAGE SQL
BEGIN
	DECLARE exit_state INTEGER DEFAULT 0;
	DECLARE v_real_name VARCHAR(50) DEFAULT ' ';
	DECLARE v_film_name VARCHAR(50) DEFAULT ' ';

	DECLARE cursor1 CURSOR FOR SELECT FILMNAME, REALNAME FROM ACTORS;

	OPEN cursor1; 
	
	WHILE exit_state = 0 DO
		FETCH cursor1 INTO v_film_name, v_real_name;
		IF v_real_name = real_actor_name THEN SET exit_state = 1;
		END IF;
	END WHILE;
	
	SET result = v_film_name;
	
	CLOSE cursor1;
END@

--CALL PROSEDURE_3
CALL FN71890.real_name('Daniel Radcliffe', ?)@