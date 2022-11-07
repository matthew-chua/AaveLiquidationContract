#!/bin/bash
docker container prune --force
docker image rm defi-mooc-lab2
docker build -t defi-mooc-lab2 .
docker run -e ALCHE_API="https://eth-mainnet.g.alchemy.com/v2/L-Mpq62tHJE_M_tNfYswUMbPjTORGAaE" -it defi-mooc-lab2 npm test