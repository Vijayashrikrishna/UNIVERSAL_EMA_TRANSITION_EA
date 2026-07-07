# Universal EMA Transition EA

# Input Parameters

Version: 1.0

---

# Purpose

This document defines every configurable input available to the user from the MT5 Expert Advisor settings.

All parameters must be adjustable without modifying the source code.

---

# Risk Settings

## Risk Per Trade (USD)

Default: 4.00

Description:

Dollar risk per trade.

This value is used for position sizing.

---

# Instrument Selection

Enable BTC

Default: True

---

Enable US500

Default: True

---

Enable JP225

Default: True

---

Enable Taiwan Index

Default: True

---

# Stop Loss Buffers

BTC Buffer

Default: 30 points

---

US500 Buffer

Default: 2 points

---

JP225 Buffer

Default: 10 points

---

Taiwan Buffer

Default: 10 points

---

# Trade Settings

Magic Number

Default: 10001

Description:

Unique identifier used to distinguish trades opened by this EA.

---

Maximum Slippage

Default: 5 points

---

# Logging

Enable Logging

Default: True

---

# Future Parameters

Reserved for future versions:

- Break-even
- Partial Close
- Trailing Stop
- Trading Sessions
- News Filter
- Maximum Daily Loss
- Maximum Open Trades
- Maximum Consecutive Losses
- Dynamic Risk Scaling

---

End of Version 1.0