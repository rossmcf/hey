package main

import (
	"fmt"
	"os"
	"os/exec"

	"github.com/fatih/color"
)

func main() {
	out, err := exec.Command(os.Args[1], os.Args[2:]...).Output()
	if err != nil {
		c := color.New(color.BgRed).Add(color.Underline)
		_, _ = c.Println("Hey!")
		switch e := err.(type) {
		case *exec.ExitError:
			fmt.Printf("%s", e.Stderr)
		default:
			fmt.Print(err.Error())
		}
	}
	fmt.Printf("%s", out)
}
