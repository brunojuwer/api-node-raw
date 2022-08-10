echo '\n\n requesting all heroes'
curl localhost:3000/heroes

echo '\n\n requesting Xuxa'
curl  localhost:3000/heroes/1

echo '\n\n requesting Bruno'
curl  localhost:3000/heroes/2

echo '\n\n requesting with wrong body'
curl --silent -X POST \
  --data-binary '{"invalid": "data"}' \
  localhost:3000/heroes