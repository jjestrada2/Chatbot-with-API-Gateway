package main

import (
	"net/http"

	"github.com/gorilla/mux"
)

type TasksService struct {
	store Store
}

func NewTasksService(s Store) *TasksService {
	return &TasksService{store: s}
}

func (s *TasksService) RegisterRoutes(r *mux.Router) {
	r.HandleFunc("/tasks", s.handleCreateTask, s.store).Methods("POST")
	r.HandleFunc("/tasks/{id}", s.handleGetTask, s.store).Methods("GET")
}

func (s *TasksService) handleCreateTask(w http.ResponseWriter, r *http.Request) {

}

func (s *TasksService) handleGetTask(w http.ResponseWriter, r *http.Request) {

}
