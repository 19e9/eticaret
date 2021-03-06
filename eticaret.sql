-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220524.9aa859bdd3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 09:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eticaret`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(41, '4', '8', '2', '2022-05-24 10:56:28', '2022-05-24 10:56:48'),
(44, '1', '7', '1', '2022-05-24 20:00:40', '2022-05-24 20:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(9, 'Cep Telefon', 'cep-telefon', 'Ak??ll?? Telefonlar', 0, 1, '1653071148.png', 'dsdds', 'Ak??l?? Telefonlar', 'Cep,Telefon,iphone,samsung', '2022-05-20 15:25:48', '2022-05-21 15:31:04'),
(10, 'Laptopa&Tablet', 'laptop-tablet', 'Laptop ve Tablet', 0, 1, '1653072362.png', '1', 'Laptopa&Tablet', 'laptop,tablet', '2022-05-20 15:46:02', '2022-05-21 15:31:39'),
(11, 'Televizyon', 'televizyon', 'Televizyon', 0, 1, '1653456631.png', '1', 'Televizyon, LED , Full HD', 'Televizyon, Samsung , LG', '2022-05-20 17:16:23', '2022-05-25 02:30:31'),
(12, 'Oyun Konsollar??', 'Oyun-Konsollari', 'Oyun Konsollar??', 0, 1, '1653456436.png', 'Oyun Konsollar??', 'Oyun Konsollar??', 'Oyun Konsollar??', '2022-05-25 02:27:16', '2022-05-25 02:27:16'),
(13, 'Telefon Aksesuarlar??', 'Telefon-Aksesuarlari', 'Telefon Aksesuarlar??', 0, 1, '1653456545.png', 'Telefon Aksesuarlar??', 'Telefon Aksesuarlar??', 'Telefon Aksesuarlar??', '2022-05-25 02:29:05', '2022-05-25 02:29:05'),
(14, 'Ev Aletleri', 'ev-aletleri', 'Ev Aletleri', 0, 1, '1653456812.png', 'Ev Aletleri', 'Ev Aletleri', 'Ev Aletleri', '2022-05-25 02:33:32', '2022-05-25 02:33:32'),
(15, 'Beyaz E??ya', 'beyaz-esya', 'Beyaz E??ya', 0, 1, '1653456900.png', 'Beyaz E??ya', 'Beyaz E??ya', 'Beyaz E??ya', '2022-05-25 02:35:00', '2022-05-25 02:35:00'),
(16, 'Ki??isel Bak??m', 'kisisel-bak??m', 'Ki??isel Bak??m', 0, 1, '1653456993.png', 'Ki??isel Bak??m', 'Ki??isel Bak??m', 'Ki??isel Bak??m', '2022-05-25 02:36:33', '2022-05-25 02:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '11', '10', '8999', '2022-05-23 00:05:37', '2022-05-23 00:05:37'),
(2, '1', '11', '10', '8999', '2022-05-23 00:12:55', '2022-05-23 00:12:55'),
(3, '2', '11', '10', '8999', '2022-05-23 00:19:41', '2022-05-23 00:19:41'),
(4, '3', '11', '2', '8999', '2022-05-23 00:27:57', '2022-05-23 00:27:57'),
(5, '4', '6', '1', '3900', '2022-05-23 00:38:22', '2022-05-23 00:38:22'),
(6, '5', '11', '1', '8999', '2022-05-23 02:14:25', '2022-05-23 02:14:25'),
(7, '5', '12', '1', '11900', '2022-05-23 02:14:25', '2022-05-23 02:14:25'),
(8, '6', '8', '1', '18600', '2022-05-23 02:14:44', '2022-05-23 02:14:44'),
(9, '8', '11', '2', '8999', '2022-05-23 12:21:14', '2022-05-23 12:21:14'),
(10, '9', '8', '1', '18600', '2022-05-23 13:50:40', '2022-05-23 13:50:40'),
(11, '10', '11', '1', '8999', '2022-05-23 15:21:54', '2022-05-23 15:21:54'),
(12, '1', '12', '1', '11900', '2022-05-23 18:20:01', '2022-05-23 18:20:01'),
(13, '2', '8', '1', '18600', '2022-05-23 21:22:21', '2022-05-23 21:22:21'),
(14, '3', '7', '1', '260', '2022-05-23 21:25:07', '2022-05-23 21:25:07'),
(15, '4', '11', '2', '8999', '2022-05-23 22:16:59', '2022-05-23 22:16:59'),
(16, '6', '10', '1', '1160', '2022-05-24 00:13:03', '2022-05-24 00:13:03'),
(17, '6', '8', '1', '18600', '2022-05-24 00:13:03', '2022-05-24 00:13:03'),
(18, '7', '8', '1', '18600', '2022-05-24 19:41:41', '2022-05-24 19:41:41'),
(19, '8', '10', '1', '1160', '2022-05-24 20:00:29', '2022-05-24 20:00:29'),
(20, '9', '8', '1', '18600', '2022-05-25 04:42:08', '2022-05-25 04:42:08'),
(21, '10', '10', '1', '1160', '2022-05-25 10:39:28', '2022-05-25 10:39:28'),
(22, '11', '10', '1', '1160', '2022-05-25 10:40:31', '2022-05-25 10:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_13_202928_create_categories_table', 2),
(9, '2022_05_17_120718_create_products_table', 3),
(10, '2022_05_22_104952_create_carts_table', 4),
(11, '2022_05_23_014101_create_orders_table', 5),
(12, '2022_05_23_015617_create_items_table', 5),
(13, '2022_05_23_060430_create_ratings_table', 6),
(15, '2022_05_23_224608_create_reviews_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nhood` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addres1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addres2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `city`, `state`, `nhood`, `addres1`, `addres2`, `zipcode`, `status`, `message`, `tracking_no`, `total_price`, `created_at`, `updated_at`) VALUES
(1, '1', 'Khalid', 'Tariq', 'Khalid@gmail.com', '5525357716', 'Samsun', 'atakum', 'K??rfez', '5080 Sokak', '-', '123', 0, NULL, 'eticaret2025', '11900', '2022-05-23 18:20:01', '2022-05-23 18:20:01'),
(2, '2', 'fw', 'edwef', 'hasan@gmail.com', '55253577162', 'Se??iniz', 'fefer', 'frefer', 'frferferfr', 'referfe', '3242343', 0, NULL, 'eticaret8232', '18600', '2022-05-23 21:22:21', '2022-05-23 21:22:21'),
(3, '2', 'fw', 'edwef', 'hasan@gmail.com', '55253577162', 'Se??iniz', 'fefer', 'frefer', 'frferferfr', 'referfe', '3242343', 0, NULL, 'eticaret7563', '260', '2022-05-23 21:25:07', '2022-05-23 21:25:07'),
(4, '2', 'fw', 'edwef', 'hasan@gmail.com', '55253577162', 'Se??iniz', 'fefer', 'frefer', 'frferferfr', 'referfe', '3242343', 0, NULL, 'eticaret8389', '8999', '2022-05-23 22:16:59', '2022-05-23 22:16:59'),
(5, '1', 'Khalid', 'Tariq', 'Khalid@gmail.com', '5525357716', 'Se??iniz', 'atakum', 'K??rfez', '5080 Sokak', '-', '123', 0, NULL, 'eticaret2970', '0', '2022-05-24 00:11:58', '2022-05-24 00:11:58'),
(6, '1', 'Khalid', 'Tariq', 'Khalid@gmail.com', '5525357716', 'Se??iniz', 'atakum', 'K??rfez', '5080 Sokak', '-', '123', 0, NULL, 'eticaret7243', '19760', '2022-05-24 00:13:03', '2022-05-24 00:13:03'),
(7, '1', 'f', 'Tariq', 'Khalid@gmail.com', '5525357716', 'Se??iniz', 'atakum', 'K??rfez', '5080 Sokak', '-', '123', 0, NULL, 'eticaret8711', '18600', '2022-05-24 19:41:41', '2022-05-24 19:41:41'),
(8, '1', 'khalid', 'Tariq', 'Khalid@gmail.com', '5525357716', 'Samsun', 'atakum', 'K??rfez', '5080 Sokak', '-', '123', 0, NULL, 'eticaret4070', '1160', '2022-05-24 20:00:29', '2022-05-24 20:00:29'),
(9, '5', 'sami', 'al', 'sami@gmail.com', '52358234', '??stanbul', 'test', 'aa', 'twstt', 'as', '12123', 0, NULL, 'eticaret5332', '18600', '2022-05-25 04:42:08', '2022-05-25 04:42:08'),
(10, '5', 'sami', 'al', 'sami@gmail.com', '52358234', 'Se??iniz', 'test', 'aa', 'twstt', 'as', '12123', 0, NULL, 'eticaret8559', '1160', '2022-05-25 10:39:28', '2022-05-25 10:39:28'),
(11, '2', 'fw', 'edwef', 'hasan@gmail.com', '55253577162', 'Se??iniz', 'fefer', 'frefer', 'frferferfr', 'referfe', '3242343', 0, NULL, 'eticaret1948', '1160', '2022-05-25 10:40:31', '2022-05-25 10:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(6, 9, 'Samsung Galaxy M12 128GB Siyah Cep Telefonu (Samsung T??rkiye Garantili) SM-M127FLBITUR', 'Samsun-Galaxy-M12-128GB', 'Dahili Haf??za\r\n128 GB', 'Samsung Galaxy M12 128GB (??ift SIM) Siyah\r\nBu ??r??nden en fazla 1 adet sipari?? verilebilir. 1 adetin ??zerindeki sipari??leri Trendyol iptal etme hakk??n?? sakl?? tutar.\r\nKampanya fiyat??ndan sat??lmak ??zere 5 adetten az stok bulunmaktad??r.\r\n??ncelemi?? oldu??unuz ??r??n??n sat???? fiyat??n?? sat??c?? belirlemektedir.\r\nBu ??r??n indirim kampanyas??na dahil de??ildir.\r\nBir ??r??n, birden fazla sat??c?? taraf??ndan sat??labilir. Birden fazla sat??c?? taraf??ndan sat????a sunulan ??r??nlerin sat??c??lar?? ??r??n i??in belirledikleri fiyata, sat??c?? puanlar??na, teslimat stat??lerine, ??r??nlerdeki promosyonlara, kargonun bedava olup olmamas??na ve ??r??nlerin h??zl?? teslimat ile teslim edilip edilememesine, ??r??nlerin stok ve kategorileri bilgilerine g??re s??ralanmaktad??r.', '3960', '3900', '1653161664.jpg', '0', '18', 0, 1, 'samusg', 'samsung', 'samsung  galaxy m12 - 128gb', '2022-05-20 18:17:48', '2022-05-23 00:38:22'),
(7, 9, 'Samsung C&T Gt E 1205 Kameras??z Tu??lu Cep Telefonu E1205', 'samsung-ct-gt-e1205-kamerasiz', 'Tu??lu Cep Telefon', 'Samsung Power GT E 1205 Kameras??z Tu??lu Cep Telefonu Kutu i??eri??inde Telefon, batarya, ??arj cihaz?? kullan??m k??lavuzu bulunmaktad??r .\r\nS??f??r Jelatinli Ambalajl?? Kutu\r\nKameras??z tu??lu telefon\r\nAsker Telefonu\r\n??thalat???? garantilidir\r\nKay??tl?? Kutulu Fatural?? garantili ??r??n\r\nBu ??r??nden en fazla 10 adet sipari?? verilebilir. 10 adetin ??zerindeki sipari??leri Trendyol iptal etme hakk??n?? sakl?? tutar.', '240', '260', '1653081725.jpg', '7', '18', 0, 1, 'Kameras??z tu??lu telefon', 'tu??lu telefon', 'samsung, tu??lu telefon', '2022-05-20 18:22:05', '2022-05-23 21:25:07'),
(8, 9, 'Apple iPhone 13 128GB K??rm??z??', 'Apple-iPhone-13-128GB-Kirmizi', 'iPhone 13', 'Bu ??r??nden en fazla 1 adet sipari?? verilebilir. 1 adetin ??zerindeki sipari??leri Trendyol iptal etme hakk??n?? sakl?? tutar.\r\nKampanya fiyat??ndan sat??lmak ??zere 5 adetten az stok bulunmaktad??r.\r\n??ncelemi?? oldu??unuz ??r??n??n sat???? fiyat??n?? sat??c?? belirlemektedir.\r\nBu ??r??n indirim kampanyas??na dahil de??ildir.\r\nBir ??r??n, birden fazla sat??c?? taraf??ndan sat??labilir. Birden fazla sat??c?? taraf??ndan sat????a sunulan ??r??nlerin sat??c??lar?? ??r??n i??in belirledikleri fiyata, sat??c?? puanlar??na, teslimat stat??lerine, ??r??nlerdeki promosyonlara, kargonun bedava olup olmamas??na ve ??r??nlerin h??zl?? teslimat ile teslim edilip edilememesine, ??r??nlerin stok ve kategorileri bilgilerine g??re s??ralanmaktad??r.', '18000', '18600', '1653457917.png', '2', '1000', 0, 1, '??Phone 13 - 128 GB K??rm??z??', '??Phone', '??phone 13 128 GB K??rm??z?? Apple T??rkiye Garantili', '2022-05-20 18:45:53', '2022-05-25 04:42:08'),
(9, 9, 'Xiaomi Redmi 10 2022 4gb Ram / 64 Gb Mavi', 'Xiaomi-Redmi-10-2022-4gb-Ram-64-Gb-Mavi', 'Xiaomi redmi', 'Bu ??r??nden en fazla 1 adet sipari?? verilebilir. 1 adetin ??zerindeki sipari??leri Trendyol iptal etme hakk??n?? sakl?? tutar.\r\nKampanya fiyat??ndan sat??lmak ??zere 100 adetten fazla stok sunulmu??tur.\r\n??ncelemi?? oldu??unuz ??r??n??n sat???? fiyat??n?? sat??c?? belirlemektedir.\r\nBu ??r??n indirim kampanyas??na dahil de??ildir.\r\nBir ??r??n, birden fazla sat??c?? taraf??ndan sat??labilir. Birden fazla sat??c?? taraf??ndan sat????a sunulan ??r??nlerin sat??c??lar?? ??r??n i??in belirledikleri fiyata, sat??c?? puanlar??na, teslimat stat??lerine, ??r??nlerdeki promosyonlara, kargonun bedava olup olmamas??na ve ??r??nlerin h??zl?? teslimat ile teslim edilip edilememesine, ??r??nlerin stok ve kategorileri bilgilerine g??re s??ralanmaktad??r.', '4100', '4200', '1653083963.jpg', '8', '200', 1, 0, 'Xiaomi', 'Xiaomi, redmi', 'Xiaomi redmi - 10', '2022-05-20 18:59:23', '2022-05-21 12:10:39'),
(10, 10, 'Vorcom S7pro Beyaz 64 Gb Kapasite 7\" Tablet 4 Gb Ram', 'Vorcom-S7pro-Beyaz-64Gb-Kapasite7-Tablet-4Gb-Ram', 'Vorcom S7pro', 'Depolama - 64GB\r\nBatarya - Lityum(3000 MAH)\r\nAndroid S??r??m?? - Android 10\r\n??ekirdek Say??s?? - 8 ??ekirdek\r\nRam - 4 GB\r\nEkran Boyutu - 7 in??\r\nWifi - Var\r\nBluetooth - Var\r\nDil Se??ene??i - ??oklu Dil\r\nKulakl??k Giri??i - 3.5 mm Jack Giri??li\r\nSim Kart Yuvas?? - Yok\r\n????lemci - SpreadTrum Cortex TM A55 M', '1100', '1160', '1653084236.jpg', '6', '188', 0, 1, 'Vorcom S7pro Beyaz 64 Gb', 'Vorcom , tablet', 'Vorcom S7pro tablet', '2022-05-20 19:03:56', '2022-05-25 10:40:31'),
(11, 10, 'Huawei Matebook D15 AMD Ryzen 5 5500U 8GB 512GB SSD Windows 11 Home 15.6\" FHD Diz??st?? Bilgisayar', 'Huawei-Matebook-D15-AMD-Ryzen5-5500U-8GB-512GB-SSD', 'Huawei Matebook D15', 'Huawei T??rkiye Garantili\r\nBu ??r??nden en fazla 10 adet sipari?? verilebilir. 10 adetin ??zerindeki sipari??leri Trendyol iptal etme hakk??n?? sakl?? tutar.\r\nKampanya fiyat??ndan sat??lmak ??zere 5 adetten az stok bulunmaktad??r.\r\n??ncelemi?? oldu??unuz ??r??n??n sat???? fiyat??n?? sat??c?? belirlemektedir.\r\nBu ??r??n indirim kampanyas??na dahil de??ildir.\r\nBir ??r??n, birden fazla sat??c?? taraf??ndan sat??labilir. Birden fazla sat??c?? taraf??ndan sat????a sunulan ??r??nlerin sat??c??lar?? ??r??n i??in belirledikleri fiyata, sat??c?? puanlar??na, teslimat stat??lerine, ??r??nlerdeki promosyonlara, kargonun bedava olup olmamas??na ve ??r??nlerin h??zl?? teslimat ile teslim edilip edilememesine, ??r??nlerin stok ve kategorileri bilgilerine g??re s??ralanmaktad??r.', '8000', '8999', '1653458356.png', '0', '500', 0, 1, 'Huawei Matebook D15 512GB', 'Matebook Huawei', 'Huawei Matebook D15 512GB', '2022-05-20 19:07:35', '2022-05-25 02:59:16'),
(12, 11, 'LG 50NANO866PA 50\" 127 Ekran Uydu Al??c??l?? 4K Ultra HD Smart TV', 'LG-50NANO866PA-50-27-Ekran-Uydu-Alicili-4K-Ultra-HD-Smart-TV', 'LG 4K Ultra HD Smart Tv', 'NanoCell??? Teknolojisi ile 4K Ultra HD Ger??ek Renk Deneyimi\r\nM??kemmel Kontrast i??in 4.Nesil ??7 Ak??ll?? ????lemci ve Tam Dizi Yerel Karartma\r\nHDR, HFR ve VRR ile Etkileyici Sinema, Spor ve Oyun Deneyimi\r\nDolby Atmos & Dolby Vision IQ ile Etkileyici ??zleme Deneyimi\r\nGeni?? A???? ile Her A????dan ??zleme Deneyimi\r\nwebOS 6.0 Smart TV Deneyimi ve ThinQ Yapay Zeka Teknolojisi', '11000', '11900', '1653458259.png', '1', '2000', 0, 1, 'LG 50NANO866PA', 'LG', 'LG 50NANO866PA', '2022-05-20 19:46:37', '2022-05-25 02:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '1', '12', '3', '2022-05-23 18:20:14', '2022-05-23 19:24:13'),
(2, '2', '11', '2', '2022-05-23 22:21:22', '2022-05-24 08:07:24'),
(3, '2', '8', '5', '2022-05-23 23:53:51', '2022-05-23 23:53:51'),
(4, '1', '8', '2', '2022-05-24 00:13:37', '2022-05-24 00:13:37'),
(5, '5', '8', '5', '2022-05-25 04:42:53', '2022-05-25 04:42:53'),
(6, '5', '10', '3', '2022-05-25 10:39:37', '2022-05-25 10:39:45'),
(7, '2', '10', '5', '2022-05-25 10:40:41', '2022-05-25 10:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '2', '7', 'test test test test test test test test test test test test ', '2022-05-23 21:33:20', '2022-05-23 21:33:20'),
(2, '2', '11', 'test test test 13e3e3e2edewdwedwedwed efwefwew123221e1eeeeeeeeeeeeeeeeeee', '2022-05-23 22:17:26', '2022-05-24 08:07:46'),
(3, '2', '8', 'guzel 12312321213ooooooo', '2022-05-23 23:53:31', '2022-05-24 00:02:40'),
(4, '1', '8', 'test khalid 2', '2022-05-24 00:13:23', '2022-05-24 00:13:23'),
(5, '5', '8', 'guzel test 1', '2022-05-25 04:43:08', '2022-05-25 04:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nhood` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `city`, `state`, `nhood`, `addres1`, `addres2`, `zipcode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khalid', 'Khalid@gmail.com', NULL, '$2y$10$C2PRqMY0ZwSbGnoRC//tU.7OROU2Gjyfu5YZ1P2V7rU5Mf7jcN6mS', 'Tariq', '5525357716', 'Samsun', 'atakum', 'K??rfez', '5080 Sokak', '-', '123', 1, 'RDC1RspN5u9n2xiYJjoHafZpLbo92CutIB6lZhcqmxRMrcaECuEDkLUyAAQ8', '2022-05-12 18:15:38', '2022-05-23 18:20:01'),
(2, 'fw', 'hasan@gmail.com', NULL, '$2y$10$JsiA53hQiavjRM5cuMmCJOQ8W3Fu0km8JxAWfeC56CZrz9S2bB5jG', 'edwef', '55253577162', '??zmir', 'fefer', 'frefer', 'frferferfr', 'referfe', '3242343', 0, NULL, '2022-05-12 19:41:54', '2022-05-22 23:59:05'),
(4, 'emel soylu', 'emelkocak2011@gmail.com', NULL, '$2y$10$cI0r94348Lg9yraHqpim0eUs5WsQ8JsIjq7HZrrVXTZNiQJb7lcAa', '', '', '', '', '', '', '', '', 0, NULL, '2022-05-22 10:49:07', '2022-05-22 10:49:07'),
(5, 'sami', 'sami@gmail.com', NULL, '$2y$10$KkNK01M94fcsfIkydp2SCuCf6DRYMrMJm7sSTmERpDtlNNXVPEuTe', 'al', '52358234', '??stanbul', 'test', 'aa', 'twstt', 'as', '12123', 0, NULL, '2022-05-24 23:07:08', '2022-05-25 04:42:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



