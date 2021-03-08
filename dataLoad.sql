--INSERT
INSERT INTO FILMS(NAME, RATING, GOESOUTDATE, LENGTH)
VALUES ('Harry Potter and the Philosophers Stone', 7.6, '2001-11-04', '02:32:00'),
       ('Harry Potter and the Chamber of Secrets', 7.4, '2002-11-03', '02:41:00'),
       ('Harry Potter and the Prisoner of Azkaban', 7.9, '2004-05-23', '02:22:00'),
       ('Harry Potter and the Goblet of Fire', 7.7, '2005-11-06', '02:37:00'),
       ('Harry Potter and the Order of the Phoenix', 7.5, '2007-06-28', '02:18:00'),
       ('Harry Potter and the Half-Blood Prince', 7.6, '2009-07-07', '02:33:00'),
       ('Harry Potter and the Deathly Hallows – Part 1', 7.7, '2010-11-11', '02:26:00'),
       ('Harry Potter and the Deathly Hallows – Part 2', 7.6, '2011-07-07', '02:10:00');
       
SELECT * FROM FILMS;

INSERT INTO TRAILERS(GOESOUTDATE, FILMNAME, LENGTH)
             VALUES ('2001-02-11', 'Harry Potter and the Philosophers Stone', '00:02:16'),
                    ('2002-02-09', 'Harry Potter and the Chamber of Secrets', '00:02:05'),
                    ('2003-11-14', 'Harry Potter and the Prisoner of Azkaban', '00:02:18'),
                    ('2005-01-12', 'Harry Potter and the Goblet of Fire', '00:02:21'),
                    ('2006-11-30', 'Harry Potter and the Order of the Phoenix', '00:02:14'),
                    ('2008-07-30', 'Harry Potter and the Half-Blood Prince', '00:01:41'),
                    ('2010-09-23', 'Harry Potter and the Deathly Hallows – Part 1', '00:02:26'),
                    ('2011-04-27', 'Harry Potter and the Deathly Hallows – Part 2', '00:01:57');
                    
SELECT * FROM TRAILERS;

INSERT INTO ACTORS(FILMNAME, REALNAME, COUNTOFACTING)
            VALUES ('Harry Potter', 'Daniel Radcliffe', 8),
                   ('Ron Weasley', 'Rupert Grint', 8),
                   ('Hermione Granger', 'Emma Watson', 8),
                   ('Lily Potter', 'Geraldine Somerville', 8),
                   ('James Potter', 'Adrian Rawlins', 7),
                   ('Quirinus Quirrell', 'Ian Hart', 2),
                   ('Adrian Pucey', 'Scot Fearn', 1),
                   ('Percy Weasley', 'Chris Rankin', 5);
                   
SELECT * FROM ACTORS;

INSERT INTO STARSIN(FILMNAME, ACTORNAME)
VALUES ('Harry Potter and the Philosophers Stone', 'Harry Potter'),
       ('Harry Potter and the Philosophers Stone', 'Ron Weasley'),
       ('Harry Potter and the Philosophers Stone', 'Hermione Granger'),
       ('Harry Potter and the Philosophers Stone', 'Lily Potter'),
       ('Harry Potter and the Philosophers Stone', 'James Potter'),
       ('Harry Potter and the Philosophers Stone', 'Quirinus Quirrell'),
       ('Harry Potter and the Philosophers Stone', 'Adrian Pucey'),
       ('Harry Potter and the Philosophers Stone', 'Percy Weasley'),
       
       ('Harry Potter and the Chamber of Secrets', 'Harry Potter'),
       ('Harry Potter and the Chamber of Secrets', 'Ron Weasley'),
       ('Harry Potter and the Chamber of Secrets', 'Hermione Granger'),
       ('Harry Potter and the Chamber of Secrets', 'Lily Potter'),
       ('Harry Potter and the Chamber of Secrets', 'James Potter'),
       ('Harry Potter and the Chamber of Secrets', 'Percy Weasley'),
       
       ('Harry Potter and the Prisoner of Azkaban', 'Harry Potter'),
       ('Harry Potter and the Prisoner of Azkaban', 'Ron Weasley'),
       ('Harry Potter and the Prisoner of Azkaban', 'Hermione Granger'),
       ('Harry Potter and the Prisoner of Azkaban', 'Lily Potter'),
       ('Harry Potter and the Prisoner of Azkaban', 'James Potter'),
       ('Harry Potter and the Prisoner of Azkaban', 'Percy Weasley'),
       
       ('Harry Potter and the Goblet of Fire', 'Harry Potter'),
       ('Harry Potter and the Goblet of Fire', 'Ron Weasley'),
       ('Harry Potter and the Goblet of Fire', 'Hermione Granger'),
       ('Harry Potter and the Goblet of Fire', 'Lily Potter'),
       ('Harry Potter and the Goblet of Fire', 'James Potter'),
       
       ('Harry Potter and the Order of the Phoenix', 'Harry Potter'),
       ('Harry Potter and the Order of the Phoenix', 'Ron Weasley'),
       ('Harry Potter and the Order of the Phoenix', 'Hermione Granger'),
       ('Harry Potter and the Order of the Phoenix', 'Lily Potter'),
       ('Harry Potter and the Order of the Phoenix', 'James Potter'),
       ('Harry Potter and the Order of the Phoenix', 'Percy Weasley'),
       
       ('Harry Potter and the Half-Blood Prince', 'Harry Potter'),
       ('Harry Potter and the Half-Blood Prince', 'Ron Weasley'),
       ('Harry Potter and the Half-Blood Prince', 'Hermione Granger'),
       ('Harry Potter and the Half-Blood Prince', 'Lily Potter'),
       
       ('Harry Potter and the Deathly Hallows – Part 1', 'Harry Potter'),
       ('Harry Potter and the Deathly Hallows – Part 1', 'Ron Weasley'),
       ('Harry Potter and the Deathly Hallows – Part 1', 'Hermione Granger'),
       ('Harry Potter and the Deathly Hallows – Part 1', 'Lily Potter'),
       ('Harry Potter and the Deathly Hallows – Part 1', 'James Potter'),
       
       ('Harry Potter and the Deathly Hallows – Part 2', 'Harry Potter'),
       ('Harry Potter and the Deathly Hallows – Part 2', 'Ron Weasley'),
       ('Harry Potter and the Deathly Hallows – Part 2', 'Hermione Granger'),
       ('Harry Potter and the Deathly Hallows – Part 2', 'Lily Potter'),
       ('Harry Potter and the Deathly Hallows – Part 2', 'James Potter'),
       ('Harry Potter and the Deathly Hallows – Part 2', 'Quirinus Quirrell'),
       ('Harry Potter and the Deathly Hallows – Part 2', 'Percy Weasley');
       
SELECT * FROM STARSIN;

INSERT INTO DIRECTORS(CODE, NAME)
            VALUES ('001', 'Chris Columbus'),
                   ('002', 'Alfonso Cuaron'),
                   ('003', 'Mike Newell'),
                   ('004', 'David Yates');
                   
SELECT * FROM DIRECTORS;


INSERT INTO DIRECTS(CODEDIRECTOR, FILMNAME)
             VALUES('001', 'Harry Potter and the Philosophers Stone'),
                   ('001', 'Harry Potter and the Chamber of Secrets'),
                   ('002', 'Harry Potter and the Prisoner of Azkaban'),
                   ('003', 'Harry Potter and the Goblet of Fire'),
                   ('004', 'Harry Potter and the Order of the Phoenix'),
                   ('004', 'Harry Potter and the Half-Blood Prince'),
                   ('004', 'Harry Potter and the Deathly Hallows – Part 1'),
                   ('004', 'Harry Potter and the Deathly Hallows – Part 2');

SELECT * FROM DIRECTS;

INSERT INTO BOOKS (CODE, TITLE, YEAR, AUTHOR, FILMNAME) 
			VALUES ('0001', 'Philosophers Stone', 1997, 'J. K. Rowling', 'Harry Potter and the Philosophers Stone'),
                   ('0002', 'Chamber of Secrets', 1998, 'J. K. Rowling', 'Harry Potter and the Chamber of Secrets'),
                   ('0003', 'Prisoner of Azkaban', 1999, 'J. K. Rowling', 'Harry Potter and the Prisoner of Azkaban'),
                   ('0004', 'Goblet of Fire', 2000, 'J. K. Rowling', 'Harry Potter and the Goblet of Fire'),
                   ('0005', 'Order of the Phoenix', 2003, 'J. K. Rowling', 'Harry Potter and the Order of the Phoenix'),
                   ('0006', 'Half-Blood Prince', 2005, 'J. K. Rowling', 'Harry Potter and the Half-Blood Prince'),
                   ('0007', 'Deathly Hallows', 2007, 'J. K. Rowling', 'Harry Potter and the Deathly Hallows – Part 1');
                   
SELECT * FROM BOOKS;

--DROP
DROP TABLE FILM;
DROP TABLE ACTORS;
DROP TABLE DIRECTORS;
DROP TABLE TRAILERS;
DROP TABLE STARSIN;
DROP TABLE DIRECTS;
DROP TABLE BOOKS;