# 🧾 Lab Notes – Lab 2: Access a Firewall and Create a Rule

## 🔐 Objective
The purpose of this lab was to learn how to protect a virtual machine (VM) on Google Cloud by setting up and managing **firewall rules** to allow or block specific types of traffic (e.g., HTTP and SSH).

---

## 🛠️ Key Tasks & Notes

### 🔸 Task 1: Create a Firewall Rule to Allow Traffic
- Created a firewall rule named `allow-http-ssh`
- Allowed **TCP traffic** on ports 80 (HTTP) and 22 (SSH)
- Applied it only to VMs with the **target tag** `http-server`
- Enabled logs to track traffic events

✅ *Learned:* How to create a **custom firewall rule** and apply it to specific VMs using tags.

---

### 🔸 Task 2: Generate Network Traffic
- Accessed the external IP of the VM running Apache to simulate web traffic
- Used a browser to send HTTP requests to the server
- Found my public IP using [whatismyip.com](https://whatismyip.com) for log filtering

✅ *Learned:* How to simulate **inbound traffic** to test firewall behavior.

---

### 🔸 Task 3: Analyze Flow Logs
- Used **Logs Explorer** in GCP to filter by:
  - `resource.type = "gce_subnetwork"`
  - `log_name = "compute.googleapis.com/vpc_flows"`
  - Filtered by `src_ip` (my IP) to view my access logs
- Confirmed port 80 traffic was **allowed**

✅ *Learned:* How to navigate **VPC Flow Logs** and verify allowed traffic.

---

### 🔸 Task 4: Create Deny Rule
- Created another rule: `deny-http`
- **Denied TCP traffic** on port 80 from all IPs (0.0.0.0/0)
- Kept the same target tag (`http-server`) to limit scope

✅ *Learned:* How to **block traffic** to a VM using a deny firewall rule.

---

### 🔸 Task 5: Test & Analyze Denied Traffic
- Tried accessing the web server again — connection failed (as expected)
- Revisited Logs Explorer and filtered by:
  - `log_name = "compute.googleapis.com/firewall"`
  - `jsonPayload.connection.src_ip=YOUR_IP`
- Found logs showing the **DENY** action triggered by my rule

✅ *Learned:* How to verify **denied traffic** in firewall logs and confirm rule enforcement.

---