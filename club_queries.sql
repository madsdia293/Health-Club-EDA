--Inspect all data in cd schema
SELECT * FROM cd.facilities;
SELECT * FROM cd.bookings;
SELECT * FROM cd.members;

--List of only facility names and member costs
SELECT name, membercost FROM cd.facilities;

--List of free facilities
SELECT * FROM cd.facilities WHERE membercost = 0;

--List of facilities that charge a fee
SELECT * FROM cd.facilities WHERE membercost > 0;

--List of fcilities where fee is less than 1/50th of the monthly maintenance cost
SELECT facid, name, membercost, monthlymaintenance
FROM cd.facilities
WHERE membercost > 0 AND
(membercost < monthlymaintenance/50.0);

--Facilities with 'Tennis' in name
SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%';

--Details of facilities with ID 1 and 5
SELECT * FROM cd.facilities WHERE facid IN (1,5);

--Members whojoined after the start of September 2012
SELECT memid, surname, firstname, joindate
FROM cd.members WHERE joindate >= '2012-09-01';

--Ordered list of first 10 surnames of actual members in member table. No duplicates
SELECT DISTINCT surname FROM cd.members
WHERE surname != 'GUEST'
ORDER BY surname Limit 10;

--Signup date of last member
SELECT MAX(joindate) AS latest_signup FROM cd.members;

--Count of facilities with a cost 10 or more
SELECT COUNT(*) FROM cd.facilities WHERE guestcost >= 10;

--Total number of slots booked per facility in the month of September 2012
SELECT facid, SUM(slots) AS total_slots FROM cd.bookings 
WHERE starttime >= '2012-09-01'AND starttime < '2012-10-01'
GROUP BY facid ORDER BY SUM(slots);

--List of facilites with more than 1000 slots booked
SELECT facid, SUM(slots) AS total_slots FROM cd.bookings
GROUP BY facid HAVING SUM(slots) > 1000 ORDER BY facid;

--List of start times for bookings at tennis courts for 2012-09-21
SELECT cd.bookings.starttime AS start, cd.facilities.name
AS name
FROM cd.facilities
INNER JOIN cd.bookings
ON cd.facilities.facid = cd.bookings.facid
WHERE cd.facilities.facid IN (0,1)
AND cd.bookings.starttime >= '2012-09-21'
AND cd.bookings.starttime < '2012-09-22'
ORDER BY cd.bookings.starttime;

--List of start times for bookings by 'David Farell'
SELECT cd.bookings.starttime
FROM cd.bookings
INNER JOIN cd.members ON
cd.members.memid = cd.bookings.memid
WHERE cd.members.firstname = 'David'
AND cd.members.surname = 'Farrell';


