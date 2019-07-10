echo "start"
docker-compose up -d --build

read -p "Press enter to run test"
docker-compose exec -T php phpunit /var/www/samplephpwebsite/PHPUnit.php

read -p "Press enter to shut down containers"
docker-compose down
