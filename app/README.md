# Tiny App For Kubernetes and Ingress Testing

This directory contains a very simple app that puts up an nginx web server with a custom
index page. If the ingress nginx is correctly set up, you should see a fancy web page
(based off a Bootstrap 5.x demo page).  

## To Run the App

From inside of this directory, just run

```bash
kubectl apply -f .
```

