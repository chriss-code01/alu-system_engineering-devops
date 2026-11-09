# Load Balancer

This project configures two Nginx web servers and an HAProxy load balancer.

## Servers

| Server | Hostname | IP Address | Role |
|---|---|---|---|
| Web 1 | 7260-web-01 | 35.178.147.142 | Nginx web server |
| Web 2 | 7260-web-02 | 16.60.178.95 | Nginx web server |
| Load Balancer | 7260-lb-01 | 3.10.117.122 | HAProxy load balancer |

## Scripts

### 0-custom_http_response_header

Installs Nginx and configures the `X-Served-By` HTTP response header. The header identifies the hostname of the server handling the request.

### 1-install_load_balancer

Installs and configures HAProxy to distribute HTTP requests between the two web servers using the round-robin algorithm.

## Verification

Check the response header:

```bash
curl -sI http://3.10.117.122 | grep -i X-Served-By
```
