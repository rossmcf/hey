.DEFAULT_GOAL: build

build: 
	env GOOS=linux go build -o hey_linux
	env GOOS=darwin go build -o hey_darwin

