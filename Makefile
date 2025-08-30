.PHONY: cicd.build cicd.test.unit

cicd.build:
	docker buildx build \
		-t numstats-service \
		-f ./Dockerfile .

cicd.test.unit:
	tests/unit_test.sh
