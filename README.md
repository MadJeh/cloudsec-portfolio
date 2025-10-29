# ☁️ CloudSec Portfolio — Google Cloud Cybersecurity

Hands-on projects developed during the **Google Cloud Cybersecurity Certificate** program.  
This repository documents my practical experience in **cloud security architecture, vulnerability management, and incident response** using Google Cloud Platform (GCP).

Each lab and project follows the **NIST Cybersecurity Framework (CSF)** — *Identify, Protect, Detect, Respond, and Recover.*

---

## 🧩 Projects Overview

### 🔐 Identify & Protect — Course 1302
Implemented IAM best practices, managed encryption keys, applied VPC network controls, and enforced policy boundaries across cloud resources.  
Key achievements:
- Configured **IAM Roles and Policies** for least privilege access  
- Implemented **Secret Manager** for secure credentials storage  
- Scanned and mitigated **Web Application vulnerabilities** using **Web Security Scanner**  
- Documented remediation steps and validated compliance reports  

📂 Folder: [`Labs/course-1302-identify-protect-labs`](./Labs/course-1302-identify-protect-labs)

---

### ⚙️ Detect & Respond — Course 1303
Leveraged **Google Security Operations (Chronicle)** to analyze logs, detect incidents, and respond to potential threats.  
Key achievements:
- Correlated threat indicators and alerts using **Chronicle SIEM**  
- Investigated and triaged simulated incidents  
- Built an **Incident Response Playbook** based on Google’s best practices  
- Developed queries to identify anomalous patterns in GCP audit logs  

📂 Folder: [`Labs/course-1303-detection-response`](./Labs/course-1303-detection-response)

---

### 🧱 Capstone Project — Respond & Recover
Simulated a real-world data breach at **Cymbal Bank**, then executed remediation actions to restore compliance and security posture.  
Steps performed:
1. Analyzed **Security Command Center (SCC)** findings  
2. Shut down the infected VM and restored from a secure snapshot  
3. Revoked **public bucket access** and enforced **uniform bucket-level control**  
4. Cleaned up **firewall rules** and enabled logging  
5. Verified remediation by running a **CIS 2.0 compliance report** with zero active findings  

📂 Folder: [`Capstone_Project/`](./Capstone_Project)

---

## 🧠 Skills & Tools

- **Google Cloud Security Command Center (SCC)**
- **Chronicle SIEM** (Google Security Operations)
- **IAM & Policy Troubleshooting**
- **Cloud Logging / Monitoring**
- **Web Security Scanner**
- **CIS Benchmark Auditing**
- **Incident Response & Playbooks**
- **Terraform (Secure Infrastructure as Code)**

---

## 📜 Repository Structure

```bash
📦 cloudsec-portfolio
 ┣ 📁 Capstone_Project           # Final breach remediation & compliance verification
 ┣ 📁 Labs                       # Course labs (Identify, Protect, Detect, Respond)
 ┣ 📁 docs                       # Diagrams, reports, and documentation
 ┣ 📁 evidence                   # Screenshots and proof of lab results
 ┣ 📁 logs                       # GCP command outputs and configurations
 ┗ 📁 scripts                    # Automation & cleanup scripts
```
## 🏅 Certification

**Google Cloud Cybersecurity Certificate**  
Credential earned via Google Cloud Skills Boost.  
This certification validates knowledge of **cloud threat mitigation**, **incident response**, and **security operations on GCP**.

---

## 🧭 Framework Alignment

All labs are mapped to the **NIST Cybersecurity Framework (CSF):**

| NIST Function | Example Implementation |
|----------------|------------------------|
| **Identify** | Asset inventory, IAM analysis |
| **Protect** | IAM least privilege, encryption, firewall hardening |
| **Detect** | Chronicle log correlation and anomaly detection |
| **Respond** | Incident response workflow & playbook |
| **Recover** | System restoration and compliance verification |

---

## 📫 Connect

👋 **Jeferson Madureira**  
🔗 [LinkedIn](https://www.linkedin.com/in/jeferson-madureira-4a526a109/)  
📧 madureira1985jeh@gmail.com  
💻 [GitHub](https://github.com/MadJeh)

---

## ✨ Summary

This repository serves as an **end-to-end showcase** of my technical capability in **Google Cloud Security** — from **policy design and detection engineering** to **incident remediation and recovery**.  
It reflects my **practical, evidence-driven approach** to building **secure cloud environments** and maintaining **continuous compliance**.

