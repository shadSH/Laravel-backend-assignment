-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 08:05 AM
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
-- Database: `laravel_backend_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `old_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_values`)),
  `new_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_values`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `action`, `type`, `user_id`, `old_values`, `new_values`, `created_at`, `updated_at`) VALUES
(1, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Titus Pacocha\",\"start_date\":\"2004-05-07\",\"salary\":47437.61,\"manager_id\":null,\"is_founder\":1,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":1}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(2, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Eldred Gottlieb\",\"start_date\":\"2023-10-04\",\"salary\":47182.8,\"manager_id\":null,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":2}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(3, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Janelle Altenwerth\",\"start_date\":\"1971-06-07\",\"salary\":71875.79,\"manager_id\":2,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":3}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(4, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Dr. Torrey Hand\",\"start_date\":\"1976-06-27\",\"salary\":63520.63,\"manager_id\":2,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":4}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(5, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Jacquelyn Wilderman\",\"start_date\":\"1988-08-13\",\"salary\":46674.39,\"manager_id\":2,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":5}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(6, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Mr. Chase Kshlerin\",\"start_date\":\"1970-04-23\",\"salary\":60175.56,\"manager_id\":2,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":6}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(7, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Miss Raegan Waelchi V\",\"start_date\":\"2008-12-01\",\"salary\":42371.03,\"manager_id\":2,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":7}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(8, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Jeramy Herzog\",\"start_date\":\"1989-08-29\",\"salary\":60036.53,\"manager_id\":2,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":8}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(9, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Christelle Gerlach\",\"start_date\":\"1989-05-31\",\"salary\":49551.38,\"manager_id\":2,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":9}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(10, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Herta Rempel\",\"start_date\":\"1986-07-31\",\"salary\":55191.86,\"manager_id\":2,\"is_founder\":0,\"updated_at\":\"2024-03-21 06:02:19\",\"created_at\":\"2024-03-21 06:02:19\",\"id\":10}', '2024-03-21 03:02:19', '2024-03-21 03:02:19'),
(11, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Lauretta Leffler\",\"start_date\":\"1972-12-04\",\"salary\":63791,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":11}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(12, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Verda Balistreri\",\"start_date\":\"1970-11-16\",\"salary\":54085,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":12}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(13, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Juston Kling\",\"start_date\":\"1996-11-14\",\"salary\":67650,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":13}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(14, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Prof. Rafael Ankunding\",\"start_date\":\"2015-05-07\",\"salary\":83560,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":14}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(15, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Mr. Hayden Lubowitz\",\"start_date\":\"2012-05-25\",\"salary\":67141,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":15}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(16, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Cecile Bayer\",\"start_date\":\"1989-08-15\",\"salary\":86296,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":16}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(17, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Deion Hodkiewicz\",\"start_date\":\"1973-01-27\",\"salary\":65798,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":17}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(18, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Mr. Jett Schinner\",\"start_date\":\"2001-10-06\",\"salary\":76722,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":18}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(19, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Joshuah Ziemann\",\"start_date\":\"1996-08-29\",\"salary\":75474,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":19}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(20, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Dorothea Lind IV\",\"start_date\":\"1981-04-17\",\"salary\":71883,\"manager_id\":null,\"is_founder\":false,\"updated_at\":\"2024-03-21 06:35:51\",\"created_at\":\"2024-03-21 06:35:51\",\"id\":20}', '2024-03-21 03:35:51', '2024-03-21 03:35:51'),
(21, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:37\",\"created_at\":\"2024-03-21 06:59:37\",\"id\":21}', '2024-03-21 03:59:37', '2024-03-21 03:59:37'),
(22, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:40\",\"created_at\":\"2024-03-21 06:59:40\",\"id\":22}', '2024-03-21 03:59:40', '2024-03-21 03:59:40'),
(23, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:42\",\"created_at\":\"2024-03-21 06:59:42\",\"id\":23}', '2024-03-21 03:59:42', '2024-03-21 03:59:42'),
(24, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:43\",\"created_at\":\"2024-03-21 06:59:43\",\"id\":24}', '2024-03-21 03:59:43', '2024-03-21 03:59:43'),
(25, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:44\",\"created_at\":\"2024-03-21 06:59:44\",\"id\":25}', '2024-03-21 03:59:44', '2024-03-21 03:59:44'),
(26, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:46\",\"created_at\":\"2024-03-21 06:59:46\",\"id\":26}', '2024-03-21 03:59:46', '2024-03-21 03:59:46'),
(27, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:47\",\"created_at\":\"2024-03-21 06:59:47\",\"id\":27}', '2024-03-21 03:59:47', '2024-03-21 03:59:47'),
(28, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:48\",\"created_at\":\"2024-03-21 06:59:48\",\"id\":28}', '2024-03-21 03:59:48', '2024-03-21 03:59:48'),
(29, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:49\",\"created_at\":\"2024-03-21 06:59:49\",\"id\":29}', '2024-03-21 03:59:49', '2024-03-21 03:59:49'),
(30, 'update', 'App\\Models\\Employee', NULL, '[]', '{\"name\":\"Hello\",\"start_date\":\"2024-02-02\",\"salary\":\"12345678\",\"manager_id\":null,\"is_founder\":\"0\",\"updated_at\":\"2024-03-21 06:59:51\",\"created_at\":\"2024-03-21 06:59:51\",\"id\":30}', '2024-03-21 03:59:51', '2024-03-21 03:59:51');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date DEFAULT NULL,
  `salary` decimal(8,2) DEFAULT NULL,
  `manager_id` int(10) UNSIGNED DEFAULT NULL,
  `is_founder` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `start_date`, `salary`, `manager_id`, `is_founder`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Titus Pacocha', '2004-05-07', 47437.61, NULL, 1, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(2, 'Eldred Gottlieb', '2023-10-04', 47182.80, NULL, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(3, 'Janelle Altenwerth', '1971-06-07', 71875.79, 2, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(4, 'Dr. Torrey Hand', '1976-06-27', 63520.63, 2, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(5, 'Jacquelyn Wilderman', '1988-08-13', 46674.39, 2, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(6, 'Mr. Chase Kshlerin', '1970-04-23', 60175.56, 2, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(7, 'Miss Raegan Waelchi V', '2008-12-01', 42371.03, 2, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(8, 'Jeramy Herzog', '1989-08-29', 60036.53, 2, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(9, 'Christelle Gerlach', '1989-05-31', 49551.38, 2, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(10, 'Herta Rempel', '1986-07-31', 55191.86, 2, 0, '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(11, 'Lauretta Leffler', '1972-12-04', 63791.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(12, 'Verda Balistreri', '1970-11-16', 54085.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(13, 'Juston Kling', '1996-11-14', 67650.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(14, 'Prof. Rafael Ankunding', '2015-05-07', 83560.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(15, 'Mr. Hayden Lubowitz', '2012-05-25', 67141.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(16, 'Cecile Bayer', '1989-08-15', 86296.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(17, 'Deion Hodkiewicz', '1973-01-27', 65798.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(18, 'Mr. Jett Schinner', '2001-10-06', 76722.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(19, 'Joshuah Ziemann', '1996-08-29', 75474.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(20, 'Dorothea Lind IV', '1981-04-17', 71883.00, NULL, 0, '2024-03-21 03:35:51', '2024-03-21 03:35:51', NULL),
(21, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:37', '2024-03-21 03:59:37', NULL),
(22, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:40', '2024-03-21 03:59:40', NULL),
(23, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:42', '2024-03-21 03:59:42', NULL),
(24, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:43', '2024-03-21 03:59:43', NULL),
(25, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:44', '2024-03-21 03:59:44', NULL),
(26, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:46', '2024-03-21 03:59:46', NULL),
(27, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:47', '2024-03-21 03:59:47', NULL),
(28, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:48', '2024-03-21 03:59:48', NULL),
(29, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:49', '2024-03-21 03:59:49', NULL),
(30, 'Hello', '2024-02-02', 999999.99, NULL, 0, '2024-03-21 03:59:51', '2024-03-21 03:59:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_jobs`
--

CREATE TABLE `employee_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_jobs`
--

INSERT INTO `employee_jobs` (`id`, `employee_id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 5, 'Legal Support Worker', 'Esse nam esse enim dolores accusamus praesentium odio.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(2, 3, 'Civil Engineering Technician', 'Et sit vitae at exercitationem quae.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(3, 8, 'MARCOM Director', 'Quia repellendus atque quia soluta fugiat deleniti.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(4, 3, 'Private Detective and Investigator', 'Qui optio voluptatem eaque voluptates ut rerum nesciunt.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(5, 1, 'Industrial Equipment Maintenance', 'Sed odio dolor est consequatur aut impedit et.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(6, 3, 'Boilermaker', 'Amet nesciunt fugiat ipsam totam fugiat.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(7, 10, 'Rotary Drill Operator', 'Impedit quisquam rerum ut quia velit.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(8, 10, 'Recreation and Fitness Studies Teacher', 'Maxime nemo corrupti consequatur repudiandae perspiciatis et quo natus.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(9, 2, 'Steel Worker', 'Aut voluptatem maxime nostrum in.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL),
(10, 3, 'Patrol Officer', 'Consequatur tempora culpa soluta culpa blanditiis.', '2024-03-21 03:02:19', '2024-03-21 03:02:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hipolito Schaden', 'admin@demo.com', '201-852-0118', '$2y$10$w0sEtSHNybF.3AfkiQF9juGK9oxQ5tqOVaWtkVXmXNkt56BNUDI3S', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_jobs`
--
ALTER TABLE `employee_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `employee_jobs`
--
ALTER TABLE `employee_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
