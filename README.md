# python-with-mysql:  In this example we will run a simple python page which will just connect to a mySQL database and show values of ENV values on the front end - once connected to the database

## First Let's create image and run the container:
  ### Create Docker image 
  ```
  docker build -f Dockerfile -t vijvipin/python-with-mysql .
  
  ```
  ### Run Docker container 
  ```
  docker run -p 5001:5000 vijvipin/python-with-mysql
  ```
  ### Check the running container
  
  ```
  http://localhost:5001/
  ```
  ### Push the image to Docker Hub
  ```
  docker push vijvipin/python-with-mysql
  
  ```
  
## Let's run on Kubernetes:
#### Now that Python page is running but not connected to mySQL. Lets take first step to run on kubernetes and also connect to database: 
## Run mySQL on kubenetes:
```
kubectl apply -f .\mysql-pod-definition.yaml
```
## Check the container image which is created:
```
docker container ps
```

## Connect to mySQL 
```
docker exec -it 35e039fc8ffc  mysql -uroot -p

```
This will ask for password: Enter 'password' and now > mysql promt is shown, which means mySQL pod is now running on Kubenetes
