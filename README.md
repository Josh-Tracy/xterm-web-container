# XTermjs Web Terminal Container

Dockerfile with the required packages, index.html, and server.js to run a simple node.js backend that allows the terminal of a remote host to be displayed in a web browser using XTermjs. 

## In progress

~~- Develop environment variables to pass into host, username, and password / key file fields in server.js~~ 

- Kubernetes deployment

## How To Use

- Build the docker image using `docker build -t xterm-web-app/nodejs`
- Create your `.env` file relative to the `docker-compose.yaml file` with and define `REMOTE_HOST` `REMOTE_USERNAME` and `REMOTE_PASSWORD`
- Run `docker-compose start`
- Access the web page at `http://localhost:8000`

