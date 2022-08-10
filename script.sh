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

echo '\n\n Creating Chapolin'
CREATE=curl --silent -X POST \
  --data-binary '{"name": "Chapolin", "age": "50", "power": "Super Strength"}' \
  localhost:3000/heroes

echo $CREATE 

ID=$(echo $CREATE | jq.id)

echo '\n\n requesting chapolin'
curl localhost:3000/heroes/$id