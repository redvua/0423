#!/bin/bash
usd=$(cat priv.json | jq '.[]|select(.ccy=="USD")|.sale')
sale=${usd:1:-1}
echo "scale=2; ($1 * $sale) /1 " | bc
