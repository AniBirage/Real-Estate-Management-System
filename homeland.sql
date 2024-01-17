-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 08:07 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeland`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(2, 'AB', 'admin1@gmail.com', '$2y$10$EPpRLYpz/oG4GriYI7cRYOdq0toDLYsWN3PjIGogFG2UaSrdxA9Ee', '2023-09-15 11:21:15'),
(3, 'AM', 'admin2@gmail.com', '$2y$10$8MrJsuOgnj7QP0e8EKmoKusfUiIb68/.stAsdaF6TSycaPj8ehqwq', '2023-09-28 13:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Bungalow', '2023-08-18 04:04:44'),
(2, 'Apartment', '2023-08-18 04:04:44'),
(3, 'Commercial-Building', '2023-08-18 04:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `favs`
--

CREATE TABLE `favs` (
  `id` int(10) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favs`
--

INSERT INTO `favs` (`id`, `prop_id`, `user_id`, `created_at`) VALUES
(12, 12, 4, '2023-09-29 13:46:31'),
(13, 20, 5, '2023-09-29 13:47:53'),
(14, 21, 5, '2023-09-29 14:09:02'),
(15, 22, 4, '2023-10-13 05:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `props`
--

CREATE TABLE `props` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `beds` varchar(200) NOT NULL,
  `baths` varchar(200) NOT NULL,
  `sq_ft` varchar(30) NOT NULL,
  `home_type` varchar(200) NOT NULL,
  `year_built` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `price_sqft` int(30) NOT NULL,
  `description` text NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `props`
--

INSERT INTO `props` (`id`, `name`, `location`, `image`, `price`, `beds`, `baths`, `sq_ft`, `home_type`, `year_built`, `type`, `price_sqft`, `description`, `admin_name`, `created_at`) VALUES
(12, '3186 Thompson Cove', 'Aditya Garden City, Warje, Pune, Maharashtra 411058', '_a7add15d-5326-41aa-a6e7-97091d35f43f.jpg', '11,00,000', '5', '3', '4763', 'Bungalow', '2021', 'Sale', 230, 'Nestled in the heart of Pune, Maharashtra, \"3186 Thompson Cove\" is a timeless masterpiece that seamlessly blends classic architectural elegance with a plethora of modern amenities. Located in the prestigious Warje neighborhood, this enchanting bungalow stands as a tranquil oasis amidst the vibrant energy of the city.', 'AB', '2023-09-22 03:49:12'),
(16, '85389 Hipolito Prairie', 'Hiranandani Gardens, Powai, Mumbai, Maharashtra 400076', '_5d19e695-5718-4c98-95dc-2907f1b20da3.jpg', '5,00,000', '4', '3', '2000', 'Apartment', '2019', 'Sale', 250, '\"85389 Hipolito Prairie\" is an elegant apartment complex situated in the upscale neighborhood of Powai, in the bustling metropolis of Mumbai. Nestled amidst the lush greenery of Powai Lake and the Powai Hills, it offers a serene urban escape while remaining well-connected to the city\'s amenities.', 'AB', '2023-09-27 04:31:50'),
(20, '023 Techplaza Parkview', 'Hosur Rd, Electronics City Phase 1, Electronic City, Bengaluru, Karnataka 560100', '_8007b0b2-4057-4b95-b376-f078bc98dda0.jpg', '20,00,000', 'N/A', 'N/A', '2710', 'Commercial-Building', '2015', 'Sale', 738, 'Nestled amidst the vibrant tech hub of Electronic City Phase 1 in Bangalore, \"023 TechPlaza Parkview\" stands as a testament to modern architecture and innovation. Its sleek, glass façade gleams under the South Indian sun, reflecting the dynamic energy of the city\'s tech-savvy workforce.', 'AB', '2023-09-27 19:04:42'),
(21, '521 Hyatt Avenue', 'Shaikpet Rd, Jubilee Hills, Hyderabad, Telangana 500033', '_1c562651-a43d-4ae5-9157-aecd39cbb95b.jpg', '3,10,000', '5', '4', '5500', 'Bungalow', '2022', 'Rent', 56, 'Nestled in the upscale neighborhood of Jubilee Hills in Hyderabad, \"521 Hyatt Avenue\" presents a charming and luxurious bungalow that exudes elegance and comfort. This spacious single-story residence offers a serene escape from the hustle and bustle of city life.', 'AM', '2023-09-29 03:16:33'),
(22, '789 Commerce Square', 'Industrial Area, Okhla Phase III, Okhla Industrial Estate, New Delhi, Delhi 110020', '_e9c18478-bdad-411a-b919-f5a5c9e2712e.jpg', '5,40,000', 'N/A', 'N/A', '4500', 'Commercial-Building', '2018', 'Rent', 120, 'Nestled in the heart of Okhla Phase 3, \"789 Commerce Square\" stands as a symbol of innovation and connectivity. With its sleek glass façade and state-of-the-art design, it exudes a contemporary and professional atmosphere. This building boasts spacious, well-lit office spaces equipped with cutting-edge technology, making it an ideal hub for startups, tech firms, and creative enterprises.', 'AM', '2023-09-29 13:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `related_images`
--

CREATE TABLE `related_images` (
  `id` int(10) NOT NULL,
  `image` varchar(200) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `related_images`
--

INSERT INTO `related_images` (`id`, `image`, `prop_id`, `created_at`) VALUES
(41, '_6c504520-0ac2-4269-90d2-a3a49cbf127c-1695354552.jpg', 12, '2023-09-22 03:49:12'),
(42, '_5dc60f66-1a0f-485c-9802-4fcd5ade75ea-1695354552.jpg', 12, '2023-09-22 03:49:12'),
(43, '_9ac5404e-ae03-4f11-a24e-74383ef0ce0e-1695354552.jpg', 12, '2023-09-22 03:49:12'),
(44, '_f939d076-7ef5-4b4f-b5fb-0064c7a566ea-1695354552.jpg', 12, '2023-09-22 03:49:12'),
(54, '_9e155aad-9f4e-433e-9291-87ae4915174b-1695326272-1695789110.jpg', 16, '2023-09-27 04:31:50'),
(55, '_be4cc534-5a2e-4a17-ac6b-54fbce270719-1695326272-1695789110.jpg', 16, '2023-09-27 04:31:50'),
(56, '_e78c6663-f3eb-4d72-9ec7-9b1223889177-1695326272-1695789110.jpg', 16, '2023-09-27 04:31:50'),
(57, '_f58973c0-e5e3-48ef-a232-e19b3029d251-1695326272-1695789110.jpg', 16, '2023-09-27 04:31:50'),
(70, '_a74e4aa1-a429-40d1-9866-d7f7040b95e8-1695841482.jpg', 20, '2023-09-27 19:04:42'),
(71, '_b85db359-05c0-4f4b-8b13-ba02c6e14feb-1695841482.jpg', 20, '2023-09-27 19:04:42'),
(72, '_e6d9c875-77ba-4049-a447-e55b7836267b-1695841482.jpg', 20, '2023-09-27 19:04:42'),
(73, '_764ebaa5-11c1-4255-8459-057ceda83d05-1695841482.jpg', 20, '2023-09-27 19:04:42'),
(74, '_f95c2480-eac5-405a-9089-4364ac843492-1695957393.jpg', 21, '2023-09-29 03:16:33'),
(75, '_19dd5045-a0ec-4864-b1c0-60b2de12fdc8-1695957393.jpg', 21, '2023-09-29 03:16:33'),
(76, '_9f74ba2c-0a36-43d0-a697-e93adbce1816-1695957393.jpg', 21, '2023-09-29 03:16:33'),
(77, '_2f99e174-5a66-4541-b329-ffa62141cab3-1695957393.jpg', 21, '2023-09-29 03:16:33'),
(78, '_15c409d2-7419-450e-aa80-5db25988b00e-1695992617.jpg', 22, '2023-09-29 13:03:37'),
(79, '_c1841518-1b99-4c3c-96f9-39389ff15954-1695992617.jpg', 22, '2023-09-29 13:03:37'),
(80, '_3cd69ce9-9984-48b5-a3ae-e85b64e334c0-1695992617.jpg', 22, '2023-09-29 13:03:37'),
(81, '_b497d301-4b10-4f39-81f7-b8f7f36adb2d-1695992617.jpg', 22, '2023-09-29 13:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` int(40) NOT NULL,
  `prop_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `author` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `name`, `email`, `phone`, `prop_id`, `user_id`, `author`, `created_at`) VALUES
(8, 'Aniruddha', 'ab@gmail.com', 123456789, 22, 4, 'AM', '2023-09-29 13:18:34'),
(13, 'Aditya', 'am@gmail.com', 987654321, 16, 5, 'AB', '2023-09-29 14:03:00'),
(14, 'A', 'a@gmail.com', 123456789, 16, 4, 'AB', '2023-10-13 05:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `created_at`) VALUES
(4, 'ANI', 'ani@gmail.com', '$2y$10$EPpRLYpz/oG4GriYI7cRYOdq0toDLYsWN3PjIGogFG2UaSrdxA9Ee', '2023-09-29 13:08:40'),
(5, 'ADI', 'adi@gmail.com', '$2y$10$8MrJsuOgnj7QP0e8EKmoKusfUiIb68/.stAsdaF6TSycaPj8ehqwq', '2023-09-29 13:08:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favs`
--
ALTER TABLE `favs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `props`
--
ALTER TABLE `props`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_images`
--
ALTER TABLE `related_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `favs`
--
ALTER TABLE `favs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `props`
--
ALTER TABLE `props`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `related_images`
--
ALTER TABLE `related_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
