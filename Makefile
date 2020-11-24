docker-dev:
	docker build -t slackcicd:v0.1.0-dev -f build/Dockerfile.dev .
docker-prod:
	docker build -t slackcicd:v0.1.0-prod -f build/Dockerfile.prod .
run-dev:
	docker run -p 3000:3000 -e SLACK_SIGNING_SECRET=4adcdd89716331d1c8f30520b11594ad -e SLACK_TOKEN=xoxb-1494779483671-1521127739027-VzAqEbgdXsQ6aAheolDu4c05 slackcicd:v0.1.0-dev
run-prod:
	docker run -p 3000:3000 -e SLACK_SIGNING_SECRET=4adcdd89716331d1c8f30520b11594ad -e SLACK_TOKEN=xoxb-1494779483671-1521127739027-VzAqEbgdXsQ6aAheolDu4c05 slackcicd:v0.1.0-prod
