VERSION := "0.0.0.1"

build:
	docker build -t ghcr.io/sol-eng/demo-landing-site:{{VERSION}} .

