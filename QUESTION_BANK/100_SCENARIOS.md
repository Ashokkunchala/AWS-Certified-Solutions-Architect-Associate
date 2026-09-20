# 100 SAA-C03 Scenario Drills

Use these as prompts. For each, identify requirement, constraint, service, trade-off and why the alternatives fail.

## Security — 1–25
1. Private EC2 needs S3 without public internet. Identify the private-access pattern.
2. Workload needs temporary AWS permissions without static keys. Identify the identity pattern.
3. Public S3 access must be prevented account-wide. Identify the relevant protection.
4. Database must never be internet reachable. Design subnet and SG boundaries.
5. Secret rotation is required. Compare Secrets Manager with Parameter Store.
6. Encrypt application data with customer-controlled keys. Identify the KMS role.
7. Audit who called AWS APIs. Identify the audit service.
8. Protect an HTTP application from common web exploits. Identify the edge security control.
9. Limit an account's maximum permissions across member accounts. Identify the organization control.
10. Allow one workload to read only one S3 prefix. Design least privilege.
11. Separate public and private network tiers. Identify routing and security boundaries.
12. A security rule must be subnet-level and stateless. Identify the control.
13. A security rule should automatically track return traffic. Identify the control.
14. Centralize workforce access to multiple AWS accounts. Identify the identity pattern.
15. Application credentials must not be embedded in an image. Identify the secret-management pattern.
16. Encrypt an EBS volume. Identify the service/control used.
17. Protect an S3 bucket from accidental public policy changes. Identify protections to evaluate.
18. Private workloads need access to supported AWS services without NAT. Evaluate endpoints.
19. Record configuration changes and compliance state. Identify the governance service.
20. Detect suspicious AWS activity. Identify the relevant detection category.
21. A role needs access only during execution. Prefer temporary role credentials.
22. A bucket policy grants access but the identity is explicitly denied. Explain policy evaluation.
23. An application needs TLS termination at the load balancer. Identify the relevant load-balancer capability.
24. A workload needs outbound internet but no inbound initiation. Design the network path.
25. A company needs separate security and workload accounts. Explain organizational boundaries.

## Resilience — 26–50
26. Application must survive one AZ failure. Design the failure-domain layout.
27. Workers must absorb traffic spikes. Select a decoupling pattern.
28. Failed queue messages need isolation. Select the retry/DLQ pattern.
29. Database must fail over automatically within a Region. Compare Multi-AZ options.
30. Read traffic is the bottleneck. Compare read replicas and caching.
31. Business requires regional disaster recovery. Explain why Multi-AZ alone is insufficient.
32. Users must be routed to a healthy endpoint. Select the DNS pattern.
33. Stateless web servers need horizontal scaling. Design the architecture.
34. A downstream API is intermittently slow. Add resilience without blocking the whole system.
35. A consumer may process a message twice. Design for idempotency.
36. An application needs independent scaling of order processing. Decouple the workload.
37. A component can be unavailable temporarily without losing work. Buffer the work.
38. A database backup must support point-in-time recovery. Identify the managed capability.
39. RTO is minutes and RPO is near-zero. Evaluate the DR architecture characteristics.
40. RTO is hours and data loss of hours is acceptable. Evaluate a lower-cost DR approach.
41. One application instance fails health checks. Explain expected load-balancer behavior.
42. One AZ loses capacity. Explain Auto Scaling and multi-AZ behavior.
43. A queue consumer crashes after receiving a message. Explain visibility timeout.
44. Duplicate event delivery occurs. Design consumer behavior.
45. A region fails and DNS must redirect users. Design the failover path.
46. A static website origin fails. Identify resilience options.
47. A service needs loose coupling between producers and consumers. Identify the pattern.
48. A workflow has multiple dependent steps and retries. Select orchestration.
49. A component should continue operating after a downstream timeout. Apply timeout/retry/circuit principles.
50. A workload needs backups and documented recovery procedures. Define operational evidence.

## Performance — 51–75
51. Global users request mostly static assets. Select the delivery architecture.
52. Repeated database reads are slow. Evaluate caching.
53. HTTP path-based routing is required. Select the load balancer capability.
54. TCP-level high-performance load balancing is required. Select the appropriate class.
55. Large objects require durable scalable storage. Select storage.
56. Multiple EC2 instances need shared file access. Select storage.
57. A single EC2 instance needs persistent block storage. Select storage.
58. A key-value workload needs very high scale with managed operations. Select database.
59. A relational workload needs managed SQL. Select database family.
60. Application needs microsecond/millisecond caching for hot data. Evaluate cache services.
61. Traffic is unpredictable and bursty. Select an elastic compute pattern.
62. Event-driven code runs only when invoked. Evaluate serverless compute.
63. API traffic needs authentication and throttling at the API layer. Evaluate gateway features.
64. Content should be cached close to users. Evaluate CDN architecture.
65. Private AWS API access is slow because traffic traverses NAT. Evaluate endpoints.
66. Database reads dominate while writes remain moderate. Evaluate read scaling.
67. A workload is CPU-bound. Select an appropriate compute family concept.
68. A workload is memory-intensive. Select an appropriate compute family concept.
69. A workload requires shared POSIX-like files. Evaluate EFS.
70. A workload stores immutable objects. Evaluate S3.
71. A batch job can tolerate interruption. Evaluate Spot.
72. A workflow requires state and branching. Evaluate Step Functions.
73. A stream needs near-real-time ingestion. Evaluate streaming services.
74. Analytics queries should avoid managing database servers. Evaluate serverless analytics.
75. Origin servers are overloaded by cacheable traffic. Add an edge cache.

## Cost — 76–100
76. EC2 runs continuously with predictable demand. Evaluate commitment discounts.
77. Workload is interruptible and flexible. Evaluate Spot.
78. Objects become rarely accessed over time. Design lifecycle transitions.
79. Idle instances are running 24/7. Identify optimization action.
80. NAT costs are unexpectedly high. Trace traffic paths.
81. Static content generates large origin traffic. Evaluate CDN cost effects.
82. Database is oversized. Identify right-sizing approach.
83. Development resources run overnight unnecessarily. Automate schedules.
84. Storage has old versions accumulating. Evaluate lifecycle/retention.
85. Serverless workload is sporadic. Compare serverless and always-on compute economics.
86. A queue allows workers to scale only when needed. Explain cost benefit.
87. A database is read-heavy. Evaluate caching before scaling the database.
88. Cross-Region traffic is expensive. Inspect replication and data-transfer requirements.
89. Logs grow indefinitely. Design retention tiers.
90. A workload requires high availability but not regional DR. Avoid unnecessary regional complexity.
91. A workload requires regional DR but has a low recovery budget. Compare DR strategies.
92. A private service call traverses NAT unnecessarily. Investigate endpoint economics.
93. A storage workload has predictable access. Compare appropriate S3 classes.
94. A compute workload has steady baseline plus burst. Combine commitment and elastic capacity concepts.
95. A workload is short-lived and irregular. Compare serverless against fixed instances.
96. A database is rarely used in development. Evaluate lower-cost architecture and schedules.
97. Unused public IP/network resources create cost. Identify cleanup.
98. A company cannot explain cloud spending by team. Add tagging/allocation controls.
99. Architecture uses three managed services where one can satisfy the requirement. Evaluate operational and cost complexity.
100. Cost optimization conflicts with availability. Make the trade-off explicit against the business requirement.
