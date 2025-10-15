# 🧪 Module 1 Lab – Google Cloud IAM Role Creation

## 🔍 Scenario

As part of Cymbal Bank’s cloud migration, sensitive customer data stored in Firebase requires restricted access for third-party auditors. As a junior cloud security analyst, your task is to securely configure a **custom IAM role** that grants **read-only** permissions, and assign it to a specific audit team user.

---

## 🎯 Objectives

- ✅ Create a custom IAM role with restricted Firebase permissions
- ✅ Assign the role to a specific audit user
- ✅ Verify the role assignment using **Policy Analyzer**


---

### 1️⃣ IAM > Roles opened

This shows the IAM Roles section opened from the navigation menu.

![Roles opened](./Screenshots/scheenshot1-Roles.png)

---

### 2️⃣ Create Role dialog filled

This screenshot displays the completed form for the custom role:
- **Title:** `Audit Team Reviewer`
- **ID:** `CustomRole`
- **Description:** Read-only access for Firebase audit team
- **Launch Stage:** General Availability

![Create Role dialog](./Screenshots/scheenshot2-RolesCreate.png)

---

### 3️⃣ Custom role successfully created

Once the role was created, it appeared in the list of project roles.

![Custom role listed](./Screenshots/scheenshot3-custonroleslisted.png)

---

### 4️⃣ Role assigned to audit user

The custom role `Audit Team Reviewer` was assigned to **Google Cloud Username 2** using IAM > Grant Access.

![Audit Team Reviewer assigned](./Screenshots/scheenshot4-AuditTeamReviewer.png)

---

### 5️⃣ Verified role in Policy Analyzer

Using Policy Analyzer, we verified that the correct role was assigned to the intended principal.

![Policy Analyzer results](./Screenshots/scheenshot5-policyanalyzerresults.png)

---

## 🧠 Summary

| Task                           | Completed |
|--------------------------------|-----------|
| Created Custom Role            | ✅         |
| Assigned Role to User          | ✅         |
| Verified Role with Analyzer    | ✅         |
| Documented and Captured Proof  | ✅         |

This lab demonstrates the principle of **least privilege** and shows how to create granular access controls using **Google Cloud IAM**. Excellent foundational skill for cloud security analysts.

---