**HOT TO INSTALL APP**
--
* *Copy ``.env`` environment config file and set all required settings in it:*

   cp .env.dist .env  
   
* *Create shared docker network in order to communicate with Server:*

        docker network create restapi_default
        
* *Start app and build required Docker containers:*

        docker-compose up -d
      
* *Install all composer dependencies:*

        docker exec -it restapi_server composer install
        
* *Run all required migrations:*

        docker exec -it restapi_server php artisan key:generate
            
* *Run all required migrations:*

        docker exec -it restapi_server php artisan migrate
            
App is available on ``8308`` port
--
    http://127.0.0.1:8308
    
##### ABOUT  [WEB REST API CLIENT](https://github.com/Maksim1990/REST_OAuth_API_Laravel_Client)
 Client will be available on ``8309`` port

    http://127.0.0.1:8309