# docker-oraclize

[![Contains technical debt](https://forthebadge.com/images/badges/contains-technical-debt.svg)](https://forthebadge.com)

Docker image for [Oraclize Ethereum Bridge](https://github.com/oraclize/ethereum-bridge).

## Usage

```` sh
docker run --name oraclize \
    -d -p 8545:8545 \
    gulitsky/oraclize -a 49
````