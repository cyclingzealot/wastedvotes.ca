create table contest_clone as select * from contest;

update contest c set vote_percent = votes/(select sum(votes) from contest_clone where district_id=c.district_id)*100;

drop table contest_clone;
