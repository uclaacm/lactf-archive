package main

import (
	"bytes"
	"encoding/json"
	"encoding/xml"
	"io"
	"net/http"
	"strings"

	"gopkg.in/yaml.v3"
)

var endpointCommands = map[string]map[string]bool{
	"/json": {"jq": true, "man": true},
	"/yaml": {"yq": true, "man": true},
	"/xml":  {"xq": true, "man": true},
}

type JSONPayload struct {
	Command string   `json:"command"`
	Args    []string `json:"args"`
}

type YAMLPayload struct {
	Command string   `yaml:"command"`
	Args    []string `yaml:"args"`
}

type XMLPayload struct {
	XMLName xml.Name `xml:"request"`
	Command string   `xml:"command"`
	Args    XMLArgs  `xml:"args"`
}

type XMLArgs struct {
	Args []string `xml:"arg"`
}

func SecurityMiddleware(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.Method != http.MethodPost {
			http.Error(w, "Method not allowed", http.StatusMethodNotAllowed)
			return
		}

		body, err := io.ReadAll(r.Body)
		if err != nil {
			http.Error(w, "Failed to read request body", http.StatusBadRequest)
			return
		}

		r.Body = io.NopCloser(bytes.NewBuffer(body))

		contentType := r.Header.Get("Content-Type")

		var command string
		var args []string

		switch {
		case strings.Contains(contentType, "application/json"):
			var payload JSONPayload
			if err := json.Unmarshal(body, &payload); err != nil {
				http.Error(w, "Failed to parse JSON", http.StatusBadRequest)
				return
			}
			command = payload.Command
			args = payload.Args

		case strings.Contains(contentType, "application/yaml") ||
			strings.Contains(contentType, "text/yaml"):
			var payload YAMLPayload
			if err := yaml.Unmarshal(body, &payload); err != nil {
				http.Error(w, "Failed to parse YAML", http.StatusBadRequest)
				return
			}
			command = payload.Command
			args = payload.Args

		case strings.Contains(contentType, "application/xml") ||
			strings.Contains(contentType, "text/xml"):
			var payload XMLPayload
			if err := xml.Unmarshal(body, &payload); err != nil {
				http.Error(w, "Failed to parse XML", http.StatusBadRequest)
				return
			}
			command = payload.Command
			args = payload.Args.Args

		default:
			http.Error(w, "Unsupported Content-Type. Use application/json, application/yaml, or application/xml", http.StatusUnsupportedMediaType)
			return
		}

		allowedForEndpoint, exists := endpointCommands[r.URL.Path]
		if !exists {
			http.Error(w, "Unknown endpoint", http.StatusNotFound)
			return
		}

		if !allowedForEndpoint[command] {
			http.Error(w, "Command not allowed for this endpoint", http.StatusForbidden)
			return
		}

		if command == "man" {
			if len(args) != 1 {
				http.Error(w, "Man command requires exactly one argument", http.StatusForbidden)
				return
			}
			allowedManArgs := map[string]bool{"jq": true, "yq": true, "xq": true}
			if !allowedManArgs[args[0]] {
				http.Error(w, "Man command argument must be jq, yq, or xq", http.StatusForbidden)
				return
			}
		}

		next.ServeHTTP(w, r)
	})
}
