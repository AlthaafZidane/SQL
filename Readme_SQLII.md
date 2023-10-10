### **The Dataset Used**

**Rakamin DB** [Here](https://drive.google.com/file/d/1ICD6bZLVqfD1H-Xbr7o2YwWaO_eVQSxz/view)

    Description:

This database consists of 4 tables that contain customer data, address data, order data, and merchant data from RakaFood business.

### **Tools**

**PostgreSQL**


### **Task**

1. The Risk team is conducting an investigation for customers who use Yahoo or Rocketmail email, specifically those who registered in the first quarter (January - March) of 2012 and have birthdays between January and March. Please display the information of the customers who meet these criteria, including their name, email, birth month, and registration date.

2. The Business team wants to analyze the spending behavior of customers by categorizing each transaction into several buckets based on the amount of money spent by the customers. The spending buckets defined by the Business team are LOW (for transactions with a post-tax amount not exceeding 20 thousand), MEDIUM (for transactions with a post-tax amount exceeding 20 thousand but not exceeding 50 thousand), and HIGH (for transactions with a post-tax amount above 50 thousand). Please display the information of id_order, id_customer, price, price after tax, and spending_bucket according to the criteria set by the Business team, then sort them based on the price after tax from the largest to the smallest.

3. The Merchant Acquisition team wants to analyze the performance of existing merchants by looking at several metrics, namely the number of orders received by each merchant and the total revenue (pre-tax) received by each merchant so far. Please display the id_merchant, number of orders, and total revenue before tax. Then, sort them based on the total revenue from highest to lowest.

4. The Payment team wants to analyze the most popular payment methods used so far. Please display the payment methods along with their frequency of usage, but only show the payment methods that have a usage frequency above 10. After that, sort them based on the frequency from highest to lowest.

5. The Business Development team wants to consider expansion strategies to other cities. Before that, they want to know the imbalance in customer population in the current cities. They would like to request information about the smallest number of customers in a city and also the largest population of customers in the city with the most customers. Please display these two numbers! (What is the number of customers in the city with the smallest population, and what is the number of customers in the city with the largest population?)

6. The Payment team wants to deepen their analysis on payment methods. This time, they want to see the detailed usage (frequency) of each payment method for each existing merchant. Please display the merchant's name (not just the id_merchant), payment method, and its usage frequency.

7. The Marketing team wants to give rewards to customers who have made transactions with a total quantity above 5. For this, please display the information of id_customer, total quantity, name, and email for customers who meet this criteria! (Do this using Common Table Expression).