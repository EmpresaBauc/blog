-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 16-Nov-2020 às 02:36
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tcc_constru`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dogs`
--

CREATE TABLE `dogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `raca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `dogs`
--

INSERT INTO `dogs` (`id`, `raca`, `nome`, `created_at`, `updated_at`) VALUES
(1, 'Vira Lata', 'Sauro', '2020-11-16 05:27:13', '2020-11-16 05:27:13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2020_11_16_004240_create_orcamentos_pisos_table', 5),
(8, '2020_11_16_011159_create_tipos_pinturas_table', 6),
(9, '2020_11_16_012605_create_orcamentos_pinturas_table', 7),
(21, '2014_10_12_000000_create_users_table', 8),
(22, '2014_10_12_100000_create_password_resets_table', 8),
(23, '2019_08_19_000000_create_failed_jobs_table', 8),
(24, '2020_11_15_133653_create_dogs_table', 8),
(25, '2020_11_15_213953_create_usuarios_table', 8),
(26, '2020_11_16_002204_create_tipos_pisos_table', 8),
(27, '2020_11_16_013935_create_orcamentos_pisos_table', 8),
(28, '2020_11_16_020354_create_tipos_pinturas_table', 8),
(29, '2020_11_16_021624_create_orcamentos_pinturas_table', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamentos_pinturas`
--

CREATE TABLE `orcamentos_pinturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `ladoX` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ladoY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoPintura` int(11) NOT NULL,
  `qtdLitros` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempoPintor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempoAjudPintor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orcamentos_pinturas`
--

INSERT INTO `orcamentos_pinturas` (`id`, `idUsuario`, `ladoX`, `ladoY`, `area`, `tipoPintura`, `qtdLitros`, `tempoPintor`, `tempoAjudPintor`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '1', 1, '10', '10', '10', '2020-11-16 05:33:30', '2020-11-16 05:33:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamentos_pisos`
--

CREATE TABLE `orcamentos_pisos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `ladoX` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ladoY` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipoPiso` int(11) NOT NULL,
  `qtdPecas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtdArgamassa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempoPedreiro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempoAjudante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orcamentos_pisos`
--

INSERT INTO `orcamentos_pisos` (`id`, `idUsuario`, `ladoX`, `ladoY`, `area`, `tipoPiso`, `qtdPecas`, `qtdArgamassa`, `tempoPedreiro`, `tempoAjudante`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '1', 1, '10', '10', '10', '10', '2020-11-16 05:27:31', '2020-11-16 05:27:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_pinturas`
--

CREATE TABLE `tipos_pinturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipos_pinturas`
--

INSERT INTO `tipos_pinturas` (`id`, `nome`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Pintura com tinta acrílica', 'ta', '2020-11-16 05:29:37', '2020-11-16 05:29:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos_pisos`
--

CREATE TABLE `tipos_pisos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `tipos_pisos`
--

INSERT INTO `tipos_pisos` (`id`, `nome`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Ceramica esmaltada-30x30-cm', 'pc-30x30', '2020-11-16 05:27:24', '2020-11-16 05:27:24');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin', '2020-11-16 05:27:18', '2020-11-16 05:27:18');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `dogs`
--
ALTER TABLE `dogs`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orcamentos_pinturas`
--
ALTER TABLE `orcamentos_pinturas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orcamentos_pisos`
--
ALTER TABLE `orcamentos_pisos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `tipos_pinturas`
--
ALTER TABLE `tipos_pinturas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipos_pisos`
--
ALTER TABLE `tipos_pisos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dogs`
--
ALTER TABLE `dogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `orcamentos_pinturas`
--
ALTER TABLE `orcamentos_pinturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `orcamentos_pisos`
--
ALTER TABLE `orcamentos_pisos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tipos_pinturas`
--
ALTER TABLE `tipos_pinturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tipos_pisos`
--
ALTER TABLE `tipos_pisos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
