# Universal EMA Transition EA

# Risk Management

Version: 1.0

---

# Purpose

This document defines the complete risk management system of the Universal EMA Transition EA.

The objective is to maintain a fixed dollar risk per trade while allowing the Expert Advisor to calculate the correct position size automatically.

---

# Risk Per Trade

Default Risk

4.00 USD

This value is user configurable.

Future account growth must not require source code modification.

---

# Position Sizing

Position size is calculated using:

- Risk Per Trade (USD)
- Actual Strategy Stop Loss
- Instrument Contract Specification

The Broker Stop Loss buffer is NEVER included in position sizing calculations.

---

# Actual Strategy Stop Loss

The Strategy Stop Loss is determined using the strategy rules.

This stop loss is used for:

- Position sizing
- Risk calculation
- R-Multiple calculation
- Strategy exit

---

# Broker Stop Loss

The Broker Stop Loss exists only as emergency protection.

It is placed beyond the Strategy Stop Loss using the instrument buffer.

Example

BUY

Entry

62700

Strategy Stop Loss

62600

Broker Stop Loss

62570

Risk calculation uses:

62600

NOT

62570

---

# Instrument Buffers

BTC

30 points

---

US500

2 points

---

JP225

10 points

---

Taiwan Index

10 points

---

# Trade Exit

The EA continuously monitors the market.

The Strategy Stop Loss determines when the trade should be closed.

The Broker Stop Loss should normally never be triggered.

---

# Consecutive Stop Loss Progression

Every instrument maintains its own independent progression.

Example

BTC

2 consecutive losses

US500

0 consecutive losses

JP225

5 consecutive losses

Taiwan

1 consecutive loss

No instrument affects another instrument.

---

# Progression Rules

Normal EMA

Trade 1

1st Valid Level

Trade 2

1st Valid Level

Trade 3

2nd Valid Level

Trade 4

3rd Valid Level

Continue until a successful trade resets progression.

---

Compressed EMA

Trade 1

2nd Valid Level

Trade 2

2nd Valid Level

Trade 3

3rd Valid Level

Trade 4

4th Valid Level

Continue until a successful trade resets progression.

---

# Progression Reset

The progression resets only when a winning trade reaches the strategy-defined successful outcome.

Losing trades continue the progression.

---

# Design Principles

The Risk Engine must remain:

- Instrument independent
- Broker independent
- Configurable
- Deterministic
- Fully automatic

---

End of Version 1.0