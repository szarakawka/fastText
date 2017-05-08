mark=ZZZZZZZZZZZZZZZZZZZZ

echo "Deleting punctuation, except for __"
sed "s/__/$mark/g; s/[[:punct:]]//g; s/$mark/__/g" < $1 | tr "[:upper:]" "[:lower:]" > $1.preprocessed

