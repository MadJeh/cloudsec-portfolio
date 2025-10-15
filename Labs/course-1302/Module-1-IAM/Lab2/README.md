# 🔥 Lab 2 – Access a Firewall and Create a Rule

## 📚 Overview

In this lab, I learned how to protect a web server in Google Cloud by managing **firewall rules**, generating network traffic, and analyzing **VPC Flow Logs**.

---

## 🧪 Task-by-Task Summary with Evidence

---

### ✅ Task 1 – Create Firewall Rule

Created a rule to **allow traffic** on HTTP (port 80) and SSH (port 22), limited to VMs tagged `http-server`.

📸 Evidence:  
![Firewall Rule Created 1](./Screenshots_Lab2/02_Firewall_Create.png)  
![Firewall Rule Created 2](./Screenshots_Lab2/03_Firewall_Created.png)

---

### ✅ Task 2 – Generate HTTP Network Traffic

Connected to the Apache web server using its **external IP** to simulate HTTP traffic.

📸 Evidence:  
![Access Web Server](./Screenshots_Lab2/04_WebServer_Apache.png)  
![Public IP Shown](./Screenshots_Lab2/05_Public_IP.png)

---

### ✅ Task 3 – Analyze Flow Logs

Used **Logs Explorer** to search VPC Flow Logs by my IP, verifying HTTP traffic was allowed.

📸 Evidence:  
![Flow Log Entry Found](./Screenshots_Lab2/06_HTTP_Allowed_Flow_Log.png)

---

### ✅ Task 4 – Create Deny Rule for HTTP

Created a new firewall rule to **deny HTTP (port 80)** traffic from all sources to the tagged VM.

📸 Evidence:  
![Deny Rule Created](./Screenshots_Lab2/07_Deny_HTTP_Rule_Created.png)

---

### ✅ Task 5 – Verify Denied Traffic in Logs

Tried reconnecting to the web server and confirmed access was denied. Checked logs to validate.

📸 Evidence:  
![Access Denied Test](./Screenshots_Lab2/08_HTTP_Denied_Test.png)  
![Denied Flow Log](./Screenshots_Lab2/09_HTTP_Denied_Log.png)

---

## 🧠 What I Learned

- How to configure and **apply custom firewall rules** in Google Cloud
- Using **target tags** to limit rule scope to specific VM instances
- **Monitoring traffic logs** via Logs Explorer
- The difference between **allowed** and **denied** dispositions
- Basics of **perimeter protection** and why firewall rules are important

---
