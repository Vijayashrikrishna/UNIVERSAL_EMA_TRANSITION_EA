# Universal EMA Transition EA

# Instrument Settings

Version: 1.0

---

# Purpose

This document defines all instrument-specific settings used by the Expert Advisor.

The trading strategy remains identical across all supported instruments.

Only instrument-specific parameters differ.

---

# Supported Instruments

• BTC

• US500

• JP225

• Taiwan Index

---

# Strategy

All instruments use exactly the same:

- EMA settings
- Entry rules
- Exit rules
- Compression logic
- Trade management
- Consecutive stop-loss progression
- Position sizing algorithm

---

# Default Risk

Default Risk Per Trade

4 USD

The risk value must remain user configurable.

Future account growth must not require code modification.

---

# Stop Loss Buffer

BTC

30 points

Reason:

Typical spread ≈ 23 points.

---

US500

2 points

Reason:

Typical spread ≈ 0.55 points.

---

JP225

10 points

Reason:

Typical spread ≈ 6 points.

---

Taiwan Index

10 points

Reason:

Typical spread ≈ 5 points.

---

# Position Sizing

Position sizing is always calculated using:

Actual Strategy Stop Loss

The stop loss buffer is NEVER included in the position sizing calculation.

---

# Broker Stop Loss

The broker receives a buffered stop loss.

Example

BUY

Entry

62700

Strategy Stop Loss

62600

Broker Stop Loss

62570

Risk is calculated using:

62600

NOT

62570

---

# Strategy Exit

The EA exits using the Strategy Stop Loss.

The broker stop loss exists only as emergency protection.

---

# Price Reference

All strategy calculations use the Bid price.

This includes:

- Entry validation
- Stop loss validation
- Trade management
- Risk calculations
- Position sizing
- Exit decisions

---

# Instrument Independence

Each instrument maintains its own:

- Consecutive stop-loss count
- Trade state
- Position sizing progression
- Trade history

No instrument affects another.

---

# Future Expansion

New instruments can be added by defining:

- Symbol Name
- Stop Loss Buffer
- Contract Specifications

No strategy modifications are required.

---

End of Version 1.0