-- LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (id, first_name, last_name, email)
VALUES
(1, 'John', 'Doe', 'john@doe.com'),
(2, 'Jane', 'Doe', 'jane@doe.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
-- UNLOCK TABLES;