# AWS Certified Solutions Architect – Associate (SAA-C03)

A hands-on, exam-aligned AWS Solutions Architect Associate learning repository.

## Purpose

Connect **AWS theory → architecture decisions → hands-on implementation → troubleshooting → exam-style reasoning**.

AWS SAA-C03 currently has four scored domains:
- Design Secure Architectures — 30%
- Design Resilient Architectures — 26%
- Design High-Performing Architectures — 24%
- Design Cost-Optimized Architectures — 20%

AWS states the exam has 65 questions total: 50 scored and 15 unscored. Exam time is 130 minutes; the passing scaled score is 720.

## Learning loop

**Understand → Compare → Design → Build → Break → Recover → Explain → Test**

## Repository guide

### Core learning
- ROADMAP.md
- 30_DAY_PLAN.md
- EXAM_BLUEPRINT.md
- AWS_SERVICE_MATRIX.md
- ARCHITECTURE_DECISION_GUIDE.md
- EXAM_PLAYBOOK.md
- PROGRESS.md

### Practical engineering
- DAY_01-30/ — daily execution guides
- HANDS_ON_LABS.md — lab catalogue
- LABS/ — Terraform lab foundations
- TOOLS/ — validation, evidence and cleanup tooling
- AWS_ACCOUNT_SAFETY.md — account, credential and cost safety
- ARCHITECTURE_DIAGRAMS/ — Mermaid reference architectures
- TROUBLESHOOTING_DRILLS.md — failure exercises

### Exam practice
- QUESTION_BANK/100_SCENARIOS.md — 100 scenario prompts
- QUESTION_BANK/100_SCENARIO_ANSWERS.md — answer key
- MOCK_EXAMS/ — timed mock framework and oral defense

### Architecture engineering
- CAPSTONE.md — end-to-end architecture
- ADRS/ — architecture decision records
- WELL_ARCHITECTED_REVIEW.md — six-pillar review
- INTEGRATION_WITH_OTHER_REPOS.md — SAA + Terraform + EKS learning path

## Quality checks

Run:

```bash
bash TOOLS/bootstrap-check.sh
bash TOOLS/terraform-validate.sh
```

Pull requests validate Terraform labs and Markdown.

## Learning standard

A topic is complete only when you can:
1. Explain it without notes.
2. Compare it with the closest alternatives.
3. Build a small implementation.
4. Break one part intentionally.
5. Diagnose and recover it.
6. Defend the architecture decision.

## Official references

- https://docs.aws.amazon.com/aws-certification/latest/solutions-architect-associate-03.html
- https://aws.amazon.com/certification/certified-solutions-architect-associate/

AWS can change exam scope and delivery details; verify current details with the official AWS pages before scheduling.