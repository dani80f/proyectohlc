-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-03-2025 a las 22:03:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `idCliente` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `jobs`
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
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(5, '2025_03_04_104845_create_producto_table', 2),
(6, '2025_03_05_193330_add_perfil_to_users', 3),
(8, '2025_03_05_204851_create_carrito_table', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `urlImagen` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `descripcion`, `precio`, `stock`, `urlImagen`, `created_at`, `updated_at`) VALUES
(7, 'Procesador AMD Ryzen 7 9800X3D', 'Con el AMD Ryzen 7 9800X3D, tu equipo alcanzará nuevas cotas de velocidad y eficiencia.', 549.99, 100, 'imagenes/1741175185_1996-amd-ryzen-7-9800x3d-47-52ghz.webp', '2025-03-05 10:46:25', '2025-03-05 10:46:25'),
(8, 'NOX Hummer X Gold Edition 1000W 80 Plus Gold Full Modular', 'Fuente de alimentacion', 148.99, 89, 'imagenes/1741175314_149-nox-hummer-x-gold-edition-1000w-80-plus-gold-full-modular.webp', '2025-03-05 10:48:34', '2025-03-05 10:48:34'),
(9, 'Portátil Lenovo IdeaPad Slim 3 Gen 8 15IRH8 Intel Core i5-13420H/16GB/1TB SSD/15.6\"', 'Portatil', 469, 20, 'imagenes/1741175376_1176-lenovo-ideapad-slim-3-gen-8-15irh8-intel-core-i5-13420h-16gb-1tb-ssd-156.webp', '2025-03-05 10:49:36', '2025-03-05 10:49:36'),
(10, 'Gigabyte GeForce RTX 4060 EAGLE OC 8GB GDDR6 DLSS3', 'La mejor elección para exprimir incluso los juegos más exigentes en Full HD con una configuración gráfica excelente y tasas de FPS elevadas sin ningún tipo de problema. En cuanto a tareas de edición de vídeo es una solución bastante aceptable', 319.99, 24, 'imagenes/1741175456_1318-gigabyte-geforce-rtx-4060-eagle-oc-8gb-gddr6-dlss3.webp', '2025-03-05 10:50:56', '2025-03-05 10:50:56'),
(11, 'Gigabyte GeForce RTX 4060 AERO OC 8GB GDDR6 DLSS3', 'Grafica', 373, 80, 'imagenes/1741175552_133-gigabyte-geforce-rtx-4060-aero-oc-8gb-gddr6-dlss3.webp', '2025-03-05 10:52:32', '2025-03-05 10:52:32'),
(12, 'Logitech G Pro X Auriculares Gaming Inalámbricos con Lightspeed Negros', 'Unos fantásticos auriculares para los gamers más pro que buscan un sonido de altísima calidad durante sus sesiones de juego. Cuentan con un micrófono con tecnología y filtros que brinda una comunicación clara durante tus sesiones de gaming. Su diseño cómodo y', 99, 7, 'imagenes/1741175666_1256-logitech-pro-x-auriculares-gaming-inalambricos-con-lightspeed-negros-foto.webp', '2025-03-05 10:54:26', '2025-03-05 10:54:26'),
(13, 'TV Samsung TQ65Q60DAUXXC 65\" QLED UltraHD 4K HDR10+ Tizen', 'TV', 649, 115, 'imagenes/1741175816_1598-samsung-tq65q60dauxxc-65-qled-ultrahd-4k-hdr10-tizen.webp', '2025-03-05 10:56:56', '2025-03-05 10:56:56'),
(14, 'Ordenador Sobremesa PcCom Ready Intel Core i5-12400F / 32 GB / 1TB SSD / RTX 4060', 'PC potente', 859, 8, 'imagenes/1741177628_1348-pccom-ready-intel-core-i5-12400f-32-gb-1tb-ssd-rtx-4060-opiniones.webp', '2025-03-05 11:27:08', '2025-03-05 11:27:08'),
(15, 'Ordenador Sobremesa PcCom Ultimate Intel Intel Core Ultra 9 285K / 64GB RAM / 2TB SSD / RTX 5080 + W', 'PC bestial', 3899.99, 4, 'imagenes/1741177722_1636-pccom-ultimate-intel-intel-core-ultra-9-285k-64gb-ram-2tb-ssd-rtx-5080-windows-11-pro.webp', '2025-03-05 11:28:42', '2025-03-05 11:28:42'),
(16, 'Nintendo Switch OLED Blanca + Mario Kart 8 Deluxe + 12 Meses Nintendo Switch Online', 'Consola de Nintendo', 349, 27, 'imagenes/1741177878_1875-nintendo-switch-oled-blanca-mario-kart-8-deluxe-12-meses-nintendo-switch-online.webp', '2025-03-05 11:31:18', '2025-03-05 11:31:18'),
(17, 'Red Dead Redemption 2 PS4', 'Juego para PS4', 18.99, 56, 'imagenes/1741178049_91vraq7k-7l-sl1500.webp', '2025-03-05 11:34:09', '2025-03-05 11:34:09'),
(18, 'The Legend of Zelda: Skyward Sword HD Nintendo Switch', 'The Legend of Zelda: Skyward Sword HD Nintendo Switch', 50.99, 24, 'imagenes/1741178227_1942-the-legend-of-zelda-skyward-sword-hd-nintendo-switch.webp', '2025-03-05 11:37:07', '2025-03-05 11:37:48'),
(19, 'Microsoft Xbox Series X 1TB Negra Reacondicionado', 'Consola de alto rendimiento', 599.99, 4, 'imagenes/1741178445_1684-microsoft-xbox-series-x-1tb.webp', '2025-03-05 11:40:45', '2025-03-05 11:40:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Y9NgRoX7AuaKDWmEZmessFZMicvlWhpc5ULaYlyU', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/132.0.0.0 Safari/537.36 OPR/117.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUzlMYVZvdVJ4cXQ2dEJSMWd0TUF0Zk1raFVlbURrSVdMOENRUTdNMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wcm9kdWN0by9pbmRleD9wYWdlPTEiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1741207203);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `perfil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `perfil`) VALUES
(1, 'Daniel', 'daniel@daniel.com', NULL, '$2y$12$4n9ZPZb0HAmEzy8OIre0FugEYtBNhfGewHKlet0.wMS6E.i6oq3Pa', NULL, '2025-03-05 18:04:52', '2025-03-05 18:04:52', 'admin'),
(4, 'Hugo', 'hugo@hugo.com', NULL, '$2y$12$Ya8YYcPjI7PsOxTdyR99NuXMr6.nhCOcIHoLoPgQklAsDr.JKyTwa', NULL, '2025-03-05 19:22:19', '2025-03-05 19:22:19', 'cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
