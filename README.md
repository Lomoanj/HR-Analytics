# 📊 HR Analytics Dashboard Project

This project provides a comprehensive HR Analytics solution using **Excel**, **Power BI**, **Tableau**, and **MySQL**. It focuses on analyzing employee attrition trends and providing data-driven insights to support HR decision-making.

---

## 📂 Table of Contents

- 🔍 [Project Objective](#-project-objective)  
- 🧰 [Tools Used](#-tools-used)  
- 📊 [Excel Dashboard](#-excel-dashboard)  
- 📈 [Power BI Dashboard](#-power-bi-dashboard)  
- 📉 [Tableau Dashboard](#-tableau-dashboard)  
- 💡 [Dashboard Highlights](#-dashboard-highlights)  
- 💡 [Key Insights](#-key-insights)  
- ✅ [Recommendations](#-recommendations)  
- ✨ [Author](#-author)  
- 📬 [Contact](#-contact)  

---

## 🔍 Project Objective

The main goal is to explore and understand the factors contributing to employee attrition and recommend improvements through visual and analytical techniques, demonstrating practical skills in data analysis, dashboard creation, and insight generation.

---

## 🧰 Tools Used

- Excel  
- Power BI  
- Tableau  
- MySQL

---

## 📊 Excel Dashboard

![View Excel Dashboard Screenshot](https://github.com/user-attachments/assets/2674a125-e4a2-4265-a4c8-808206f2360d)  

[Excel File Link](https://github.com/Lomoanj/HR-Analytics/blob/main/Excel%20Dashboard.xlsx)

---

## 📈 Power BI Dashboard

[![View Power BI Dashboard Screenshot](https://github.com/user-attachments/assets/232f5b82-5df0-4b25-a492-f2eeb8053deb)](https://github.com/user-attachments/assets/232f5b82-5df0-4b25-a492-f2eeb8053deb)  
[Power BI File Link](https://github.com/Lomoanj/HR-Analytics/blob/main/HR%20Analytics%20PowerBI.pbix)

---

## 📉 Tableau Dashboard

[![View Tableau Dashboard Screenshot](https://github.com/user-attachments/assets/fb130ec6-f89a-47ff-82ac-d951a0d28a3e)](https://github.com/user-attachments/assets/fb130ec6-f89a-47ff-82ac-d951a0d28a3e)  
[Tableau File Link](https://github.com/Lomoanj/HR-Analytics/blob/main/HR%20Analytics%20Tableau.twbx)

---

## 🧮 SQL Highlights & Sample Queries

```sql
select department, count(attrition),round((count(attrition)/(count(attrition) over())),2) percentage
from hrdata where attrition='yes' and education='high school' group by 1 order by 2 desc;  

select department, count(attrition),round((count(attrition)/
(select count(attrition) from hrdata where attrition='yes' and education='high school'))*100,2) percentage
from hrdata where attrition='yes' and education='high school' group by 1 order by 2 desc;

select age_band, gender, count(attrition), count(attrition)*100/sum(count(attrition)) over() percent_of_total
from hrdata where attrition='yes' group by 1,2 order by 1,2;
```
[Link to SQL Queries](https://github.com/Lomoanj/HR-Analytics/blob/main/HR_Queries.sql)

---

## 💡 Dashboard Highlights

- **Attrition Rate:** 16.12% overall  
- **Department with highest attrition:** R&D (56.12%)  
- **Education Field with most attrition:** Life Sciences  
- **Age Group with highest attrition:** 25–34 years  
- **Job Role with highest dissatisfaction:** Sales Executive (most attrition cases)  
- Dynamic filtering by Education and Department (Power BI)  
- Gender-based attrition distribution (Power BI & Tableau)  
- Age distribution histograms and donut charts by gender (Tableau)  
- Job satisfaction matrix by Job Role (Power BI)  
- Education Field vs Attrition correlation (Tableau)  

---

## 💡 Key Insights

- R&D and Sales are the most affected departments in terms of attrition.  
- Majority of attrition occurs in the 25–34 age group.  
- Life Sciences is the most common education field among employees leaving.  
- Sales Executive role exhibits a high number of dissatisfied employees.  
- Male employees contribute more to attrition than female across age bands.  

---

## ✅ Recommendations

- Targeted retention programs for R&D and Sales departments.  
- Mentorship and career progression plans for younger employees (under 35).  
- Job satisfaction initiatives for Sales Executives (surveys, 1-on-1 reviews).  
- Focus on improving workplace culture and benefits to retain talent from Life Sciences and Medical backgrounds.  

---

## ✨ Author

**Lomoanj P J** – Data Analyst  
This project is created to showcase real-world HR data analysis capabilities.  
[Dataset Download Link](https://github.com/Lomoanj/HR-Analytics/blob/main/HR%20Data.xlsx)

---

## 📬 Contact

- LinkedIn: [linkedin.com/in/lomoanj/](https://www.linkedin.com/in/lomoanj/)  
- Email: [lomoanj@gmail.com](mailto:lomoanj@gmail.com)  
- GitHub: [github.com/Lomoanj](https://github.com/Lomoanj)  

---

Feel free to reach out or suggest improvements!
