# Personal Finance Tracker (C)

A console-based personal finance tracker written in C99. Track accounts,
categories and transactions, import months of bank history from a CSV without
creating duplicates, and read your spending as ASCII charts — with no
dependencies beyond libc.

<!-- Replace with a real screenshot after Phase 4 -->
![Spending by category](docs/screenshots/spending-by-category.png)

## What it is

**One-sentence MVP:** I can add, edit and delete transactions; import a bank
CSV without creating duplicates; and see a monthly breakdown of my spending by
category.

Single-user, file-based, no network. Seven screens: accounts, categories,
transactions, CSV import, reports, settings.

## Build

Requires a C99 compiler and `make`.

```sh
git clone https://github.com/<YOUR-USERNAME>/finance-tracker-c.git
cd finance-tracker-c
make