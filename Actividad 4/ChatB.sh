while true; do
  echo "Tu mensaje: "
  read message
  echo "$message" > pipe1
  read response < pipe2
  echo "$response"
done
