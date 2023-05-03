USE mydb;


# create table test
CREATE TABLE test(
    my_date DATE,
    my_time TIME,
    my_datetime DATETIME
);

# insert data into the test table (dates)
INSERT INTO test
VALUES (CURRENT_DATE(), CURRENT_TIME(),NOW());

# this would make it so you are referring to tomorrow
# that is essentially what adding the plus one to current date does
# and it can be adjusted to refer to different dates
# this can be applied to the other date functions as well
INSERT INTO test
VALUES(CURRENT_DATE()+1, NULL, NULL);



SELECT * FROM test;

