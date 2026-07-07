# Universal EMA Transition EA
## Strategy Specification
**Version:** 1.0

---

# Project Goal

Develop a professional MT5 Expert Advisor capable of trading multiple instruments using the EMA Transition strategy with configurable risk management and instrument-specific stop loss handling.

---

# Supported Instruments

- BTC
- US500
- JP225
- Taiwan Index

The EA must be designed so additional instruments can be added in future without major code changes.

---

# Strategy Overview

The EA identifies trend transitions using EMA behavior and compression conditions before executing trades.

Trade entries must follow the finalized Version 1.0 strategy rules.

---

# Entry Logic

The entry engine will implement:

- EMA Transition
- Compression Detection
- Trigger Candle
- Confirmation Rules
- Session Filters
- Trade Validation

---

# Risk Management

Risk is adjustable.

Example:

- $4
- $6
- $10
- $25

Changing risk must not require code modification.

---

# Position Sizing

Position sizing is calculated using the **actual strategy stop loss only**.

Broker stop loss buffer must NOT affect position sizing.

---

# Stop Loss Logic

Two stop loss levels exist.

## Actual Stop Loss

Used for:

- Risk calculation
- Position sizing
- EA exit decision

## Broker Stop Loss

Placed further away to avoid spread stop-outs.

Instrument buffers:

BTC = 30 points

US500 = 2 points

JP225 = 10 points

Taiwan = 10 points

---

# Exit Logic

The EA monitors the Bid price.

If Bid reaches the actual stop loss:

- Close trade immediately.

The broker stop loss exists only as protection against platform failure or disconnection.

---

# Consecutive Loss Progression

Each instrument maintains its own progression independently.

Example:

BTC:
0 → 1 → 2

US500:
0 → 0 → 1

JP225:
3 → 4

Each symbol progresses independently.

---

# Future Expansion

The architecture must support:

- Additional instruments
- Additional sessions
- Additional EMA configurations
- New exit methods

without rewriting the core system.

---

# Development Principles

- Modular architecture
- One responsibility per module
- No magic numbers
- Configurable parameters
- Professional documentation
- Git version control

---

End of Version 1.0 Specification