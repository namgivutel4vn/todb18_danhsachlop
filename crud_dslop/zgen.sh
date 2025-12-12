#!/bin/sh

SRC="dslop.html"
TPL="dslop-w-table.template.html"
OUT="dslop-w-table.html"

# temp files
PRE_DATA=$(mktemp)
HEAD=$(mktemp)
TAIL=$(mktemp)
OUTTMP=$(mktemp)

# 1) extract lines inside <pre>...</pre>, drop the <pre> tags and the header line
sed -n '/<pre/,/<\/pre>/p' "$SRC" | sed '1d;$d' | sed '1d' > "$PRE_DATA"
# now $PRE_DATA contains CSV data lines (without header)

# 2) split template into head (before </table>) and tail (after </table>)
# head: everything up to but NOT including the first </table>
sed '/<\/table>/,$d' "$TPL" > "$HEAD"
# tail: everything after the first </table> (if any)
sed '1,/<\/table>/d' "$TPL" > "$TAIL"

# 3) start building output: head part
cat "$HEAD" > "$OUTTMP"

# 4) append rows (convert CSV -> <tr>...</tr>)
while IFS= read -r line; do
    # skip empty lines
    [ -z "$line" ] && continue

    # trim leading/trailing whitespace
    clean=$(echo "$line" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

    # split by first,second,third comma (allow spaces after comma)
    hoten=$(printf "%s" "$clean" | cut -d',' -f1 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    quancu=$(printf "%s" "$clean" | cut -d',' -f2 | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')
    phuongmoi=$(printf "%s" "$clean" | cut -d',' -f3- | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

    printf "  <tr><td>%s</td><td>%s</td><td>%s</td></tr>\n" "$hoten" "$quancu" "$phuongmoi" >> "$OUTTMP"
done < "$PRE_DATA"

# 5) add a single closing </table> (guaranteed exactly one)
echo "</table>" >> "$OUTTMP"

# 6) append the tail (content after the original </table>), if any
cat "$TAIL" >> "$OUTTMP"

# 7) move to final output
mv "$OUTTMP" "$OUT"

# cleanup
rm -f "$PRE_DATA" "$HEAD" "$TAIL"

echo "Generated $OUT"
