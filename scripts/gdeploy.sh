#!/bin/bash

# gdeploy.sh — Git autocommit + push for Termux Dev Protocol

echo ""
echo "==[ GDEPLOY ]=="
echo "Current Branch: $(git branch --show-current)"
echo ""

# Optional commit message from command line
if [ -z "$1" ]; then
  echo -n "Enter commit message: "
  read msg
else
  msg=$1
fi

# Run Git commands
git add .
git commit -m "$msg"
git push

echo ""
echo "✅ Deployed with message: $msg"
