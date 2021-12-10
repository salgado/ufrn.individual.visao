a=1
for i in *.jpg; do
  if (( a > 22 )); then
    new=$(printf "f1%04d.jpg" "$a") #04 pad to length of 4
    mv -i -- "$i" "$new"
    echo "maior" + $i
  else
    new=$(printf "f2%04d.jpg" "$a") #04 pad to length of 4
    mv -i -- "$i" "$new"
    echo "menor" + $i
  fi
  let a=a+1
done