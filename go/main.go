package main

import (
	"fmt"
	"net/http"
	"time"
)

func main() {

	http.HandleFunc("/hello", func(writer http.ResponseWriter, request *http.Request) {

		s := fmt.Sprintf("%d", time.Now().Unix())
		writer.Write([]byte(s))

	})

	err := http.ListenAndServe(":8080", nil)
	if err != nil {
		panic(err)
	}
}
