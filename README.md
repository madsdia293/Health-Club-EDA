# Health-Club-EDA

This is an exploratory data analysis (EDA) performed on the SQL database of a health club. The EDA includes various SQL queries to extract information and insights from the database tables. The health_club.tar file is also included in this repository, which contains the necessary SQL database files.

## Dataset
The dataset consists of three tables in the cd schema:

- facilities: Contains information about the facilities offered by the health club.
- bookings: Contains information about the bookings made by the members.
- members: Contains information about the members of the health club.

## Queries

1. Inspect all data in the facilities table.
2. Inspect all data in the bookings table.
3. Inspect all data in the members table.
4. List the facility names and member costs.
5. List the free facilities.
6. List the facilities that charge a fee.
7. List the facilities with fees less than 1/50th of the monthly maintenance cost.
8. List the facilities with 'Tennis' in the name.
9. Retrieve details of facilities with ID 1 and 5.
10. Retrieve members who joined after September 2012.
11. Retrieve an ordered list of the first 10 surnames of actual members (no duplicates).
12. Retrieve the signup date of the last member.
13. Count the number of facilities with a cost of 10 or more.
14. Calculate the total number of slots booked per facility in September 2012.
15. List the facilities with more than 1000 slots booked.
16. List the start times for bookings at tennis courts on September 21, 2012.
17. List the start times for bookings by 'David Farrell'.

These queries provide various insights about the health club, including facility information, member details, booking statistics, and more.

## Usage

To reproduce the analysis, follow these steps:

- Extract the contents of the health_club.tar file, which contains the necessary SQL database files.

- Connect to your preferred SQL database management system.

- Execute the SQL queries listed above in the given order to analyze the health club data.

- Feel free to explore the queries and modify them as needed for your own analysis.

Note: Make sure to update the database connection details in the queries if necessary.
