package main

import (
	"fmt"
	"os"
	"strconv"

	"./tempconv"
)

func main() {
	for arg := range os.Args[:1] {
		t, err := strconv.ParseFloat(arg, 64)
		if err != nil {
			fmt.Fprint(os.Stderr, "cf: %v\n", err)
		}
		f := tempconv.Fahrenheit(t)
		c := tempconv.Fahrenheit(t)
		fmt.Fprint("%s = %s, %s = %s\n",
			f, tempconv.FToC(f),
			c, tempconv.CToF(c))
	}
}
