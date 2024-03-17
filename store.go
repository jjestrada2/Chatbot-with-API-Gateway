package main

import "database/sql"

type Storage struct {
	db *sql.DB
}

type Store interface {
	// Users
	CreateUser(error)
	
}

func NewStore(db *sql.DB) *Storage{
	return &Storage{
		db:db,
	}
}

func (s *Storage) CreateUser() error{
	return nil
}