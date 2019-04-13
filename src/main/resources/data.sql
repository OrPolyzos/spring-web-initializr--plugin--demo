-- LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (id, first_name, last_name, address, email, password)
VALUES
(1, 'John', 'Doe', 'N/A', 'john@doe.com', 'j0hnd0e'),
(2, 'Jane', 'Doe', 'N/A', 'jane@doe.com', 'j4hnd0e');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
-- UNLOCK TABLES;