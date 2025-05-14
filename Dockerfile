FROM python:3.10-slim

WORKDIR /flucki

COPY requirement.txt .
RUN pip install --upgrade pip
RUN pip install -r requirement.txt

COPY . .

EXPOSE 5002

CMD ["python", "app.py"]



# in terminal write command



# docker build -t ml_model_app .

# docker run -p 5001:5001 ml_model_app

# for prediction write

# curl -X POST http://127.0.0.1:5001/predict -H "Content-Type:  application/json" -d '{"features":[8.3252,41,6.984,1.023,322,2.555,37.88,-122.23]}'
#predcition might came 3.595

# now deployemnt on mini cube kubernetes

#mini kube start

#eval(minikube docker-env)

#kubectl apply -f deployement.yaml
#kubectl apply -f service.yaml

#for external use ip address 
#minikube serivce ml-model-service --url
