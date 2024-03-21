# Project Name

## Introduction

Welcome to the Fastly RecruitRover API – a hiring assistant designed to transform the candidate experience at Fastly. This API is the central nerve system that orchestrates a seamless interaction between job applicants and the company’s recruitment process, ensuring efficiency and engagement every step of the way.

Built with Go, our API is composed of several microservices that handle distinct facets of the recruitment journey:

### User Service:
 Manages candidate profiles, from creating new applicant entries to authenticating users and maintaining their data throughout the hiring pipeline.
### Project Service:
 Oversees the structured timeline of the hiring process, defining clear stages and milestones for candidates to follow.
Task Service: Assigns actionable items to applicants, tracks progress, and provides updates, keeping everyone in sync with the interview schedule.
### Questions Service:
Acts as a responsive knowledge hub, instantly fielding questions from candidates about the hiring process and providing accurate, helpful information.

## Purpose

Fastly RecruitRover's API goal is to make conversations smoother between candidates going through the hiring process and our team.

## System Architecture
![System Architecture](img/3.png "System Architecture")



## Installation

Before you begin, make sure you have [Go](https://golang.org/dl/) installed on your system.

### Setting Up the Project

1. **Clone the repository**:
```bash
# Step 1: Clone the repository
git clone https://github.com/jjestrada2/FastlyAPI

# Step 2: Install dependencies

go mod download

# Step 3: Start the project

make run 

