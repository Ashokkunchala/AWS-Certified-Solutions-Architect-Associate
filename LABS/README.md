# Runnable Lab Structure

Future labs should use this structure:

```text
lab-name/
├── README.md
├── terraform/
├── cli/
├── diagrams/
├── evidence/
└── cleanup.sh
```

Rules:
- never commit credentials
- use variables for account-specific values
- default to least privilege
- document estimated cost
- include cleanup
- capture evidence before destroying resources