#!/bin/bash
echo "Combining CSS files..."

echo "/* Built on $(date) */" > style.css
echo "" >> style.css
echo "/* General Styles */" >> style.css
cat general.css >> style.css
echo "" >> style.css
echo "/* Components Styles */" >> style.css
cat components.css >> style.css
echo "" >> style.css

echo -e "\033[32mCSS files combined successfully!\033[0m"