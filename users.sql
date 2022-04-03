-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 08:06 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `two_factor_confirmed_at`) VALUES
(24, 'Ankur Saha', 'ankursaha007@yahoo.com', '2022-03-24 02:46:36', '$2y$10$Bji9XSOxkmXbci4UCxvQIeoE3w3j7c512PDH3Ok1K5RvWzcZC6uYG', NULL, NULL, '1pSLb9vn0aOGXVRIo441PrdZJNnOvLGw5aMYjoTFVn4IHzMUDveZVDnmtg3a', '2022-03-24 02:46:24', '2022-04-03 00:03:01', NULL),
(28, 'Riham Khan', 'riham@gmail.com', '2022-03-24 04:27:38', '$2y$10$UX1X3K7a6xdZZfANL2BTn.PfcRvuhst822Z3LJvtjNatt6E2mOmq2', 'eyJpdiI6IkVNOWFIajdoczZIcStDWHkzWnQxR2c9PSIsInZhbHVlIjoib1FXUGNxVnJSWENlbFgyU0JHc1hZZlRxQVo2ZXk0YkU3ejBybjdoRkNuYz0iLCJtYWMiOiJiYTQ4MDA5YjM1OGFjODI5MDAyNmU2NjNiNDAwOWQ2ODE0NzdkMzFjYjI3NmFhMTY0MTZhNjZjZWYzZDkzZjQ0IiwidGFnIjoiIn0=', 'eyJpdiI6IlRUK0N4eHZrYkk1dmNubEUrNnZlNXc9PSIsInZhbHVlIjoidlg4L3dWcXZ5ZVpIQ3h4MUlwQjVlOGxuZzdhRkptREtkVmY2WThBK3FKV3VLYWxtbWM4L0pVaHNuQWZ2VnJpcHpidzJNY25zQVdaK0pXOUZmZWZhaDhKZi9lbFRqK2k5NFQyK2g2RitnNjVEbzdCK1BNN01kR3RlQ0VheDNnZng1ZDFCcDhlcWJPMHNOU3pGUXhERC96Tk1UTDg0T3JWTms2M0EyVWFUa1U5M0hZc2V6QXY0TEMzL0xSTkRKVEgxMjNLdkJiVUsvRlRDa2dLWGtqb2NoZzB4VW5TVG1rbnBTaGpmMWpVMnBpVzFmSFdtV0IvYXA0aXRWWVJtbFQrdFlCd2FPWm5TeUc3aXRjdGhkQStlRVE9PSIsIm1hYyI6IjQxZDExNDc3ZjUwNTNjNTg2ZmM3NzUzZTU5YTllYmEzY2M3MzcyMThiZTA3ZTg5YjdiZTA4ZmVkYzJkZTdiYjMiLCJ0YWciOiIifQ==', NULL, '2022-03-24 04:25:17', '2022-04-02 23:36:01', NULL),
(29, 'abc', 'def@def.com', NULL, '$2y$10$pNTJTGP7JqfeK3IZtXjNM.wWCxAv8euJB1ia2S6FZ1FO34yhQzfhe', NULL, NULL, NULL, '2022-03-24 04:37:04', '2022-03-24 04:37:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
