# Universal EMA Transition EA

# EA Architecture

**Version:** 1.0

---

# Purpose

This document defines the complete architecture of the Universal EMA Transition Expert Advisor.

The objective is to ensure every component of the EA has a clearly defined responsibility before implementation begins.

This document serves as the technical blueprint for all future development.

---

# High Level Architecture

The EA consists of the following major modules:

1. Instrument Manager
2. Market Scanner
3. EMA Engine
4. Compression Engine
5. Trade Setup Engine
6. Entry Engine
7. Position Sizing Engine
8. Order Execution Engine
9. Trade Management Engine
10. Risk Engine
11. Session Manager
12. Logging Engine
13. Recovery Engine
14. Configuration Manager

Each module has a single responsibility.

---

# EA Startup Sequence

When the EA is attached to a chart:

Step 1
Load all user settings.

↓

Step 2
Load enabled instruments.

↓

Step 3
Initialize EMA calculations.

↓

Step 4
Initialize risk manager.

↓

Step 5
Load previous trade progression.

↓

Step 6
Verify broker settings.

↓

Step 7
Begin monitoring the market.

---

# Market Processing Loop

Every market tick:

↓

Update price

↓

Update EMA values

↓

Check compression

↓

Check transition

↓

Validate entry conditions

↓

Calculate position size

↓

Place order

↓

Manage existing trades

↓

Update logs

---

# Instrument Management

The EA supports multiple instruments simultaneously.

Initial supported instruments:

• BTC
• US500
• JP225
• Taiwan Index

The architecture allows additional instruments to be added without modifying the trading engine.

---

# Instrument Independence

Each instrument maintains its own:

• Consecutive loss count

• Position sizing progression

• Active trade state

• Trade history

No instrument shares progression with another.

---

# Risk Architecture

Risk is configurable.

Default risk:

4 USD

Future versions may increase risk without modifying source code.

Risk calculation is completely independent from stop loss buffer calculations.

---

# Stop Loss Architecture

Two stop losses exist internally.

1. Strategy Stop Loss

This is the actual stop loss defined by the strategy.

This stop loss determines:

• Risk
• Position size
• Trade validity

---

2. Broker Stop Loss

This stop loss is sent to MT5.

It includes the instrument spread buffer.

Example:

BTC

Strategy SL = 62600

Broker SL = 62570

Risk is calculated ONLY using 62600.

The extra 30 points exist solely to prevent spread stop-outs.

---

# Instrument Buffers

BTC

30 points

US500

2 points

JP225

10 points

Taiwan Index

10 points

These values must remain configurable.

---

# Trade Management

The EA monitors every open position.

Responsibilities include:

• Break-even (future)

• Partial exits (future)

• Manual strategy exit

• Stop loss validation

• State updates

---

# Position Sizing

Position sizing is calculated from:

Risk (USD)

Actual Strategy Stop Loss

Instrument specifications

Broker contract size

Spread buffers are NOT included in position sizing calculations.

---

# Logging

Every important action is logged.

Examples:

EA Started

Trade Detected

Trade Executed

Trade Closed

Risk Updated

Instrument Loaded

Errors

Recovery Events

---

# Recovery

If MT5 restarts:

The EA restores:

Open trades

Risk progression

Consecutive losses

Instrument state

Configuration

The EA must continue exactly where it stopped.

---

# Design Principles

The EA must remain:

Modular

Scalable

Maintainable

Testable

Broker independent

Instrument independent

Future proof

---

End of Version 1.0 Architecture