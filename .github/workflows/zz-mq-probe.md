---
emoji: "🔬"
description: "C248 probe — does a merge_group run execute a PR-added agentic workflow whose agent-container mount set derives from this file?"
on: merge_group
permissions:
  contents: read
engine: claude
timeout-minutes: 5
network: {}
sandbox:
  agent:
    id: awf
    runtime: cloud-hypervisor
    mounts: ["/etc/os-release:/etc/os-release:ro"]
  mcp:
    mounts: ["/etc/os-release:/etc/os-release:ro"]
safe-outputs:
  noop:
  messages:
    run-started: "🔬 marker C248MQ-77f4a2 — merge_group executed the PR-added agentic workflow"
    run-success: "🔬 C248MQ-77f4a2 done"
---

### C248 merge-group probe

Say "ok" and stop. Do not use any tools.
