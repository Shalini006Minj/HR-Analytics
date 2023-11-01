# HR-Analytics: Retention and Training Effectiveness

## Introduction
This report focuses on delivering valuable insights into two crucial elements of human resource management: reducing employee turnover and enhancing the efficacy of training programs. The assessment relies on comprehensive HR data, encompassing a range of metrics including age, department, performance ratings etc.

## Objectives
•	Determine the factors that contribute to employee attrition within the company and provide insights to reduce attrition rates
•	Analyze the effectiveness of training programs and recommend improvements to enhance employee skills and performance.
Data Cleaning and Preparation
•	Dummy table was created as ‘HR_DBase’, where cleaning was done in order to perform the data analysis
•	In the Gender and Position column, the values were updated to a more understandable format for easy analysis. The transformation involved following steps:
a)	Male was replaced with M
b)	Female was replaced with F
c)	‘DataScientist’ was replaced with ‘Data Scientist’
d)	‘Marketinganalyst’ was replaced with 'Marketing Analyst’
•	New column was created as ‘AgeGroup’ where age was categorized under different groups using case statement. This helped to create conditional logic and to perform different actions or calculations based on specified conditions. The age brackets include the following conditions:
a)	Less than or equal to 30 years
b)	Greater than 30 years
•	In the same manner, salary was also categorized and new column was created as ‘SalaryBucket’, which include the following conditions:
a)	90K-100K
b)	80K-90K
c)	70K-80K
d)	60K-70K
e)	50K-60K

## Analysis and Insights
•	Insight on the overall attrition rate within the organization and averages of other parameters
•	This gave a valuable insight and a more comprehensive understanding of the attrition situation within the organization
•	Average of other parameters can be used later to delve deeper into the reasons for attrition
 

•	Similar calculation was done for:
Attrition = ‘Yes’
 
Attrition = ‘No’
 

 	Average working hours for employees who left the company was higher than the total average as well the employees who are still working in the company might be an important factor leading to burnout and work life imbalance, encouraging employees to leave the organization
 	Less training was provided compared to the average training hours, which can result in a skill gap, making employees feel ill-equipped to perform their tasks efficiently, contributing to job dissatisfaction.
 	It can be observed that some of the employees who left had higher average salaries. This suggests that salary might not have been the primary motivator for them. Instead, factors such as work-life balance or job satisfaction may have become more important, influencing their decision to leave

•	Gender-wise Analysis
                                                                                                                                                                                                                         
 
 	Based on the analysis, it has been determined that gender does not appear to be a significant factor influencing attrition within the organization. The attrition rates for males and females were found to be relatively similar, with a percentage of 35.44% for males and 32.10% for females. This minimal difference in percentage further supports the conclusion that gender has a negligible impact on attrition

•	Department-wise attrition rate
                 
 	Finance department has the highest attrition rate of 53.57%, followed by the IT department of 35.29% attrition rate
 	Sales department shows the lowest rate of attrition with 20.83%
              
 	The finance department exhibits superior performance metrics, despite having the organization's highest attrition rate (53.57%), which implies that attrition drivers may extend beyond these metrics
 	The IT department stands out with significantly higher working hours (43) than the organization's total average (41) and lower training hours (17) compared to the total average hours for training (20), which may be the contributing factors to their status as the department with the second-highest attrition rate. The combination of extended work hours and reduced training opportunities suggests a potential need to address the department's professional development and work-life balance to mitigate attrition and enhance employee retention 
 	The average training hours utilized in the HR department (17) are comparatively lower than the organization-wide average training hours (20). This disparity in training hours may contribute to the lower satisfaction score (3) and could be one of the reasons for employees leaving the organization
 	The marketing department's average salary of 64,400 falls below the organization-wide average of 67,719. This difference in compensation levels may be a factor contributing to the department's lower satisfaction score of 3 compared to the overall average of 4, potentially motivating employees to consider leaving the company

•	Position-wise analysis
 
 	In the context of the positions of Sales Associate, Marketing Analyst, HR Coordinator, Data Scientist, and HR Manager, it is observed that the remuneration offered is relatively below the comprehensive average salary (67,719). This discernible salary differential can be regarded as one of the contributing factors influencing the decision to depart from the organization
 	It is pertinent to note that both Data Scientists and HR Managers, despite receiving salaries below the company's average, maintained satisfaction scores consistent with the overall company satisfaction rating (4). Nevertheless, their decision to depart from the organization can be attributed to a multitude of underlying factors, such as career growth opportunities, competitive salary offers from external organizations, etc.
 	Sales managers receive a higher salary (85,000); however, their lower satisfaction score (3) may be attributed to the increased pressure and performance expectations associated with their roles, leading to higher stress levels and potentially impacting their overall job satisfaction

 
 	The analysis reveals that a total of 19 employees, each with a tenure of over 5 years and performance ratings equal to or exceeding the overall company average of 4, have chosen to depart from the organization.
 	Possible reasons could be:
o	These employees may have felt that they had reached a career plateau within the organization, prompting them to seek opportunities elsewhere.
o	Long-tenured, high-performing employees often carry a significant workload, which can lead to burnout and, eventually, departure.
o	These employees may have felt that their contributions were not adequately recognized or rewarded.

## Effectiveness of Training Programs
Training Program x Performance Rating
 
The analysis shows there is no direct correlation between the training hours and performance rating.
Some of the reasons behind this could be:
Ineffective Training Programs: If the training programs are not well-designed or do not align with the skills needed for the job, they are unlikely to impact performance ratings positively.

Poor Communication: If the objectives and benefits of the training programs are not clearly communicated to employees, they may not take the training seriously, affecting its efficacy.

Lack of Follow-Up: Training programs are most effective when followed by regular assessments, refreshers, and continuous learning opportunities. Lack of these can result in the training program having minimal to no impact.
                                            

Training Programs x Satisfaction Score
               
This analysis presents a comprehensive overview of the total number of employees within each department, accompanied by data on their respective training hours and satisfaction scores.
The result shows a lack of clear correlation between training programs and employee satisfaction scores that can be attributed to a variety of factors. 
Here are some reasons why this might be the case:
Quality Over Quantity: The effectiveness of training is not solely determined by the number of hours but also by the quality and relevance of the training content. Employees may derive greater satisfaction from well-designed, shorter training sessions as opposed to longer, less engaging ones.

Individual Preferences: Different employees have different learning styles and preferences. What may be effective and satisfactory for one may not be so for another. Thus, the number of training hours alone may not be a reliable indicator of satisfaction.

Timing and Relevance: If the training programs are not timely or do not align with the employee’s current role or career goals, even a high number of training hours may lead to low satisfaction scores.

Expectations: Employees may have different expectations from training programs. If their expectations are not met, this can result in lower satisfaction scores, irrespective of the number of training hours.

Training Programs x Promotion
  
After conducting a thorough analysis, the findings reveal that some employees who received 30 hours of training were subsequently promoted. 
This outcome can be attributed to various factors that highlight the advantages of comprehensive training. 
The following are possible reasons for this correlation:
Skill Enhancement: The substantial 30-hour training likely resulted in marked skill development, equipping employees with the expertise needed for higher-level roles.

Commitment: Completing 30 hours of training signals a strong commitment to professional development, a quality often sought after when considering candidates for promotion

While the analysis indicates that employees who underwent 30 hours of training were promoted, it also reveals that those who completed 25 hours of training were not promoted.
Several factors could explain this seemingly paradoxical outcome:
Insufficient Skill Development: While 25 hours of training is substantial, it may not be enough to equip employees with the necessary skills or expertise for a higher-level position compared to those who had 30 hours.

Gap in Curriculum: The content of the 25-hour training program might lack certain key elements or subject matter covered in the more comprehensive 30-hour program, which could be crucial for promotion.

Employee Satisfaction and Engagement: If the 25-hour training program was not as engaging or satisfactory, it could lead to lower employee morale and enthusiasm, which could in turn affect promotion prospects.

Limited Openings for Promotion: In some instances, there may be limited opportunities for promotion, and those are given to employees who have the most training hours, even if the difference is minimal.
The analysis also reveals a mixed outcome for employees who completed 10 hours of training: some were promoted, while others were not. 
 	The reasons for these divergent outcomes could be multi-faceted, which are discussed below.
 	Reasons for Promotion After 10 Hours of Training:
o	Targeted Training: The 10-hour training could be highly specialized and directly relevant to new roles, equipping employees with the exact skills needed for promotion.
o	Existing Skill Set: Employees promoted might already possess a strong foundational skill set and the 10-hour training served as a refresher or an update, making them suitable for higher roles.
o	Employee Engagement: High levels of engagement and enthusiasm shown by some employees could tip the balance in their favor when promotion decisions are made.
 	Reasons for Not Being Promoted After 10 Hours of Training:
o	Insufficient Training: Ten hours of training might not be enough to cover all the skills and knowledge required for a promotion to a higher-level position.
o	Competing Factors: Other factors such as seniority, previous performance reviews, or even office dynamics could overshadow the benefits gained from the 10-hour training.

## Recommendations
 	Given the high attrition rates in the Finance and IT departments, targeted exit interviews can be done to gain insights into the specific reasons behind the high turnover rate and then actionable steps can be taken based on the feedback received.
 	Regularly review and adjustment of compensation packages can be helpful to ensure the salaries are aligned with industry standards and also frequent examination of the compensation structure to understand why higher-paid employees are leaving. Consider adjustments if discrepancies are found
 	Keeping the workforce updated with the latest tools and technologies through periodic training programs.
 	Analyzing the different strategies contributing to the low attrition rate in the Sales department (20.83%) and consider implementing them in other departments.
 	Active involvement of department heads and team leads in the training program designing help to ensure it aligns with job requirements
 	Anonymous employee surveys can help gauge overall employee sentiment, which may shed light on why high-performing, long-tenured employees are leaving
 	Introduction of non-monetary benefits in addition to a competitive salary, specially for employees earning high salary still deciding to leave the company



