# Resilience Scenarios

## Q1
A workload must process traffic spikes without losing requests when workers are temporarily unavailable. What pattern should be evaluated?

**Reasoning target:** durable queue, visibility timeout, retries and DLQ.

## Q2
A business requires recovery from a Regional outage. Why might Multi-AZ alone be insufficient?

**Reasoning target:** AZ and Region are different failure domains.