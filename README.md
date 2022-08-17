### Pewlett-Hackard-Analysis
## Module 7

---

## Overview 

*Purpose*

As many current employees reach retirement age at a large company with over 7000 employees. The Purpose of this challenge is to use our knowledge of SQL to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program so employees who are close to retirement age can help prepare other employees to fill their positions.
 

Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.
   
    Deliverable 1
    In Deliverable 1 I created a Retirement Titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. 
    
![](https://github.com/nadiezhdamhb/Pewlett-Hackard-Analysis/blob/main/retirement_titles_image.png) (133,776 rows) 

        Due to promotions and other factors, some employees may have multiple titles in the database therefore I used DISTINCT ON statement to create the Unique Titles table that contains the most recent title of each employee. Insert unique_titles_image here. (72,458 rows)

        Then use the Count() function to create a Retiring table that has the number of retirement-age employees by most recent job title excluding those that have already left the company. 
        
![](https://github.com/nadiezhdamhb/Pewlett-Hackard-Analysis/blob/main/retiring_titles_image.png)      

        Senior positions = 50,842
        Management = 2
        mid-level = 16,921
        Technique Leader = 3603

    Deliverable 2
    In Deliverable 2 I created a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965. These employees are ready to retire and many of them hold senior positions. By participating in the mentorship program they will be able to share their long career experience with the junior employees or mid-level employees to better prepare them for the road ahead in the company.
![](https://github.com/nadiezhdamhb/Pewlett-Hackard-Analysis/blob/main/mentorship_eligibility_image.png) (1,549 rows)


Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
# 1. How many roles will need to be filled as the "silver tsunami" begins to make an impact? There will be to be filled about 72,458 positions as provided by the unique_titles table. 

![](https://github.com/nadiezhdamhb/Pewlett-Hackard-Analysis/blob/main/unique_titles_image.png)

# 2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 
There is a good number of qualified retirement-ready employees to participate in the mentorship program as mentors, however for the size of the company and the amount of employees retiring soon there aren't enough qualified mentors to prepare the next generation. 

A good plan would be to hire a third party company to help with the hiring scanning and process as soon as possible along with incentives for new hires such as signing bonus that would attract more candidates to the company. The mentorship program should be up and running soon to be able to help the junior or mid-level employees that have been in the company longer or that are ready for the next step in their career to move on to a management position. 
There is a good chance that not all positions will be filled on time and many employees would have to perform more than two jobs for some time therefore HR should also provide additional perks to employees to help with the stress at work and start workshops for the future leaders. 


