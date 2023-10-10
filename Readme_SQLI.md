### **The Dataset Used**

**Rakamin DB** [Here](https://drive.google.com/file/d/1ICD6bZLVqfD1H-Xbr7o2YwWaO_eVQSxz/view)

    Description:

This database consists of 4 tables that contain customer data, address data, order data, and merchant data from RakaFood business.

### **Tools**

**PostgreSQL**


### **Task**

1. The management wants to know the extent of RakaFood's development/expansion so far. Display all the unique cities where customers originate from!

2. The Engineering team has just updated the schema of the order table. Display the 10 most recent transactions from the rakamin_order table to see the format of this table!

3. The Risk team wants to know the performance of the fraud detection system that has been running so far. Show the data of customers who have been detected as fraudsters in RakaFood!

4. The Business Development team is establishing a new partnership with ShopeePay. For this purpose, they want the order data from Rakafood that uses the ShopeePay payment method, and they also want to see the largest transaction amounts.

5. The Marketing team will conduct a campaign in Tangerang City for the next 2 months. For this, they need specific data of all Rakafood customer addresses located in Tangerang City. To facilitate their analysis process, create a new table named rakamin_customer_address_tangerang that contains the data from the rakamin_customer_address table specifically for Tangerang City.

6. The Marketing team has found some incorrect data points in the rakamin_customer_address_tangerang table. The province column for Tangerang City should be Banten (not West Java). Additionally, for the customer with id_pelanggan 10, their address should be in Karawaci (not Daan Mogot). Please update the table accordingly based on the above specifications!

7. It turns out that the rakamin_customer_address_tangerang table does not yet have any new customer data. Please add the following row of data to the table: Id_alamat: 101, id_pelanggan: 70, address: Ciledug With the city and province columns following the other rows.

8. Another error has been found in the rakamin_customer_address_tangerang table. It appears that id_alamat = 54 is invalid and was incorrectly inputted. Please delete that row of data so that the Marketing team can utilize the table more effectively.