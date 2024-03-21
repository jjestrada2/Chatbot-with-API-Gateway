package main

import (
	"encoding/json"
	"errors"
	"io"
	"net/http"

	"github.com/gorilla/mux"
)

var errUserAnswerRequired = errors.New("user id is required")

type QuestionsService struct {
	store Store
}

func NewQuestionsService(s Store) *QuestionsService {
	return &QuestionsService{store: s}
}

func (s *QuestionsService) RegisterRoutes(r *mux.Router) {
	r.HandleFunc("/question", s.handleQuestion).Methods("POST")
}

func (s *QuestionsService) handleQuestion(w http.ResponseWriter, r *http.Request) {
	body, err := io.ReadAll(r.Body)
	if err != nil {
		http.Error(w, "Error reading request body", http.StatusBadRequest)
		return
	}

	defer r.Body.Close()
	var question *Question
	err = json.Unmarshal(body, &question)
	if err != nil {
		WriteJSON(w, http.StatusBadRequest, ErrorResponse{Error: "Invalid request payload"})
		return
	}
	if err := validateQuestionPayload(question); err != nil {
		WriteJSON(w, http.StatusBadRequest, ErrorResponse{Error: err.Error()})
		return
	}

	t, err := s.store.CreateQuestion(question)
	if err != nil {
		WriteJSON(w, http.StatusInternalServerError, ErrorResponse{Error: "Error creating question"})
		return
	}

	WriteJSON(w, http.StatusCreated, t)

}

func validateQuestionPayload(question *Question) error {
	if question.Name == "" {
		return errNameRequired
	}

	if question.ProjectID == 0 {
		return errProjectIDRequired
	}

	if question.Answer == "" {
		return errUserAnswerRequired
	}

	return nil
}
