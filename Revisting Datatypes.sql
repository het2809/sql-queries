SELECT CURTIME();

SELECT CURDATE();

SELECT NOW();

SELECT DATEDIFF("2023-09-07" , "2023-09-01");

SELECT DATE_ADD("2023-07-09" , INTERVAL 10 DAY);

SELECT DATE_FORMAT("2023-07-09","%Y");
--------------------------------------------------------------------------------------------------------------------------------
-- %a	Abbreviated weekday name (Sun to Sat)
-- %b	Abbreviated month name (Jan to Dec)
-- %c	Numeric month name (0 to 12)
-- %D	Day of the month as a numeric value, followed by suffix (1st, 2nd, 3rd, ...)
-- %d	Day of the month as a numeric value (01 to 31)
-- %e	Day of the month as a numeric value (0 to 31)
-- %f	Microseconds (000000 to 999999)
-- %H	Hour (00 to 23)
-- %h	Hour (00 to 12)
-- %I	Hour (00 to 12)
-- %i	Minutes (00 to 59)
-- %j	Day of the year (001 to 366)
-- %k	Hour (0 to 23)
-- %l	Hour (1 to 12)
-- %M	Month name in full (January to December)
-- %m	Month name as a numeric value (00 to 12)
-- %p	AM or PM
-- %r	Time in 12 hour AM or PM format (hh:mm:ss AM/PM)
-- %S	Seconds (00 to 59)
-- %s	Seconds (00 to 59)
-- %T	Time in 24 hour format (hh:mm:ss)
-- %U	Week where Sunday is the first day of the week (00 to 53)
-- %u	Week where Monday is the first day of the week (00 to 53)
-- %V	Week where Sunday is the first day of the week (01 to 53). Used with %X
-- %v	Week where Monday is the first day of the week (01 to 53). Used with %x
-- %W	Weekday name in full (Sunday to Saturday)
-- %w	Day of the week where Sunday=0 and Saturday=6
-- %X	Year for the week where Sunday is the first day of the week. Used with %V
-- %x	Year for the week where Monday is the first day of the week. Used with %v
-- %Y	Year as a numeric, 4-digit value
-- %y	Year as a numeric, 2-digit value
-- -----------------------------------------------------------------------------------------------------------------------------------

SELECT DATE_SUB("2023-09-28" , INTERVAL 10 DAY);

SELECT DAYNAME("2023-09-28");

SELECT DAYOFMONTH("2023-09-28");

SELECT DAYOFWEEK("2023-09-28");

SELECT DAYOFYEAR("2023-09-28");

SELECT LAST_DAY("2023-09-28");