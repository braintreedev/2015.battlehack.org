#!/bin/sh

find . -name "*.html" \
    -exec sed -i -e 's|<head>|<head>\n  <base href="http://braintreedev.github.io/2015.battlehack.org/">|' \
                 -e 's|/assets/|assets/|g' {} \;
find . \( -name "*.html" -o -name "*.css" \) \
    -exec sed -i -e 's|https://2015.battlehack.org/|http://braintreedev.github.io/2015.battlehack.org/|g' {} \;
