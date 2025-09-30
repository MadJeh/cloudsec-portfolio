# Week 1 — Course 1300 Finish + Project Bootstrap (Printable Checklist)

**Pace:** ≤20h/week (4–5h/day)  
**Guardrails:** Always Free; no premium SKUs; budgets on Day 1; **do not enable VPC Flow Logs**.

---

## Theory (Complete Course 1300)
- [ ] Watch remaining Course 1300 videos and take notes (shared responsibility, least privilege, IAM basics)
- [ ] Write 5 key takeaways in `docs/GCP_Baseline.md`

---

## Lab A — Project + Budget Setup (NIST: Identify/Protect)

**Objective:** Create isolated lab project with budget alerts so you can’t accidentally spend money.

**Pre-Reqs:** Google account with billing enabled.  
**Resources:** Free (no workloads).

**Console Path:**  
`Console → IAM & Admin → Manage resources → CREATE PROJECT`  
- Name: `cloudsec-lab`  
- Project ID: (auto) — note it for commands

`Console → Billing → Budgets & alerts → CREATE BUDGET`  
- Scope: Project `cloudsec-lab`  
- Amount: `$10`  
- Alerts: `50%`, `90%`, `100%` (email)

**gcloud Commands:** (Cloud Shell or local)
```bash
gcloud config set project CLOUDSEC_LAB_PROJECT_ID
gcloud services enable logging.googleapis.com monitoring.googleapis.com iam.googleapis.com securitycenter.googleapis.com
gcloud services list --enabled > scripts/enabled_services.txt
```

**Verification:**
- [ ] Screenshot: Project Dashboard
- [ ] Screenshot: Budget page with thresholds
- [ ] File: `scripts/enabled_services.txt`

**Evidence to Capture:**
- Save screenshots under `evidence/week1/day01-project-bootstrap/`

**Cleanup:** None (project persists)

**Common Failure Modes & Fixes:**
- Billing not linked → `Console → Billing → My projects` → Link account
- Permission denied enabling APIs → ensure you’re Owner on the project
- Wrong project in gcloud → `gcloud config set project ...`

**Timebox:** ~60–75 min

---

## Lab B — Baseline Logs Sanity Check (NIST: Detect)

**Objective:** Confirm core audit/logging visibility is working by default.

**Console Path:**  
`Console → Logging → Logs Explorer`  
Query examples:
```
logName:"cloudaudit" resource.type="project"
```
Save this query as a **Saved Query** named `baseline-audit-sanity`.

**Verification:**
- [ ] Screenshot: Logs Explorer with results
- [ ] Add a filter by time (Last 1h) and screenshot again

**Evidence:**  
- Put screenshots in `evidence/week1/day01-baseline-logs/`  
- Update `docs/GCP_Baseline.md` with what you observed

**Cleanup:** None

**Timebox:** ~30–45 min
