#!/bin/bash

##new line
echo ""

echo "## Inputs: "
echo "Meal: \$$1"
echo "Tax Rate: $2%"
echo "Tip: $3%"

##new line
echo ""

echo "## Outputs"
tax=$(echo "scale=2; ($2/100)*$1" | bc)
tip=$(echo "scale=2; ($3/100)*($1+$tax)" | bc)
total=$(echo "scale=2; $1+$tip+$tax" | bc)
echo "Tax amount: \$$tax"
echo "Tip amount: \$$tip"
echo "Total: \$$total"

##newline
echo""
