#How many total messages are being sent every day?

 select message_date,sum(cn) from (
 SELECT id,date(createdAt) message_date,count(*) cn
FROM sql6497849.message
group by id,message_date)d
group by message_date
order by message_date;
 

 
 #Are there any users that did not receive any message?
 
 select *  from sql6497849.user
 where id not in (select receiverId from sql6497849.message);
 
#How many active subscriptions do we have today?
 
 select count(*)
 from sql6497849.subscription
 where status='Active'
 and createdAt=current_date;
 
#Are there users sending messages without an active subscription? (some extra context for you: in our apps only premium users can send messages).
 
 select *  from sql6497849.user where id in 
 (select senderid from sql6497849.message where id  not in 
 (select  id from sql6497849.subscription where status in ('Active')));
 
 
 #	Did you identified any inaccurate/noisy record that somehow could prejudice the data analyses? How to monitor it (SQL query)? Please explain how do you suggest to handle with this noisy data?
 
 #yes I indentified nosiy data in user data provided where I could see user details records which had ID information but no date information to know when that record was created.
 #there are some validation which we can do to check if any user detail is missing created date column or message is being generated without id
 #Note-:I observed noisy data for user details but only while hitting api on soecific days.
 select * from sql6497849.user where createdAt is null ;
 SELECT * FROM sql6497849.message where id is null;