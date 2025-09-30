# Week 2 — Course 1300 IAM Deep-Dive + Least-Privilege Matrix (Printable Checklist)

**Pace:** ≤20h/week (4–5h/day)  
**Guardrails:** Always Free; no premium SKUs.

---

## Theory
- [ ] Review IAM hierarchy (org/folder/project) and policy evaluation logic
- [ ] Compare primitive vs predefined vs custom roles
- [ ] Understand service accounts vs user identities

---

## Lab — IAM Least-Privilege Matrix (NIST: Protect/PR.AC)

**Objective:** Implement least-privilege using a service account and (optional) a test user; export the policy and build an IAM matrix.

**Pre-Reqs:** IAM API enabled; your lab project ID noted.

**Console Path:**  
`Console → IAM & Admin → Service Accounts → CREATE SERVICE ACCOUNT`  
- Name: `sa-logger`  
- Grant no roles at creation; click **Done**

`Console → IAM & Admin → IAM → GRANT ACCESS`  
- Member: `serviceAccount:sa-logger@CLOUDSEC_LAB_PROJECT_ID.iam.gserviceaccount.com`  
- Role: `Logging > Logs Writer (roles/logging.logWriter)`

(Optional test user)  
- Add a secondary Google account as **Viewer** only to prove least privilege.

**gcloud Commands:**
```bash
# Set project
gcloud config set project CLOUDSEC_LAB_PROJECT_ID

# List service accounts
gcloud iam service-accounts list

# Export IAM policy for analysis
gcloud projects get-iam-policy CLOUDSEC_LAB_PROJECT_ID --format=json > logs/iam-policy.json

# Show bindings for quick read
gcloud projects get-iam-policy CLOUDSEC_LAB_PROJECT_ID --flatten="bindings[]" --format="table(bindings.role, bindings.members)"
```

**Verification:**
- [ ] As Viewer (incognito), confirm read-only; attempts to modify fail.
- [ ] As yourself, confirm SA has only `logWriter` role.

**Evidence to Capture:**
- Screenshot: IAM page showing principals and roles  
- Save `logs/iam-policy.json`  
- Create `logs/IAM_Matrix.csv` (columns: Principal, Role, Scope, Notes)

**Cleanup:**
- Remove the test Viewer user after verification (keep SA)

**Common Failure Modes & Fixes:**
- “Permission denied” exporting policy → use Owner account
- Mixed projects in shell → `gcloud config set project ...`
- Granted role at creation by mistake → remove on IAM page, then re-add correctly

**Timebox:** ~90–120 min
