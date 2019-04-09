-- LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user`  VALUES
(1,'2','Some Address','0','0','admin@gmail.com','Orestes','Polyzos','admin123','Admin'),
(2,'4','Some Other Address','12345','1','johndoe@gmail.com','John','Doe','john','User'),
(3,'4','Some Other Address','12345','2','jane@gmail.com','Jane','Doe','jane','User');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
-- UNLOCK TABLES;