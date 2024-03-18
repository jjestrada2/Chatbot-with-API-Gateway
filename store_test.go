package main

// Mocks

type MockStore struct{}

func (s *MockStore) CreateUser() error {
	return nil
}

func (s *MockStore) CreateTask(t *Task) (*Task, error) {
	return &Task{}, nil
}
