# Hey!

`hey` is a poor implementation of a bad joke.

This was inspired by [Ernesto Jiménez](https://twitter.com/ernesto_jimenez). I attended one of his great Ultimate Go training sessions, and noticed that any time he described compiler warnings, he'd always start with "Hey…". I thought it might be nice if the go compiler actually did this.

In his honour, and to further my learning of Go, I wrote a little app that wraps any shell command, and prefixes error output with "Hey!". That's it.

## Installation
go install github.com/rossmcf/hey

## Usage
I've wrapped the go compiler with `hey` by setting up a zsh alias:

	alias go='hey go'

So now, instead of:

	> go build
	# gopl.io/ch1/echo1
	./main.go:19: undefined: foo

I get:

	> go build
	Hey!
	# gopl.io/ch1/echo1
	./main.go:19: undefined: foo
