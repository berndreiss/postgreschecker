## PostgresChecker
<p align="center">
  <a href="https://github.com/timescale/pgspot/blob/main/LICENSE"><img alt="License: PostgreSQL" src="https://img.shields.io/github/license/timescale/pgspot"></a>
</p>

Static C code checker for the postgres API.

PostgresChecker uses the Clang Static Analyzer framework to find use-after-free
and double-free bugs in code using the postgres API.

For more information see the bachelor thesis added as a pdf here.

## Installation

```
apt-get install llvm-19 llvm-19-dev clang-19 libclang-19-dev
git clone https://github.com/berndreiss/postgreschecker
cd postgreschecker
cmake -S . -B build
make -C build
sudo make -C build install
```

## Requirements

- clang
- llvm

### Usage

Verify:
```
clang-19 -cc1 -load /usr/local/lib/libPostgresChecker.so -analyzer checker-help | grep postgres
```

Usage:
```
clang-19 --analyze -Xclang -load -Xclang /usr/local/lib/libPostgresChecker.so -Xclang -analyzer-checker=postgres.PostgresChecker file.c
```
