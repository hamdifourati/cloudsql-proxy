# Cloud SQL Proxy
---

> Use Cloud SQL Proxy as a service.

## Start Cloud SQL Proxy
### Environment variables

* `GOOGLE_APPLICATION_CREDENTIALS`: Base64 of the google service account key used to connect to Google Cloud SQL instances
* `CONNECTION_NAME`: Instance to connect to, e.g: `my-awesome-project:zone:instance`

### Start the proxy

```
docker run -p 3306:3306 -e GOOGLE_APPLICATION_CREDENTIALS=<your-service-account-key-here> -e CONNECTION_NAME=<instance-to-connect-to> hamdifourati/cloudsql-proxy:latest
```
