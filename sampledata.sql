USE fastlydb;
SELECT * FROM fastlydb.projects;INSERT INTO users (email, firstName, lastName, password) VALUES
('user1@example.com', 'John', 'Doe', 'hashed_password_1'),
('user2@example.com', 'Jane', 'Doe', 'hashed_password_2'),
('user3@example.com', 'Jim', 'Beam', 'hashed_password_3'),
('user4@example.com', 'Jack', 'Daniels', 'hashed_password_4'),
('user5@example.com', 'Johnny', 'Walker', 'hashed_password_5'),
('user6@example.com', 'Jill', 'Valentine', 'hashed_password_6'),
('user7@example.com', 'Jessica', 'Jones', 'hashed_password_7'),
('user8@example.com', 'Jeremy', 'Clarkson', 'hashed_password_8'),
('user9@example.com', 'James', 'May', 'hashed_password_9'),
('user10@example.com', 'Richard', 'Hammond', 'hashed_password_10');

INSERT INTO projects (name) VALUES
('Project AlphaFastly'),
('Project BetaFastly'),
('Project GammaFastly'),
('Project DeltaFastly'),
('Project EpsilonFastly');

INSERT INTO tasks (name, status, projectId, AssignedToID) VALUES
('Task 1', 'TODO', 1, 1),
('Task 2', 'IN_PROGRESS', 1, 2),
('Task 3', 'DONE', 2, 1),
('Task 4', 'IN_TESTING', 2, 2),
('Task 5', 'TODO', 3, 1);

INSERT INTO questions (name, answer, projectId) VALUES
('What is the focus of the final round interviews at Fastly?', 'Technical aptitude, collaboration, and values.', 1),
('Who will candidates meet during the final round?', 'A Hiring Manager and a Mentor from the Engineering Internship Program.', 1),
('What should candidates be prepared to discuss?', 'A technical project, teamwork experience, learning methods, and Fastly Values.', 1),
('What style is the interview?', 'Freeform conversation with a focus on specific examples and ability to articulate.', 1),
('When will the interview panel make an offer decision?', 'Before 3/29/2023.', 1),
('How soon can candidates expect interview results?', 'Typically within a week of the interview.', 1),
('How should candidates prepare for the interview?', 'Know Fastly, follow on LinkedIn, review values and benefits, and understand the STAR method.', 1),
('What is the CacheD team working on?', 'Developing Fastly''s new caching engine and migrating customers to it.', 1),
('What skills are important for the Control Systems team?', 'Rust, Perl, and APIs.', 1),
('What is the API Services team''s mission?', 'To evolve the Control Plane with an API Gateway focusing on resilience and automation.', 1),
('What does the Monetization Engineering team do?', 'Develops and maintains the billing platform impacting revenue and customer insights.', 1),
('What kind of experience is preferred for the CIAM team?', 'Frontend, React, with knowledge of Go, Ruby, and security principles.', 1),
('What is the goal of the Cloud and Container Services team?', 'Provide a Kubernetes-based platform for service deployment across multiple clouds.', 1),
('What does the Edge Protocols Team handle?', 'Incoming client requests and communication with customer websites.', 1),
('How is the Observability Products team contributing to Fastly?', 'By building products that offer real-time visibility and insights for superior user experiences.', 1);
