.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color = 'blue' AND pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color = 'blue' AND pet = 'dog';


CREATE TABLE smallest_int_having AS
  SELECT time, smallest from students group by smallest having count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color
    from students as a, students as b where a.pet = b.pet AND a.song = b.song AND a.time < b.time;


CREATE TABLE sevens AS
  SELECT seven from students, numbers where students.time = numbers.time AND "7" = 'True' AND number = 7;


CREATE TABLE avg_difference AS
  SELECT round(avg(abs(number-smallest))) from students;

