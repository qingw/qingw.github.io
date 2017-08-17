---
layout: post
title: overlay network
categories: [research]
---


```
route add -host 172.18.19.52 gw 172.16.33.253

VM ↔ Host	VM1 ↔ VM2	VM → Internet	VM ← Internet
Host-only	+	+	–	–
Internal	–	+	–	–
Bridged	+	+	+	+
NAT	–	–	+	Port forwarding
NAT Network	–	+	+	Port forwarding

```
