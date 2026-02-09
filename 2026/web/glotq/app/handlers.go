package main

import (
	"bytes"
	"encoding/json"
	"encoding/xml"
	"fmt"
	"io"
	"net/http"
	"os/exec"

	"gopkg.in/yaml.v3"
)

var allowedCommands = map[string]bool{
	"jq":  true,
	"yq":  true,
	"xq":  true,
	"man": true,
}

type Response struct {
	Success bool   `json:"success"`
	Output  string `json:"output"`
	Error   string `json:"error,omitempty"`
}

func respondJSON(w http.ResponseWriter, resp Response) {
	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(resp)
}

func respondError(w http.ResponseWriter, message string) {
	respondJSON(w, Response{Success: false, Error: message})
}

func respondSuccess(w http.ResponseWriter, output string) {
	respondJSON(w, Response{Success: true, Output: output})
}

func executeCommand(command string, args []string, body []byte) (string, error) {
	if !allowedCommands[command] {
		return "", fmt.Errorf("command not allowed: %s", command)
	}

	cmd := exec.Command(command, args...)
	cmd.Stdin = bytes.NewReader(body)

	output, err := cmd.CombinedOutput()
	if err != nil {
		if len(output) == 0 {
			return fmt.Sprintf("Command failed: %v", err), err
		}
		return string(output), err
	}
	return string(output), nil
}

func JSONHandler(w http.ResponseWriter, r *http.Request) {
	body, err := io.ReadAll(r.Body)
	if err != nil {
		respondError(w, "Failed to read request body")
		return
	}

	var payload JSONPayload
	if err := json.Unmarshal(body, &payload); err != nil {
		respondError(w, "Failed to parse JSON: "+err.Error())
		return
	}

	output, err := executeCommand(payload.Command, payload.Args, body)
	if err != nil {
		respondError(w, output)
		return
	}

	respondSuccess(w, output)
}

func YAMLHandler(w http.ResponseWriter, r *http.Request) {
	body, err := io.ReadAll(r.Body)
	if err != nil {
		respondError(w, "Failed to read request body")
		return
	}

	var payload YAMLPayload
	if err := yaml.Unmarshal(body, &payload); err != nil {
		respondError(w, "Failed to parse YAML: "+err.Error())
		return
	}

	output, err := executeCommand(payload.Command, payload.Args, body)
	if err != nil {
		respondError(w, output)
		return
	}

	respondSuccess(w, output)
}

func XMLHandler(w http.ResponseWriter, r *http.Request) {
	body, err := io.ReadAll(r.Body)
	if err != nil {
		respondError(w, "Failed to read request body")
		return
	}

	var payload XMLPayload
	if err := xml.Unmarshal(body, &payload); err != nil {
		respondError(w, "Failed to parse XML: "+err.Error())
		return
	}

	output, err := executeCommand(payload.Command, payload.Args.Args, body)
	if err != nil {
		respondError(w, output)
		return
	}

	respondSuccess(w, output)
}
