package main

import (
	"fmt"

	"yaim/stage0/stage0"
)

func main() {
	// Get a greeting message and print it.
	message := stage0.Hello("Gladys")
	fmt.Println(message)
}
