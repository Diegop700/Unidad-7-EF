
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `start_date` date NOT NULL,
  `allDay` tinyint(1) NOT NULL,
  `start_hour` time DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `end_hour` time DEFAULT NULL,
  `IdUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IdUser` (`IdUser`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--

--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`IdUser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
