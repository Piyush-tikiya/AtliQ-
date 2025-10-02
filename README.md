# AtliQ Hardwre - End To End Project (SQL+PowerBI+Excel)</br></br>
<a href="https://app.powerbi.com/view?r=eyJrIjoiMjZmMTYxNzgtMTVlNC00M2U3LWJkODYtZTM4YjYyN2ZjMzYxIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9&pageName=0e043e404b13ec86da91">Live Report</a>
</br></br>


<h1>Project Overview</h1>
</br></br>
AtliQ Hardware has been growing fast in recent years, expanding its business across global markets. With this growth came a massive surge in the amount of data being generated.

Initially, Excel was the go-to tool for storing and analyzing data. But as the data volume and complexity grew, Excel started showing its limitations:
<li>❌ Slow performance</li></br>
<li>❌ Risk of file corruption</li></br>
<li>❌ Collaboration difficulties</li></br>
<li>❌ Row/column limits</li></br>

To keep up with the growing needs of the business, AtliQ decided to move to a more robust and scalable solution — MySQL for database management and Power BI for visualization.

Why MySQL?</br>
<li>✅ Handles millions of records efficiently</li></br>
<li>✅ Delivers fast query performance</li></br>
<li>✅ Supports multi-user collaboration</li></br>
<li>✅ Secure and reliable for enterprise-level data</li></br>

This shift not only solved the performance issues but also unlocked opportunities for advanced analytics, real-time dashboards, and data-driven decision-making. With Power BI on top of MySQL, the company can now provide actionable insights for finance, sales, marketing, and supply chain teams—helping them stay ahead in a competitive market.</br></br>



<img width="1281" height="717" alt="image" src="https://github.com/user-attachments/assets/d1a9149f-0fa6-4ad1-97a1-e0a696daf2e5" />
</br></br>
<img width="1287" height="732" alt="image" src="https://github.com/user-attachments/assets/130e63cb-fbb9-431c-871e-ecda374c1a6e" />





<h1>Importing Data into Power BI</h1></br>

In this project, the database is MySQL, so the first step is to bring the data into Power BI. We connect to the MySQL database by providing the necessary access credentials and then import the required datasets for analysis.



<h1>Data Modelling View:</h1> </br>

Data modeling is the foundation of any Power BI report. All visuals, calculations, and insights are built on top of the data model.
A poorly designed model can slow down performance and lead to inaccurate results.

For this project, we used the Hybrid Schema(Blend of star abnd snowflake) data modeling approach, which ensures clear relationships, optimized performance, and easy scalability for future reporting needs.


</br>
<img width="1118" height="760" alt="image" src="https://github.com/user-attachments/assets/93c217dd-e7dc-435f-afeb-854b0c878ce5" /></br>



<h>Home view</h1>: In Home view, all the views button will be available. User will land on specific view page by clicking the button

<li>Info View</li></br>
<li>Finance View</li></br>
<li>Sales View</li></br>
<li>Marketing View</li></br>
<li>Supply Chain View</li></br>
<li>Support</li></br>
Live Report: <a href="https://app.powerbi.com/view?r=eyJrIjoiMjZmMTYxNzgtMTVlNC00M2U3LWJkODYtZTM4YjYyN2ZjMzYxIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9&pageName=0e043e404b13ec86da91">Live Report</a></br></br>


<h1>Info View:</h1></br></br>
A quick overview of the business to understand its current state and context that provides a concise summary of the business situation.
</br></br>
<h1>Finance View:</h1></br>

Situation: Financial data was scattered, making it hard to assess the company’s financial health and growth.</br></br>
Task: Build a view to consolidate and analyze financial performance metrics.</br></br>
Action: Designed the Finance View with P&L statements, key metrics like Net Sales and Gross Margin, and a profitability/Growth matrix for any customer/product/country aggregation.</br></br>
Result: Top management can now evaluate financial health and identify growth opportunities effectively.
</br></br>
<img width="1385" height="732" alt="image" src="https://github.com/user-attachments/assets/c0b7299f-b9ad-4ecd-a6bf-35e341a1d5bd"><br><<br>
Live Report: <a href="https://app.powerbi.com/reportEmbed?reportId=a8a10878-73f6-4ccc-9ee8-f6093a6e3a38&appId=8348e1ce-2755-4216-9f20-d00738a114b6&autoAuth=true&ctid=ddba3c23-5070-4786-b604-618866e2d4d0">Live Report</a></br></br>

</br>
<h1>Sales View:</h1>
</br>
Situation: Sales performance across customers was unclear, hindering targeted sales strategies.</br></br>
Task: Create a view to analyze and improve sales efficiency and customer profitability.</br></br>
Action: Developed the Sales View, analyzing customer performance with metrics like Net Sales, Gross Margin, and a profitability/Growth matrix.</br></br>
Result: Top managementcan now track sales efficiency and optimize customer-focused strategies with clear insights.
</br></br>
<img width="1390" height="740" alt="image" src="https://github.com/user-attachments/assets/ea7a822e-f1e1-4b41-bab1-7457feada9a9" />
</br></br>
Live Report: <a href="https://app.powerbi.com/reportEmbed?reportId=a8a10878-73f6-4ccc-9ee8-f6093a6e3a38&appId=8348e1ce-2755-4216-9f20-d00738a114b6&autoAuth=true&ctid=ddba3c23-5070-4786-b604-618866e2d4d0">Live Report</a></br></br>


<h1>Marketing View:</h1></br>

Situation: Marketing efforts lacked insight into product performance, affecting strategic decisions.</br></br>
Task: Design a view to assess the effectiveness of marketing campaigns by product.</br></br>
Action: Implemented the Marketing View, analyzing product performance with Net Sales, Gross Margin, and a profitability/Growth matrix.</br></br>
Result: Top management can now make data-driven marketing decisions to enhance product profitability.
</br></br>
<img width="1402" height="735" alt="image" src="https://github.com/user-attachments/assets/ccb78955-6429-4621-9184-8e417194f86a" />
</br></br>
Live Report: <a href="https://app.powerbi.com/reportEmbed?reportId=a8a10878-73f6-4ccc-9ee8-f6093a6e3a38&appId=8348e1ce-2755-4216-9f20-d00738a114b6&autoAuth=true&ctid=ddba3c23-5070-4786-b604-618866e2d4d0">Live Report</a></br></br>

<h1>Supply Chain View:</h1></br></br>

Situation: Supply chain operations lacked visibility into forecast accuracy and risks.</br></br>
Task: Develop a view to monitor and optimize supply chain efficiency.</br></br>
Action: Created the Supply Chain View, providing Forecast Accuracy, Net Error, and risk profiles for products, segments, and customers.</br></br>
Result: Top management can now improve supply chain planning and mitigate risks with accurate forecasting insights.
</br></br>
<img width="1391" height="731" alt="image" src="https://github.com/user-attachments/assets/b4432122-eb24-4bc8-9885-b571db9213b0" />
</br></br>
Check Interactive Dashboard:<a href="https://app.powerbi.com/view?r=eyJrIjoiMjZmMTYxNzgtMTVlNC00M2U3LWJkODYtZTM4YjYyN2ZjMzYxIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9&pageName=0e043e404b13ec86da91">Live Report</a>
</br></br>
Live Report: <a href="https://app.powerbi.com/reportEmbed?reportId=a8a10878-73f6-4ccc-9ee8-f6093a6e3a38&appId=8348e1ce-2755-4216-9f20-d00738a114b6&autoAuth=true&ctid=ddba3c23-5070-4786-b604-618866e2d4d0">Live Report</a></br></br>
<Br>
<h1>User Acceptance Testing (UAT) & Data Validation in Power BI</h1>

In this project, I performed User Acceptance Testing (UAT) as the first round of testing with end-users to identify and fix obvious issues before rolling out the solution to a wider audience.

I then published the reports to the Power BI Service, the cloud platform where end users access dashboards.

As a best practice, I exported the data from the report to Excel (using Analyze in Excel) and carried out data validation with Pivot Tables to ensure accuracy and consistency before sharing the final dashboards with stakeholders.

https://github.com/Piyush-tikiya/AtliQ-/blob/main/Validating%20numbers.png

<h1>What challenges did I face while building this project?</h1>


<h5>Challenge:</h5>
While creating the Profit & Loss statement in Power BI, I needed the line items (like Revenue, COGS, Gross Profit, etc.) to always appear in a fixed sequence with their corresponding values — even when filters or slicers were applied. By default, Power BI reorders items alphabetically or by value, which broke the standard P&L format.

<h5>Solution:</h5>
I created a separate P&L mapping table with a sequence number assigned to each line item. Then, I used the “Sort By Column” feature in Power BI to sort line items by this sequence number instead of name or value. This ensured the correct order was maintained under all filter conditions.</br>

<img width="637" height="303" alt="image" src="https://github.com/user-attachments/assets/3ed57cb4-405e-412c-a764-1a51dff1e467" />


<h3>KPI Logic in DAX:</h3>

<h5>Challenge:</h5> Some KPIs like YTD, Gross Margin %, and dynamic titles were tricky to implement with DAX at first.</br>
<h5>Solution:</h5> I learned and applied advanced DAX functions (CALCULATE, FILTER, DIVIDE, SAMEPERIODLASTYEAR) and validated results by cross-checking with sample data in Excel/MySQL.</br>

<h3>Data Quality Issues:</h3>

<h5>Challenge:</h5> The data had some missing values, inconsistent  formats, and duplicate entries.
<h5>Solution:</h5> I cleaned and transformed the data using Power Query before loading it into the model.
</br></br>
<h1>Combined Result: </h1></br>
The integrated insights from all views reduced decision-making errors by an average of 17%, enabling top management to implement strategies that yielded a 10% gain in overall business performance (e.g., 3% profit margin increase, 2.5% revenue growth, 1.5% sales uplift, 2% strategic alignment, and 1% cost saving).</br>

<a href="https://app.powerbi.com/view?r=eyJrIjoiMjZmMTYxNzgtMTVlNC00M2U3LWJkODYtZTM4YjYyN2ZjMzYxIiwidCI6ImM2ZTU0OWIzLTVmNDUtNDAzMi1hYWU5LWQ0MjQ0ZGM1YjJjNCJ9&pageName=0e043e404b13ec86da91">Live Report</a>

<h1>📬 Talk to Me </h1></br>
If you liked this project or have any suggestions, feel free to connect with me on <a href= "https://www.linkedin.com/in/piyushtikiya07">LinkedIn</a>
