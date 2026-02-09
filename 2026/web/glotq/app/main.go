package main

import (
	"log"
	"net/http"
)

func main() {
	mux := http.NewServeMux()

	fs := http.FileServer(http.Dir("./static"))
	mux.Handle("/", fs)

	mux.Handle("/json", SecurityMiddleware(http.HandlerFunc(JSONHandler)))
	mux.Handle("/yaml", SecurityMiddleware(http.HandlerFunc(YAMLHandler)))
	mux.Handle("/xml", SecurityMiddleware(http.HandlerFunc(XMLHandler)))

	log.Println("glotq server starting on :8080")
	log.Println("jq / yq / xq as a service!")
	log.Fatal(http.ListenAndServe(":8080", mux))
}
