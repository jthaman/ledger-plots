#!/bin/bash

../ledger-plots -q "assets ;; income" -f "cumsum :: function(x) {i<-1:length(x); predict(lm(cumsum(x)~i))} ;; function(x) cumsum(-x)" --ledger-options='-f assets.ledger' -o assets.pdf

../ledger-plots -q "food bath" -f "weekly :: function(x) {monthly(x)/4}" --ledger-options='-f food.ledger' -o food.pdf

../ledger-plots -q "food bath" -f "monthly.price" --ledger-options='-f food.ledger -H -X EUR' --type "price" -o food-prices.pdf

../ledger-plots -q "food bath" -f "weekly" --ledger-options='-f food.ledger -H -X EUR' --type "volume" -o food-volumes.pdf

