-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 23/06/2024 às 01:36
-- Versão do servidor: 8.0.37-0ubuntu0.22.04.3
-- Versão do PHP: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste_golden`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_histories`
--

CREATE TABLE `affiliate_histories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `inviter` int UNSIGNED NOT NULL,
  `commission` decimal(20,2) NOT NULL DEFAULT '0.00',
  `commission_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deposited` tinyint DEFAULT '0',
  `deposited_amount` decimal(10,2) DEFAULT '0.00',
  `losses` bigint DEFAULT '0',
  `losses_amount` decimal(10,2) DEFAULT '0.00',
  `commission_paid` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `receita` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `affiliate_withdraws`
--

CREATE TABLE `affiliate_withdraws` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `affiliate_withdraws`
--

INSERT INTO `affiliate_withdraws` (`id`, `payment_id`, `user_id`, `amount`, `proof`, `status`, `pix_key`, `pix_type`, `type`, `bank_info`, `currency`, `symbol`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 7.00, NULL, 2, 'admin@gmail.com', 'email', NULL, NULL, 'BRL', 'R$', '2024-06-23 00:35:50', '2024-06-23 00:36:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'home',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `banners`
--

INSERT INTO `banners` (`id`, `link`, `image`, `type`, `description`, `created_at`, `updated_at`) VALUES
(12, '/games/play/919/BacBo00000000001', '01HZDFBY24MMG1XTB0P58ZEHBX.jpg', 'home', '...', '2024-01-26 13:45:43', '2024-06-22 22:17:54'),
(13, '/games/play/7/656', '01HZDFCA6WXEZJ9DX0V748CK6T.jpg', 'home', '....', '2024-01-26 13:46:03', '2024-06-22 22:25:21'),
(8, '#', '01J111Z41SPP1KREA98X426S77.png', 'carousel', '...', '2024-01-13 18:41:09', '2024-06-22 23:44:43'),
(14, '/games/play/1/126', '01HZDFCP7QMX5K4KGYN509K1XK.jpg', 'home', '...', '2024-01-26 13:46:55', '2024-06-22 22:25:49');

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Todos', 'All Games', '01HZDHYERJDBYY0RJBHVRG08DY.svg', 'todos', '2023-11-13 14:59:07', '2024-06-02 22:43:28'),
(2, 'Slots', 'Slots', '01HZDHYQMAFERE5MGQW6H0XATV.webp', 'slots', '2023-12-24 12:06:46', '2024-06-02 22:43:37'),
(3, 'Ao vivo', 'Cassino ao vivo', '01HZDHZ7RFS6J9CSF7Y9TD2CF9.svg', 'ao-vivo', '2023-12-24 12:12:36', '2024-06-02 22:43:53'),
(4, 'Popular', 'Popular', '01HZDHZGSF7MJTQ823C06N6G3X.webp', 'popular', '2023-12-24 12:19:42', '2024-06-02 22:44:02'),
(5, 'Roletas', 'Roletas', '01HZDHZTDCFV27S1N3MRMWGG78.svg', 'roletas', '2023-12-24 20:03:48', '2024-06-02 22:44:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `category_game`
--

CREATE TABLE `category_game` (
  `category_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `category_game`
--

INSERT INTO `category_game` (`category_id`, `game_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 130),
(1, 131),
(1, 132),
(1, 133),
(1, 134),
(1, 135),
(1, 136),
(1, 137),
(1, 138),
(1, 139),
(1, 140),
(1, 141),
(1, 142),
(1, 143),
(1, 144),
(1, 145),
(1, 146),
(1, 147),
(1, 148),
(1, 149),
(1, 150),
(1, 151),
(1, 152),
(1, 153),
(1, 154),
(1, 155),
(1, 156),
(1, 157),
(1, 158),
(1, 159),
(1, 160),
(1, 161),
(1, 162),
(1, 163),
(1, 164),
(1, 165),
(1, 166),
(1, 167),
(1, 168),
(1, 169),
(1, 170),
(1, 171),
(1, 172),
(1, 173),
(1, 174),
(1, 175),
(1, 176),
(1, 177),
(1, 178),
(1, 179),
(1, 180),
(1, 181),
(1, 182),
(1, 183),
(1, 184),
(1, 185),
(1, 186),
(1, 187),
(1, 188),
(1, 189),
(1, 190),
(1, 191),
(1, 192),
(1, 193),
(1, 194),
(1, 195),
(1, 196),
(1, 197),
(1, 198),
(1, 199),
(1, 200),
(1, 201),
(1, 202),
(1, 203),
(1, 204),
(1, 205),
(1, 206),
(1, 207),
(1, 208),
(1, 209),
(1, 210),
(1, 211),
(1, 212),
(1, 213),
(1, 214),
(1, 215),
(1, 216),
(1, 217),
(1, 218),
(1, 219),
(1, 220),
(1, 221),
(1, 222),
(1, 223),
(1, 224),
(1, 225),
(1, 226),
(1, 227),
(1, 228),
(1, 229),
(1, 230),
(1, 231),
(1, 232),
(1, 233),
(1, 234),
(1, 235),
(1, 236),
(1, 237),
(1, 238),
(1, 239),
(1, 240),
(1, 241),
(1, 242),
(1, 243),
(1, 244),
(1, 245),
(1, 246),
(1, 247),
(1, 248),
(1, 249),
(1, 250),
(1, 251),
(1, 252),
(1, 253),
(1, 254),
(1, 255),
(1, 256),
(1, 257),
(1, 258),
(1, 259),
(1, 260),
(1, 261),
(1, 262),
(1, 263),
(1, 264),
(1, 265),
(1, 266),
(1, 267),
(1, 268),
(1, 269),
(1, 270),
(1, 271),
(1, 272),
(1, 273),
(1, 274),
(1, 275),
(1, 276),
(1, 277),
(1, 278),
(1, 279),
(1, 280),
(1, 281),
(1, 282),
(1, 283),
(1, 284),
(1, 285),
(1, 286),
(1, 287),
(1, 288),
(1, 289),
(1, 290),
(1, 291),
(1, 292),
(1, 293),
(1, 294),
(1, 295),
(1, 296),
(1, 297),
(1, 298),
(1, 299),
(1, 300),
(1, 301),
(1, 302),
(1, 303),
(1, 304),
(1, 305),
(1, 306),
(1, 307),
(1, 308),
(1, 309),
(1, 310),
(1, 311),
(1, 312),
(1, 313),
(1, 314),
(1, 315),
(1, 316),
(1, 317),
(1, 318),
(1, 319),
(1, 320),
(1, 321),
(1, 322),
(1, 323),
(1, 324),
(1, 325),
(1, 326),
(1, 327),
(1, 328),
(1, 329),
(1, 330),
(1, 331),
(1, 332),
(1, 333),
(1, 334),
(1, 335),
(1, 336),
(1, 337),
(1, 338),
(1, 339),
(1, 340),
(1, 341),
(1, 342),
(1, 343),
(1, 344),
(1, 345),
(1, 346),
(1, 347),
(1, 348),
(1, 349),
(1, 350),
(1, 351),
(1, 352),
(1, 353),
(1, 354),
(1, 355),
(1, 356),
(1, 357),
(1, 358),
(1, 359),
(1, 360),
(1, 361),
(1, 362),
(1, 363),
(1, 364),
(1, 365),
(1, 366),
(1, 367),
(1, 368),
(1, 369),
(1, 370),
(1, 371),
(1, 372),
(1, 373),
(1, 374),
(1, 375),
(1, 376),
(1, 377),
(1, 378),
(1, 379),
(1, 380),
(1, 381),
(1, 382),
(1, 383),
(1, 384),
(1, 385),
(1, 386),
(1, 387),
(1, 388),
(1, 389),
(1, 390),
(1, 391),
(1, 392),
(1, 393),
(1, 394),
(1, 395),
(1, 396),
(1, 397),
(1, 398),
(1, 399),
(1, 400),
(1, 401),
(1, 402),
(1, 403),
(1, 404),
(1, 405),
(1, 406),
(1, 407),
(1, 408),
(1, 409),
(1, 410),
(1, 411),
(1, 412),
(1, 413),
(1, 414),
(1, 415),
(1, 416),
(1, 417),
(1, 418),
(1, 419),
(1, 420),
(1, 421),
(1, 422),
(1, 423),
(1, 424),
(1, 425),
(1, 426),
(1, 427),
(1, 428),
(1, 429),
(1, 430),
(1, 431),
(1, 432),
(1, 433),
(1, 434),
(1, 435),
(1, 436),
(1, 437),
(1, 438),
(1, 439),
(1, 440),
(1, 441),
(1, 442),
(1, 443),
(1, 444),
(1, 445),
(1, 446),
(1, 447),
(1, 448),
(1, 449),
(1, 450),
(1, 451),
(1, 452),
(1, 453),
(1, 454),
(1, 455),
(1, 456),
(1, 457),
(1, 458),
(1, 459),
(1, 460),
(1, 461),
(1, 462),
(1, 463),
(1, 464),
(1, 465),
(1, 466),
(1, 467),
(1, 468),
(1, 469),
(1, 470),
(1, 471),
(1, 472),
(1, 473),
(1, 474),
(1, 475),
(1, 476),
(1, 477),
(1, 478),
(1, 479),
(1, 480),
(1, 481),
(1, 482),
(1, 483),
(1, 484),
(1, 485),
(1, 486),
(1, 487),
(1, 488),
(1, 489),
(1, 490),
(1, 491),
(1, 492),
(1, 493),
(1, 494),
(1, 495),
(1, 496),
(1, 497),
(1, 498),
(1, 499),
(1, 500),
(1, 501),
(1, 502),
(1, 503),
(1, 504),
(1, 505),
(1, 506),
(1, 507),
(1, 508),
(1, 509),
(1, 510),
(1, 511),
(1, 512),
(1, 513),
(1, 514),
(1, 515),
(1, 516),
(1, 517),
(1, 518),
(1, 519),
(1, 520),
(1, 521),
(1, 522),
(1, 523),
(1, 524),
(1, 525),
(1, 526),
(1, 527),
(1, 528),
(1, 529),
(1, 530),
(1, 531),
(1, 532),
(1, 533),
(1, 534),
(1, 535),
(1, 536),
(1, 537),
(1, 538),
(1, 539),
(1, 540),
(1, 541),
(1, 542),
(1, 543),
(1, 544),
(1, 545),
(1, 546),
(1, 547),
(1, 548),
(1, 549),
(1, 550),
(1, 551),
(1, 552),
(1, 553),
(1, 554),
(1, 555),
(1, 556),
(1, 557),
(1, 558),
(1, 559),
(1, 560),
(1, 561),
(1, 562),
(1, 563),
(1, 564),
(1, 565),
(1, 566),
(1, 567),
(1, 568),
(1, 569),
(1, 570),
(1, 571),
(1, 572),
(1, 573),
(1, 574),
(1, 575),
(1, 576),
(1, 577),
(1, 578),
(1, 579),
(1, 580),
(1, 581),
(1, 582),
(1, 583),
(1, 584),
(1, 585),
(1, 586),
(1, 587),
(1, 588),
(1, 589),
(1, 590),
(1, 591),
(1, 592),
(1, 593),
(1, 594),
(1, 595),
(1, 596),
(1, 597),
(1, 598),
(1, 599),
(1, 600),
(1, 601),
(1, 602),
(1, 603),
(1, 604),
(1, 605),
(1, 606),
(1, 607),
(1, 608),
(1, 609),
(1, 610),
(1, 611),
(1, 612),
(1, 613),
(1, 614),
(1, 615),
(1, 616),
(1, 617),
(1, 618),
(1, 619),
(1, 620),
(1, 621),
(1, 622),
(1, 623),
(1, 624),
(1, 625),
(1, 626),
(1, 627),
(1, 628),
(1, 629),
(1, 630),
(1, 631),
(1, 632),
(1, 633),
(1, 634),
(1, 635),
(1, 636),
(1, 637),
(1, 638),
(1, 639),
(1, 640),
(1, 641),
(1, 642),
(1, 643),
(1, 644),
(1, 645),
(1, 646),
(1, 647),
(1, 648),
(1, 649),
(1, 650),
(1, 651),
(1, 652),
(1, 653),
(1, 654),
(1, 655),
(1, 656),
(1, 657),
(1, 658),
(1, 659),
(1, 660),
(1, 661),
(1, 662),
(1, 663),
(1, 664),
(1, 665),
(1, 666),
(1, 667),
(1, 668),
(1, 669),
(1, 670),
(1, 671),
(1, 672),
(1, 673),
(1, 674),
(1, 675),
(1, 676),
(1, 677),
(1, 678),
(1, 679),
(1, 680),
(1, 681),
(1, 682),
(1, 683),
(1, 684),
(1, 685),
(1, 686),
(1, 687),
(1, 688),
(1, 689),
(1, 690),
(1, 691),
(1, 692),
(1, 693),
(1, 694),
(1, 695),
(1, 696),
(1, 697),
(1, 698),
(1, 699),
(1, 700),
(1, 701),
(1, 702),
(1, 703),
(1, 704),
(1, 705),
(1, 706),
(1, 707),
(1, 708),
(1, 709),
(1, 710),
(1, 711),
(1, 712),
(1, 713),
(1, 714),
(1, 715),
(1, 716),
(1, 717),
(1, 718),
(1, 719),
(1, 720),
(1, 721),
(1, 722),
(1, 723),
(1, 724),
(1, 725),
(1, 726),
(1, 727),
(1, 728),
(1, 729),
(1, 730),
(1, 731),
(1, 732),
(1, 733),
(1, 734),
(1, 735),
(1, 736),
(1, 737),
(1, 738),
(1, 739),
(1, 740),
(1, 741),
(1, 742),
(1, 743),
(1, 744),
(1, 745),
(1, 746),
(1, 747),
(1, 748),
(1, 749),
(1, 750),
(1, 751),
(1, 752),
(1, 753),
(1, 754),
(1, 755),
(1, 756),
(1, 757),
(1, 758),
(1, 759),
(1, 760),
(1, 761),
(1, 762),
(1, 763),
(1, 764),
(1, 765),
(1, 766),
(1, 767),
(1, 768),
(1, 769),
(1, 770),
(1, 771),
(1, 772),
(1, 773),
(1, 774),
(1, 775),
(1, 776),
(1, 777),
(1, 778),
(1, 779),
(1, 780),
(1, 781),
(1, 782),
(1, 783),
(1, 784),
(1, 785),
(1, 786),
(1, 787),
(1, 788),
(1, 789),
(1, 790),
(1, 791),
(1, 792),
(1, 793),
(1, 794),
(1, 795),
(1, 796),
(1, 797),
(1, 798),
(1, 799),
(1, 800),
(1, 801),
(1, 802),
(1, 803),
(1, 804),
(1, 805),
(1, 806),
(1, 807),
(1, 808),
(1, 809),
(1, 810),
(1, 811),
(1, 812),
(1, 813),
(1, 814),
(1, 815),
(1, 816),
(1, 817),
(1, 818),
(1, 819),
(1, 820),
(1, 821),
(1, 822),
(1, 823),
(1, 824),
(1, 825),
(1, 826),
(1, 827),
(1, 828),
(1, 829),
(1, 830),
(1, 831),
(1, 832),
(1, 833),
(1, 834),
(1, 835),
(1, 836),
(1, 837),
(1, 838),
(1, 839),
(1, 840),
(1, 841),
(1, 842),
(1, 843),
(1, 844),
(1, 845),
(1, 846),
(1, 847),
(1, 848),
(1, 849),
(1, 850),
(1, 851),
(1, 852),
(1, 853),
(1, 854),
(1, 855),
(1, 856),
(1, 857),
(1, 858),
(1, 859),
(1, 860),
(1, 861),
(1, 862),
(1, 863),
(1, 864),
(1, 865),
(1, 866),
(1, 867),
(1, 868),
(1, 869),
(1, 870),
(1, 871),
(1, 872),
(1, 873),
(1, 874),
(1, 875),
(1, 876),
(1, 877),
(1, 878),
(1, 879),
(1, 880),
(1, 881),
(1, 882),
(1, 883),
(1, 884),
(1, 885),
(1, 886),
(1, 887),
(1, 888),
(1, 889),
(1, 890),
(1, 891),
(1, 892),
(1, 893),
(1, 894),
(1, 895),
(1, 896),
(1, 897),
(1, 898),
(1, 899),
(1, 900),
(1, 901),
(1, 902),
(1, 903),
(1, 904),
(1, 905),
(1, 906),
(1, 907),
(1, 908),
(1, 909),
(1, 910),
(1, 911),
(1, 912),
(1, 913),
(1, 914),
(1, 915),
(1, 916),
(1, 917),
(1, 918),
(1, 919),
(1, 920),
(1, 921),
(1, 922),
(1, 923),
(1, 924),
(1, 925),
(1, 926),
(1, 927),
(1, 928),
(1, 929),
(1, 930),
(1, 931),
(1, 932),
(1, 933),
(1, 934),
(1, 935),
(1, 936),
(1, 937),
(1, 938),
(1, 939),
(1, 940),
(1, 941),
(1, 942),
(1, 943),
(1, 944),
(1, 945),
(1, 946),
(1, 947),
(1, 948),
(1, 949),
(1, 950),
(1, 951),
(1, 952),
(1, 953),
(1, 954),
(1, 955),
(1, 956),
(1, 957),
(1, 958),
(1, 959),
(1, 960),
(1, 961),
(1, 962),
(1, 963),
(1, 964),
(1, 965),
(1, 966),
(1, 967),
(1, 968),
(1, 969),
(1, 970),
(1, 971),
(1, 972),
(1, 973),
(1, 974),
(1, 975),
(1, 976),
(1, 977),
(1, 978),
(1, 979),
(1, 980),
(1, 981),
(1, 982),
(1, 983),
(1, 984),
(1, 985),
(1, 986),
(1, 987),
(1, 988),
(1, 989),
(1, 990),
(1, 991),
(1, 992),
(1, 993),
(1, 994),
(1, 995),
(1, 996),
(1, 997),
(1, 998),
(1, 999),
(1, 1000),
(3, 791),
(3, 792),
(3, 793),
(3, 794),
(3, 795),
(3, 796),
(3, 797),
(3, 798),
(3, 799),
(3, 800),
(3, 801),
(3, 802),
(3, 803),
(3, 804),
(3, 805),
(3, 806),
(3, 807),
(3, 808),
(3, 809),
(3, 810),
(3, 811),
(3, 812),
(3, 813),
(3, 814),
(3, 815),
(3, 816),
(3, 817),
(3, 818),
(3, 819),
(3, 820),
(3, 821),
(3, 822),
(3, 823),
(3, 824),
(3, 825),
(3, 826),
(3, 827),
(3, 828),
(3, 829),
(3, 830),
(3, 831),
(3, 832),
(3, 833),
(3, 834),
(3, 835),
(3, 836),
(3, 837),
(3, 838),
(3, 839),
(3, 840),
(3, 841),
(3, 842),
(3, 843),
(3, 844),
(3, 845),
(3, 846),
(3, 847),
(3, 848),
(3, 849),
(3, 850),
(3, 851),
(3, 852),
(3, 853),
(3, 854),
(3, 855),
(3, 856),
(3, 857),
(3, 858),
(3, 859),
(3, 860),
(3, 861),
(3, 862),
(3, 863),
(3, 864),
(3, 865),
(3, 866),
(3, 867),
(3, 868),
(3, 869),
(3, 870),
(3, 871),
(3, 872),
(3, 873),
(3, 874),
(3, 875),
(3, 876),
(3, 877),
(3, 878),
(3, 879),
(3, 880),
(3, 881),
(3, 882),
(3, 883),
(3, 884),
(3, 885),
(3, 886),
(3, 887),
(3, 888),
(3, 889),
(3, 890),
(3, 891),
(3, 892),
(3, 893),
(3, 894),
(3, 895),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(4, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 48),
(2, 49),
(2, 50),
(2, 51),
(2, 52),
(2, 53),
(2, 54),
(2, 55),
(2, 56),
(2, 57),
(2, 58),
(2, 59),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 65),
(2, 66),
(2, 67),
(2, 68),
(2, 69),
(2, 70),
(2, 71),
(2, 72),
(2, 73),
(2, 74),
(2, 75),
(2, 76),
(2, 77),
(2, 78),
(2, 79),
(2, 80),
(2, 81),
(2, 82),
(2, 83),
(2, 84),
(2, 85),
(2, 86),
(2, 87),
(2, 88),
(2, 89),
(2, 90),
(2, 91),
(2, 92),
(2, 93),
(2, 94),
(2, 95),
(2, 96),
(2, 97),
(2, 98),
(2, 99),
(2, 100),
(2, 101),
(2, 102),
(2, 103),
(2, 104),
(2, 105),
(2, 106),
(2, 107),
(2, 108),
(2, 109),
(2, 110),
(2, 111),
(2, 112),
(2, 113),
(2, 114),
(2, 115),
(2, 116),
(2, 117),
(2, 118),
(2, 119),
(2, 120),
(2, 121),
(2, 122),
(2, 123),
(2, 124),
(2, 125),
(2, 126),
(2, 127),
(2, 128),
(2, 129),
(2, 130),
(2, 131),
(2, 132),
(2, 133),
(2, 134),
(2, 135),
(2, 136),
(2, 137),
(2, 138),
(2, 139),
(2, 140),
(2, 141),
(2, 142),
(2, 143),
(2, 144),
(2, 145),
(2, 146),
(2, 147),
(2, 148),
(2, 149),
(2, 150),
(2, 151),
(2, 152),
(2, 153),
(2, 154),
(2, 155),
(2, 156),
(2, 157),
(2, 158),
(2, 159),
(2, 160),
(2, 161),
(2, 162),
(2, 163),
(2, 164),
(2, 165),
(2, 166),
(2, 167),
(2, 168),
(2, 169),
(2, 170),
(2, 171),
(2, 172),
(2, 173),
(2, 174),
(2, 175),
(2, 176),
(2, 177),
(2, 178),
(2, 179),
(2, 180),
(2, 181),
(2, 182),
(2, 183),
(2, 184),
(2, 185),
(2, 186),
(2, 187),
(2, 188),
(2, 189),
(2, 190),
(2, 191),
(2, 192),
(2, 193),
(2, 194),
(2, 195),
(2, 196),
(2, 197),
(2, 198),
(2, 199),
(2, 200),
(2, 201),
(2, 202),
(2, 203),
(2, 204),
(2, 205),
(2, 206),
(2, 207),
(2, 208),
(2, 209),
(2, 210),
(2, 211),
(2, 212),
(2, 213),
(2, 214),
(2, 215),
(2, 216),
(2, 217),
(2, 218),
(2, 219),
(2, 220),
(2, 221),
(2, 222),
(2, 223),
(2, 224),
(2, 225),
(2, 226),
(2, 227),
(2, 228),
(2, 229),
(2, 230),
(2, 231),
(2, 232),
(2, 233),
(2, 234),
(2, 235),
(2, 236),
(2, 237),
(2, 238),
(2, 239),
(2, 240),
(2, 241),
(2, 242),
(2, 243),
(2, 244),
(2, 245),
(2, 246),
(2, 247),
(2, 248),
(2, 249),
(2, 250),
(2, 251),
(2, 252),
(2, 253),
(2, 254),
(2, 255),
(2, 256),
(2, 257),
(2, 258),
(2, 259),
(2, 260),
(2, 261),
(2, 262),
(2, 263),
(2, 264),
(2, 265),
(2, 266),
(2, 267),
(2, 268),
(2, 269),
(2, 270),
(2, 271),
(2, 272),
(2, 273),
(2, 274),
(2, 275),
(2, 276),
(2, 277),
(2, 278),
(2, 279),
(2, 280),
(2, 281),
(2, 282),
(2, 283),
(2, 284),
(2, 285),
(2, 286),
(2, 287),
(2, 288),
(2, 289),
(2, 290),
(2, 291),
(2, 292),
(2, 293),
(2, 294),
(2, 295),
(2, 296),
(2, 297),
(2, 298),
(2, 299),
(2, 300),
(2, 301),
(2, 302),
(2, 303),
(2, 304),
(2, 305),
(2, 306),
(2, 307),
(2, 308),
(2, 309),
(2, 310),
(2, 311),
(2, 312),
(2, 313),
(2, 314),
(2, 315),
(2, 316),
(2, 317),
(2, 318),
(2, 319),
(2, 320),
(2, 321),
(2, 322),
(2, 323),
(2, 324),
(2, 325),
(2, 326),
(2, 327),
(2, 328),
(2, 329),
(2, 330),
(2, 331),
(2, 332),
(2, 333),
(2, 334),
(2, 335),
(2, 336),
(2, 337),
(2, 338),
(2, 339),
(2, 340),
(2, 341),
(2, 342),
(2, 343),
(2, 344),
(2, 345),
(2, 346),
(2, 347),
(2, 348),
(2, 349),
(2, 350),
(2, 351),
(2, 352),
(2, 353),
(2, 354),
(2, 355),
(2, 356),
(2, 357),
(2, 358),
(2, 359),
(2, 360),
(2, 361),
(2, 362),
(2, 363),
(2, 364),
(2, 365),
(2, 366),
(2, 367),
(2, 368),
(2, 369),
(2, 370),
(2, 371),
(2, 372),
(2, 373),
(2, 374),
(2, 375),
(2, 376),
(2, 377),
(2, 378),
(2, 379),
(2, 380),
(2, 381),
(2, 382),
(2, 383),
(2, 384),
(2, 385),
(2, 386),
(2, 387),
(2, 388),
(2, 389),
(2, 390),
(2, 391),
(2, 392),
(2, 393),
(2, 394),
(2, 395),
(2, 396),
(2, 397),
(2, 398),
(2, 399),
(2, 400),
(2, 401),
(2, 402),
(2, 403),
(2, 404),
(2, 405),
(2, 406),
(2, 407),
(2, 408),
(2, 409),
(2, 410),
(2, 411),
(2, 412),
(2, 413),
(2, 414),
(2, 415),
(2, 416),
(2, 417),
(2, 418),
(2, 419),
(2, 420),
(2, 421),
(2, 422),
(2, 423),
(2, 424),
(2, 425),
(2, 426),
(2, 427),
(2, 428),
(2, 429),
(2, 430),
(2, 431),
(2, 432),
(2, 433),
(2, 434),
(2, 435),
(2, 436),
(2, 437),
(2, 438),
(2, 439),
(2, 440),
(2, 441),
(2, 442),
(2, 443),
(2, 444),
(2, 445),
(2, 446),
(2, 447),
(2, 448),
(2, 449),
(2, 450),
(2, 451),
(2, 452),
(2, 453),
(2, 454),
(2, 455),
(2, 456),
(2, 457),
(2, 458),
(2, 459),
(2, 460),
(2, 461),
(2, 462),
(2, 463),
(2, 464),
(2, 465),
(2, 466),
(2, 467),
(2, 468),
(2, 469),
(2, 470),
(2, 471),
(2, 472),
(2, 473),
(2, 474),
(2, 475),
(2, 476),
(2, 477),
(2, 478),
(2, 479),
(2, 480),
(2, 481),
(2, 482),
(2, 483),
(2, 484),
(2, 485),
(2, 486),
(2, 487),
(2, 488),
(2, 489),
(2, 490),
(2, 491),
(2, 492),
(2, 493),
(2, 494),
(2, 495),
(2, 496),
(2, 497),
(2, 498),
(2, 499),
(2, 500),
(2, 501),
(2, 502),
(2, 503),
(2, 504),
(2, 505),
(2, 506),
(2, 507),
(2, 508),
(2, 509),
(2, 510),
(2, 511),
(2, 512),
(2, 513),
(2, 514),
(2, 515),
(2, 516),
(2, 517),
(2, 518),
(2, 519),
(2, 520),
(2, 521),
(2, 522),
(2, 523),
(2, 524),
(2, 525),
(2, 526),
(2, 527),
(2, 528),
(2, 529),
(2, 530),
(2, 531),
(2, 532),
(2, 533),
(2, 534),
(2, 535),
(2, 536),
(2, 537),
(2, 538),
(2, 539),
(2, 540),
(2, 541),
(2, 542),
(2, 543),
(2, 544),
(2, 545),
(2, 546),
(2, 547),
(2, 548),
(2, 549),
(2, 550),
(2, 551),
(2, 552),
(2, 553),
(2, 554),
(2, 555),
(2, 556),
(2, 557),
(2, 558),
(2, 559),
(2, 560),
(2, 561),
(2, 562),
(2, 563),
(2, 564),
(2, 565),
(2, 566),
(2, 567),
(2, 568),
(2, 569),
(2, 570),
(2, 571),
(2, 572),
(2, 573),
(2, 574),
(2, 575),
(2, 576),
(2, 577),
(2, 578),
(2, 579),
(2, 580),
(2, 581),
(2, 582),
(2, 583),
(2, 584),
(2, 585),
(2, 586),
(2, 587),
(2, 588),
(2, 589),
(2, 590),
(2, 591),
(2, 592),
(2, 593),
(2, 594),
(2, 595),
(2, 596),
(2, 597),
(2, 598),
(2, 599),
(2, 600),
(2, 601),
(2, 602),
(2, 603),
(2, 604),
(2, 605),
(2, 606),
(2, 607),
(2, 608),
(2, 609),
(2, 610),
(2, 611),
(2, 612),
(2, 613),
(2, 614),
(2, 615),
(2, 616),
(2, 617),
(2, 618),
(2, 619),
(2, 620),
(2, 621),
(2, 622),
(2, 623),
(2, 624),
(2, 625),
(2, 626),
(2, 627),
(2, 628),
(2, 629),
(2, 630),
(2, 631),
(2, 632),
(2, 633),
(2, 634),
(2, 635),
(2, 636),
(2, 637),
(2, 638),
(2, 639),
(2, 640),
(2, 641),
(2, 642),
(2, 643),
(2, 644),
(2, 645),
(2, 646),
(2, 647),
(2, 648),
(2, 649),
(2, 650),
(2, 651),
(2, 652),
(2, 653),
(2, 654),
(2, 655),
(2, 656),
(2, 657),
(2, 658),
(2, 659),
(2, 660),
(2, 661),
(2, 662),
(2, 663),
(2, 664),
(2, 665),
(2, 666),
(2, 667),
(2, 668),
(2, 669),
(2, 670),
(2, 671),
(2, 672),
(2, 673),
(2, 674),
(2, 675),
(2, 676),
(2, 677),
(2, 678),
(2, 679),
(2, 680),
(2, 681),
(2, 682),
(2, 683),
(2, 684),
(2, 685),
(2, 686),
(2, 687),
(2, 688),
(2, 689),
(2, 690),
(2, 691),
(2, 692),
(2, 693),
(2, 694),
(2, 695),
(2, 696),
(2, 697),
(2, 698),
(2, 699),
(2, 700),
(2, 701),
(2, 702),
(2, 703),
(2, 704),
(2, 705),
(2, 706),
(2, 707),
(2, 708),
(2, 709),
(2, 710),
(2, 711),
(2, 712),
(2, 713),
(2, 714),
(2, 715),
(2, 716),
(2, 717),
(2, 718),
(2, 719),
(2, 720),
(2, 721),
(2, 722),
(2, 723),
(2, 724),
(2, 725),
(2, 726),
(2, 727),
(2, 728),
(2, 729),
(2, 730),
(2, 731),
(2, 732),
(2, 733),
(2, 734),
(2, 735),
(2, 736),
(2, 737),
(2, 738),
(2, 739),
(2, 740),
(2, 741),
(2, 742),
(2, 743),
(2, 744),
(2, 745),
(2, 746),
(2, 747),
(2, 748),
(2, 749),
(2, 750),
(2, 751),
(2, 752),
(2, 753),
(2, 754),
(2, 755),
(2, 756),
(2, 757),
(2, 758),
(2, 759),
(2, 760),
(2, 761),
(2, 762),
(2, 763),
(2, 764),
(2, 765),
(2, 766),
(2, 767),
(2, 768),
(2, 769),
(2, 770),
(2, 771),
(2, 772),
(3, 928),
(5, 928),
(3, 918),
(5, 918),
(3, 904),
(5, 904),
(5, 879),
(5, 842),
(5, 846),
(5, 853),
(5, 891),
(3, 916),
(3, 913),
(3, 911),
(3, 910),
(3, 909),
(3, 908),
(3, 903),
(3, 901),
(3, 900),
(3, 897),
(3, 923),
(3, 922),
(3, 919),
(4, 823),
(4, 801),
(4, 869),
(4, 919),
(4, 4),
(4, 3),
(4, 1),
(4, 5),
(4, 729),
(4, 27),
(4, 54),
(4, 6),
(4, 9),
(4, 10),
(4, 11);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-11-07 18:01:38', NULL),
(2, 'Dollars', 'USD', '$', '2023-11-07 18:01:38', NULL),
(3, 'Afghanis', 'AFN', '؋', '2023-11-07 18:01:38', NULL),
(4, 'Pesos', 'ARS', '$', '2023-11-07 18:01:38', NULL),
(5, 'Guilders', 'AWG', 'ƒ', '2023-11-07 18:01:38', NULL),
(6, 'Dollars', 'AUD', '$', '2023-11-07 18:01:38', NULL),
(7, 'New Manats', 'AZN', 'ман', '2023-11-07 18:01:38', NULL),
(8, 'Dollars', 'BSD', '$', '2023-11-07 18:01:38', NULL),
(9, 'Dollars', 'BBD', '$', '2023-11-07 18:01:38', NULL),
(10, 'Rubles', 'BYR', 'p.', '2023-11-07 18:01:38', NULL),
(11, 'Euro', 'EUR', '€', '2023-11-07 18:01:38', NULL),
(12, 'Dollars', 'BZD', 'BZ$', '2023-11-07 18:01:38', NULL),
(13, 'Dollars', 'BMD', '$', '2023-11-07 18:01:38', NULL),
(14, 'Bolivianos', 'BOB', '$b', '2023-11-07 18:01:38', NULL),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-11-07 18:01:38', NULL),
(16, 'Pula', 'BWP', 'P', '2023-11-07 18:01:38', NULL),
(17, 'Leva', 'BGN', 'лв', '2023-11-07 18:01:38', NULL),
(18, 'Reais', 'BRL', 'R$', '2023-11-07 18:01:38', NULL),
(19, 'Pounds', 'GBP', '£', '2023-11-07 18:01:38', NULL),
(20, 'Dollars', 'BND', '$', '2023-11-07 18:01:38', NULL),
(21, 'Riels', 'KHR', '៛', '2023-11-07 18:01:38', NULL),
(22, 'Dollars', 'CAD', '$', '2023-11-07 18:01:38', NULL),
(23, 'Dollars', 'KYD', '$', '2023-11-07 18:01:38', NULL),
(24, 'Pesos', 'CLP', '$', '2023-11-07 18:01:38', NULL),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-11-07 18:01:38', NULL),
(26, 'Pesos', 'COP', '$', '2023-11-07 18:01:38', NULL),
(27, 'Colón', 'CRC', '₡', '2023-11-07 18:01:38', NULL),
(28, 'Kuna', 'HRK', 'kn', '2023-11-07 18:01:38', NULL),
(29, 'Pesos', 'CUP', '₱', '2023-11-07 18:01:38', NULL),
(30, 'Koruny', 'CZK', 'Kč', '2023-11-07 18:01:38', NULL),
(31, 'Kroner', 'DKK', 'kr', '2023-11-07 18:01:38', NULL),
(32, 'Pesos', 'DOP', 'RD$', '2023-11-07 18:01:38', NULL),
(33, 'Dollars', 'XCD', '$', '2023-11-07 18:01:38', NULL),
(34, 'Pounds', 'EGP', '£', '2023-11-07 18:01:38', NULL),
(35, 'Colones', 'SVC', '$', '2023-11-07 18:01:38', NULL),
(36, 'Pounds', 'FKP', '£', '2023-11-07 18:01:38', NULL),
(37, 'Dollars', 'FJD', '$', '2023-11-07 18:01:38', NULL),
(38, 'Cedis', 'GHC', '¢', '2023-11-07 18:01:38', NULL),
(39, 'Pounds', 'GIP', '£', '2023-11-07 18:01:38', NULL),
(40, 'Quetzales', 'GTQ', 'Q', '2023-11-07 18:01:38', NULL),
(41, 'Pounds', 'GGP', '£', '2023-11-07 18:01:38', NULL),
(42, 'Dollars', 'GYD', '$', '2023-11-07 18:01:38', NULL),
(43, 'Lempiras', 'HNL', 'L', '2023-11-07 18:01:38', NULL),
(44, 'Dollars', 'HKD', '$', '2023-11-07 18:01:38', NULL),
(45, 'Forint', 'HUF', 'Ft', '2023-11-07 18:01:38', NULL),
(46, 'Kronur', 'ISK', 'kr', '2023-11-07 18:01:38', NULL),
(47, 'Rupees', 'INR', 'Rp', '2023-11-07 18:01:38', NULL),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-11-07 18:01:38', NULL),
(49, 'Rials', 'IRR', '﷼', '2023-11-07 18:01:38', NULL),
(50, 'Pounds', 'IMP', '£', '2023-11-07 18:01:38', NULL),
(51, 'New Shekels', 'ILS', '₪', '2023-11-07 18:01:38', NULL),
(52, 'Dollars', 'JMD', 'J$', '2023-11-07 18:01:38', NULL),
(53, 'Yen', 'JPY', '¥', '2023-11-07 18:01:38', NULL),
(54, 'Pounds', 'JEP', '£', '2023-11-07 18:01:38', NULL),
(55, 'Tenge', 'KZT', 'лв', '2023-11-07 18:01:38', NULL),
(56, 'Won', 'KPW', '₩', '2023-11-07 18:01:38', NULL),
(57, 'Won', 'KRW', '₩', '2023-11-07 18:01:38', NULL),
(58, 'Soms', 'KGS', 'лв', '2023-11-07 18:01:38', NULL),
(59, 'Kips', 'LAK', '₭', '2023-11-07 18:01:38', NULL),
(60, 'Lati', 'LVL', 'Ls', '2023-11-07 18:01:38', NULL),
(61, 'Pounds', 'LBP', '£', '2023-11-07 18:01:38', NULL),
(62, 'Dollars', 'LRD', '$', '2023-11-07 18:01:38', NULL),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-11-07 18:01:38', NULL),
(64, 'Litai', 'LTL', 'Lt', '2023-11-07 18:01:38', NULL),
(65, 'Denars', 'MKD', 'ден', '2023-11-07 18:01:38', NULL),
(66, 'Ringgits', 'MYR', 'RM', '2023-11-07 18:01:38', NULL),
(67, 'Rupees', 'MUR', '₨', '2023-11-07 18:01:38', NULL),
(68, 'Pesos', 'MXN', '$', '2023-11-07 18:01:38', NULL),
(69, 'Tugriks', 'MNT', '₮', '2023-11-07 18:01:38', NULL),
(70, 'Meticais', 'MZN', 'MT', '2023-11-07 18:01:38', NULL),
(71, 'Dollars', 'NAD', '$', '2023-11-07 18:01:38', NULL),
(72, 'Rupees', 'NPR', '₨', '2023-11-07 18:01:38', NULL),
(73, 'Guilders', 'ANG', 'ƒ', '2023-11-07 18:01:38', NULL),
(74, 'Dollars', 'NZD', '$', '2023-11-07 18:01:38', NULL),
(75, 'Cordobas', 'NIO', 'C$', '2023-11-07 18:01:38', NULL),
(76, 'Nairas', 'NGN', '₦', '2023-11-07 18:01:38', NULL),
(77, 'Krone', 'NOK', 'kr', '2023-11-07 18:01:38', NULL),
(78, 'Rials', 'OMR', '﷼', '2023-11-07 18:01:38', NULL),
(79, 'Rupees', 'PKR', '₨', '2023-11-07 18:01:38', NULL),
(80, 'Balboa', 'PAB', 'B/.', '2023-11-07 18:01:38', NULL),
(81, 'Guarani', 'PYG', 'Gs', '2023-11-07 18:01:38', NULL),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-11-07 18:01:38', NULL),
(83, 'Pesos', 'PHP', 'Php', '2023-11-07 18:01:38', NULL),
(84, 'Zlotych', 'PLN', 'zł', '2023-11-07 18:01:38', NULL),
(85, 'Rials', 'QAR', '﷼', '2023-11-07 18:01:38', NULL),
(86, 'New Lei', 'RON', 'lei', '2023-11-07 18:01:38', NULL),
(87, 'Rubles', 'RUB', 'руб', '2023-11-07 18:01:38', NULL),
(88, 'Pounds', 'SHP', '£', '2023-11-07 18:01:38', NULL),
(89, 'Riyals', 'SAR', '﷼', '2023-11-07 18:01:38', NULL),
(90, 'Dinars', 'RSD', 'Дин.', '2023-11-07 18:01:38', NULL),
(91, 'Rupees', 'SCR', '₨', '2023-11-07 18:01:38', NULL),
(92, 'Dollars', 'SGD', '$', '2023-11-07 18:01:38', NULL),
(93, 'Dollars', 'SBD', '$', '2023-11-07 18:01:38', NULL),
(94, 'Shillings', 'SOS', 'S', '2023-11-07 18:01:38', NULL),
(95, 'Rand', 'ZAR', 'R', '2023-11-07 18:01:38', NULL),
(96, 'Rupees', 'LKR', '₨', '2023-11-07 18:01:38', NULL),
(97, 'Kronor', 'SEK', 'kr', '2023-11-07 18:01:38', NULL),
(98, 'Dollars', 'SRD', '$', '2023-11-07 18:01:38', NULL),
(99, 'Pounds', 'SYP', '£', '2023-11-07 18:01:38', NULL),
(100, 'New Dollars', 'TWD', 'NT$', '2023-11-07 18:01:38', NULL),
(101, 'Baht', 'THB', '฿', '2023-11-07 18:01:38', NULL),
(102, 'Dollars', 'TTD', 'TT$', '2023-11-07 18:01:38', NULL),
(103, 'Lira', 'TRY', '₺', '2023-11-07 18:01:38', NULL),
(104, 'Liras', 'TRL', '£', '2023-11-07 18:01:38', NULL),
(105, 'Dollars', 'TVD', '$', '2023-11-07 18:01:38', NULL),
(106, 'Hryvnia', 'UAH', '₴', '2023-11-07 18:01:38', NULL),
(107, 'Pesos', 'UYU', '$U', '2023-11-07 18:01:38', NULL),
(108, 'Sums', 'UZS', 'лв', '2023-11-07 18:01:38', NULL),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-11-07 18:01:38', NULL),
(110, 'Dong', 'VND', '₫', '2023-11-07 18:01:38', NULL),
(111, 'Rials', 'YER', '﷼', '2023-11-07 18:01:38', NULL),
(112, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-11-07 18:01:38', NULL),
(113, 'Rupees', 'INR', '₹', '2023-11-07 18:01:38', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `currency_alloweds`
--

CREATE TABLE `currency_alloweds` (
  `id` bigint UNSIGNED NOT NULL,
  `currency_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `custom_layouts`
--

CREATE TABLE `custom_layouts` (
  `id` bigint UNSIGNED NOT NULL,
  `font_family_default` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#0073D2',
  `primary_opacity_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `secundary_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#084375',
  `gray_dark_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#3b3b3b',
  `gray_light_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#c9c9c9',
  `gray_medium_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#676767',
  `gray_over_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#1A1C20',
  `title_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#ffffff',
  `text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#98A7B5',
  `sub_text_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#656E78',
  `placeholder_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#4D565E',
  `background_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '#24262B',
  `background_base` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#ECEFF1',
  `background_base_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#24262B',
  `carousel_banners` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#1E2024',
  `carousel_banners_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '#1E2024',
  `sidebar_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sidebar_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `navtop_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `navtop_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `side_menu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `side_menu_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `input_primary` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `input_primary_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `footer_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `card_color_dark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `border_radius` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '.25rem',
  `custom_css` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `custom_js` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `custom_header` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `custom_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telegram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whastapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `custom_layouts`
--

INSERT INTO `custom_layouts` (`id`, `font_family_default`, `primary_color`, `primary_opacity_color`, `secundary_color`, `gray_dark_color`, `gray_light_color`, `gray_medium_color`, `gray_over_color`, `title_color`, `text_color`, `sub_text_color`, `placeholder_color`, `background_color`, `background_base`, `background_base_dark`, `carousel_banners`, `carousel_banners_dark`, `sidebar_color`, `sidebar_color_dark`, `navtop_color`, `navtop_color_dark`, `side_menu`, `side_menu_dark`, `input_primary`, `input_primary_dark`, `footer_color`, `footer_color_dark`, `card_color`, `card_color_dark`, `border_radius`, `custom_css`, `custom_js`, `custom_header`, `custom_body`, `created_at`, `updated_at`, `instagram`, `facebook`, `telegram`, `twitter`, `whastapp`, `youtube`) VALUES
(1, '\'Roboto Condensed\', sans-serif', '#A000EC', '#110717', '#A000EC', '#3b3b3b', '#c9c9c9', '#676767', '#191A1E', '#ffffff', '#98A7B5', '#656E78', '#4D565E', '#24262B', '#e8e8e8', '#1a1a1a', '#bdbdbd', '#1a1a1a', '#ffffff', '#121507', '#d8d8de', '#121507', '#828282', '#24262B', '#dedede', '#1E2024', '#919191', '#121507', '#ababab', '#1E2024', '.25rem', NULL, NULL, NULL, NULL, '2024-01-01 14:36:03', '2024-06-21 03:17:23', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `debug`
--

CREATE TABLE `debug` (
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `debug`
--

INSERT INTO `debug` (`text`) VALUES
('{\"idTransaction\":\"37d753d7-712a-43ca-bc30-11554a555883\",\"typeTransaction\":\"PIX_CASHOUT\",\"statusTransaction\":\"PAID_OUT\",\"value\":2,\"destinationName\":\"Isaac Roque de Oliveira Franca\",\"destinationTaxId\":\"***.795.567-**\",\"destinationBank\":\"MERCADO PAGO\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `deposits`
--

INSERT INTO `deposits` (`id`, `payment_id`, `user_id`, `amount`, `type`, `proof`, `status`, `currency`, `symbol`, `created_at`, `updated_at`) VALUES
(6, '5273E95719B41577', 1, 1.00, 'pix', '01J11BRT8X7T8WCGW9RBRWQMDV.png', 1, 'BRL', 'R$', '2024-06-21 16:35:55', '2024-06-23 02:36:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `digito_pay`
--

CREATE TABLE `digito_pay` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `withdrawal_id` int NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `digito_pay`
--

INSERT INTO `digito_pay` (`id`, `user_id`, `withdrawal_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 15.00, 1, '2024-06-21 16:54:50', '2024-06-21 16:54:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ezzepay`
--

CREATE TABLE `ezzepay` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `withdrawal_id` int NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `ezzepay`
--

INSERT INTO `ezzepay` (`id`, `user_id`, `withdrawal_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 2.00, 1, '2024-06-21 16:51:28', '2024-06-21 16:51:28');

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `provider_id` int UNSIGNED NOT NULL,
  `game_server_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `game_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `technology` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `has_lobby` tinyint NOT NULL DEFAULT '0',
  `is_mobile` tinyint NOT NULL DEFAULT '0',
  `has_freespins` tinyint NOT NULL DEFAULT '0',
  `has_tables` tinyint NOT NULL DEFAULT '0',
  `only_demo` tinyint DEFAULT '0',
  `rtp` bigint NOT NULL DEFAULT '75',
  `distribution` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `is_featured` tinyint DEFAULT '0',
  `show_home` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games`
--

INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, '126', 'Fortune Tiger', '126', 'Slot', NULL, 'PROVEDOR/PGSOFT/126.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 48, 1, 1, '2024-05-27 07:25:59', '2024-06-23 02:36:24'),
(2, 1, NULL, '98', 'Fortune OX', '98', 'Slot', NULL, 'PROVEDOR/PGSOFT/98.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(3, 1, NULL, '1695365', 'Fortune Dragon', '1695365', 'Slot', NULL, 'PROVEDOR/PGSOFT/1695365.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 12, 1, 1, '2024-05-27 07:25:59', '2024-06-23 00:33:40'),
(4, 1, NULL, '1543462', 'Fortune Rabbit', '1543462', 'Slot', NULL, 'PROVEDOR/PGSOFT/1543462.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 16, 1, 1, '2024-05-27 07:25:59', '2024-06-22 23:27:04'),
(5, 1, NULL, '68', 'Fortune Mouse', '68', 'Slot', NULL, 'PROVEDOR/PGSOFT/68.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 3, 1, 1, '2024-05-27 07:25:59', '2024-06-22 23:27:11'),
(6, 1, NULL, '69', 'Bikini Paradise', '69', 'Slot', NULL, 'PROVEDOR/PGSOFT/69.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:30:47'),
(7, 13, NULL, '656', 'Aviator', '656', 'Slot', NULL, 'PROVEDOR/SPRIBE/89.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 4, 1, 1, '2024-05-27 07:25:59', '2024-06-22 23:31:36'),
(8, 1, NULL, '48', 'Double Fortune', '48', 'Slot', NULL, 'PROVEDOR/PGSOFT/48.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(9, 1, NULL, '63', 'Dragon Tiger Luck', '63', 'Slot', NULL, 'PROVEDOR/PGSOFT/63.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 1, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:51'),
(10, 1, NULL, '42', 'Ganesha Gold', '42', 'Slot', NULL, 'PROVEDOR/PGSOFT/42.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:30:54'),
(11, 1, NULL, '40', 'Jungle Delight', '40', 'Slot', NULL, 'PROVEDOR/PGSOFT/40.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:30:58'),
(12, 2, NULL, 'vs243mwarrior', 'Monkey Warrior', 'vs243mwarrior', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243mwarrior.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 4, 0, 0, '2024-05-27 07:25:59', '2024-05-28 19:48:43'),
(13, 2, NULL, 'vs20doghouse', 'The Dog House', 'vs20doghouse', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20doghouse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(14, 2, NULL, 'vs40pirate', 'Pirate Gold', 'vs40pirate', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40pirate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(15, 2, NULL, 'vs20rhino', 'Great Rhino', 'vs20rhino', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20rhino.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(16, 2, NULL, 'vs25pandagold', 'Panda Fortune', 'vs25pandagold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25pandagold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(17, 2, NULL, 'vs4096bufking', 'Buffalo King', 'vs4096bufking', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs4096bufking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(18, 2, NULL, 'vs25pyramid', 'Pyramid King', 'vs25pyramid', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25pyramid.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(19, 2, NULL, 'vs5ultrab', 'Ultra Burn', 'vs5ultrab', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5ultrab.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(20, 2, NULL, 'vs5ultra', 'Ultra Hold and Spin', 'vs5ultra', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5ultra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(21, 2, NULL, 'vs25jokerking', 'Joker King', 'vs25jokerking', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25jokerking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(22, 2, NULL, 'vs10returndead', 'Return of the Dead', 'vs10returndead', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10returndead.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(23, 2, NULL, 'vs10madame', 'Madame Destiny', 'vs10madame', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10madame.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(24, 2, NULL, 'vs15diamond', 'Diamond Strike', 'vs15diamond', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs15diamond.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(25, 2, NULL, 'vs25aztecking', 'Aztec King', 'vs25aztecking', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25aztecking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(26, 2, NULL, 'vs25wildspells', 'Wild Spells', 'vs25wildspells', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25wildspells.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(27, 2, NULL, 'vs10bbbonanza', 'Big Bass Bonanza', 'vs10bbbonanza', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bbbonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:38'),
(28, 2, NULL, 'vs10cowgold', 'Cowboys Gold', 'vs10cowgold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10cowgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(29, 2, NULL, 'vs25tigerwar', 'The Tiger Warrior', 'vs25tigerwar', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25tigerwar.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(30, 2, NULL, 'vs25mustang', 'Mustang Gold', 'vs25mustang', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25mustang.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(31, 2, NULL, 'vs25hotfiesta', 'Hotfiesta', 'vs25hotfiesta', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25hotfiesta.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-30 20:22:00'),
(32, 2, NULL, 'vs243dancingpar', 'Dance Party', 'vs243dancingpar', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243dancingpar.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(33, 2, NULL, 'vs576treasures', 'Wild Wild Riches', 'vs576treasures', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs576treasures.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(34, 2, NULL, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'vs20hburnhs', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20hburnhs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(35, 2, NULL, 'vs20emptybank', 'Empty the Bank', 'vs20emptybank', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20emptybank.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(36, 2, NULL, 'vs20midas', 'The Hand of Midas', 'vs20midas', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20midas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(37, 2, NULL, 'vs20olympgate', 'Gates of Olympus', 'vs20olympgate', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20olympgate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(38, 2, NULL, 'vswayslight', 'Lucky Lightning', 'vswayslight', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayslight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(39, 2, NULL, 'vs20vegasmagic', 'Vegas Magic', 'vs20vegasmagic', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20vegasmagic.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(40, 2, NULL, 'vs20fruitparty', 'Fruit Party', 'vs20fruitparty', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20fruitparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(41, 2, NULL, 'vs20fparty2', 'Fruit Party 2', 'vs20fparty2', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20fparty2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(42, 2, NULL, 'vswaysdogs', 'The Dog House Megaways', 'vswaysdogs', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysdogs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(43, 2, NULL, 'vs50juicyfr', 'Juicy Fruits', 'vs50juicyfr', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50juicyfr.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(44, 2, NULL, 'vs25pandatemple', 'Panda Fortune 2', 'vs25pandatemple', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25pandatemple.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(45, 2, NULL, 'vswaysbufking', 'Buffalo King Megaways', 'vswaysbufking', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysbufking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(46, 2, NULL, 'vs40wildwest', 'Wild West Gold', 'vs40wildwest', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40wildwest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(47, 2, NULL, 'vs20chickdrop', 'Chicken Drop', 'vs20chickdrop', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20chickdrop.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(48, 2, NULL, 'vs40spartaking', 'Spartan King', 'vs40spartaking', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40spartaking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(49, 2, NULL, 'vswaysrhino', 'Great Rhino Megaways', 'vswaysrhino', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysrhino.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(50, 2, NULL, 'vs20sbxmas', 'Sweet Bonanza Xmas', 'vs20sbxmas', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20sbxmas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(51, 2, NULL, 'vs10fruity2', 'Extra Juicy', 'vs10fruity2', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10fruity2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(52, 2, NULL, 'vs10egypt', 'Ancient Egypt', 'vs10egypt', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10egypt.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(53, 2, NULL, 'vs5drhs', 'Dragon Hot Hold and Spin', 'vs5drhs', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5drhs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(54, 2, NULL, 'vs12bbb', 'Bigger Bass Bonanza', 'vs12bbb', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs12bbb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:30:42'),
(55, 2, NULL, 'vs20tweethouse', 'The Tweety House', 'vs20tweethouse', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20tweethouse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(56, 2, NULL, 'vswayslions', '5 Lions Megaways', 'vswayslions', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayslions.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(57, 2, NULL, 'vswayssamurai', 'Rise of Samurai Megaways', 'vswayssamurai', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayssamurai.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(58, 2, NULL, 'vs50pixie', 'Pixie Wings', 'vs50pixie', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50pixie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(59, 2, NULL, 'vs10floatdrg', 'Floating Dragon', 'vs10floatdrg', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10floatdrg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(60, 2, NULL, 'vs20fruitsw', 'Sweet Bonanza', 'vs20fruitsw', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20fruitsw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(61, 2, NULL, 'vs20rhinoluxe', 'Great Rhino Deluxe', 'vs20rhinoluxe', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20rhinoluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(62, 2, NULL, 'vswaysmadame', 'Madame Destiny Megaways', 'vswaysmadame', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysmadame.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(63, 2, NULL, 'vs1024temuj', 'Temujin Treasures', 'vs1024temuj', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1024temuj.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(64, 2, NULL, 'vs40pirgold', 'Pirate Gold Deluxe', 'vs40pirgold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40pirgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(65, 2, NULL, 'vs25mmouse', 'Money Mouse', 'vs25mmouse', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25mmouse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(66, 2, NULL, 'vs10threestar', 'Three Star Fortune', 'vs10threestar', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10threestar.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(67, 2, NULL, 'vs1ball', 'Lucky Dragon Ball', 'vs1ball', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1ball.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(68, 2, NULL, 'vs243lionsgold', '5 Lions', 'vs243lionsgold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243lionsgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(69, 2, NULL, 'vs10egyptcls', 'Ancient Egypt Classic', 'vs10egyptcls', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10egyptcls.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(70, 2, NULL, 'vs25davinci', 'Da Vinci Treasure', 'vs25davinci', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25davinci.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(71, 2, NULL, 'vs7776secrets', 'Aztec Treasure', 'vs7776secrets', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs7776secrets.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(72, 2, NULL, 'vs25wolfgold', 'Wolf Gold', 'vs25wolfgold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25wolfgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(73, 2, NULL, 'vs50safariking', 'Safari King', 'vs50safariking', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50safariking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(74, 2, NULL, 'vs25peking', 'Peking Luck', 'vs25peking', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25peking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(75, 2, NULL, 'vs25asgard', 'Asgard', 'vs25asgard', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25asgard.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(76, 2, NULL, 'vs25vegas', 'Vegas Nights', 'vs25vegas', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25vegas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(77, 2, NULL, 'vs25scarabqueen', 'John Hunter and the Tomb of the Scarab Queen', 'vs25scarabqueen', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25scarabqueen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(78, 2, NULL, 'vs20starlight', 'Starlight Princess', 'vs20starlight', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20starlight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(79, 2, NULL, 'vs10bookoftut', 'John Hunter and the Book of Tut', 'vs10bookoftut', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bookoftut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(80, 2, NULL, 'vs9piggybank', 'Piggy Bank Bills', 'vs9piggybank', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs9piggybank.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(81, 2, NULL, 'vs5drmystery', 'Dragon Kingdom Mystery', 'vs5drmystery', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5drmystery.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(82, 2, NULL, 'vs20eightdragons', 'Eight Dragons', 'vs20eightdragons', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20eightdragons.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(83, 2, NULL, 'vs1024lionsd', '5 Lions Dance', 'vs1024lionsd', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1024lionsd.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(84, 2, NULL, 'vs25rio', 'Heart of Rio', 'vs25rio', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25rio.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(85, 2, NULL, 'vs10nudgeit', 'Rise of Giza PowerNudge', 'vs10nudgeit', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10nudgeit.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(86, 2, NULL, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'vs10bxmasbnza', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bxmasbnza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(87, 2, NULL, 'vs20santawonder', 'Santa s Wonderland', 'vs20santawonder', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20santawonder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(88, 2, NULL, 'vs10bblpop', 'Bubble Pop', 'vs10bblpop', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bblpop.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(89, 2, NULL, 'vs25btygold', 'Bounty Gold', 'vs25btygold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25btygold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(90, 2, NULL, 'vs88hockattack', 'Hockey Attack(tm)', 'vs88hockattack', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs88hockattack.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(91, 2, NULL, 'vswaysbbb', 'Big Bass Bonanza Megaways(tm)', 'vswaysbbb', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysbbb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(92, 2, NULL, 'vs10bookfallen', 'Book of the Fallen', 'vs10bookfallen', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bookfallen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(93, 2, NULL, 'vs40bigjuan', 'Big Juan', 'vs40bigjuan', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40bigjuan.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(94, 2, NULL, 'vs20bermuda', 'John Hunter and the Quest for Bermuda Riches', 'vs20bermuda', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20bermuda.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(95, 2, NULL, 'vs10starpirate', 'Star Pirates Code', 'vs10starpirate', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10starpirate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(96, 2, NULL, 'vswayswest', 'Mystic Chief', 'vswayswest', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayswest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(97, 2, NULL, 'vs20daydead', 'Day of Dead', 'vs20daydead', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20daydead.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(98, 2, NULL, 'vs20candvil', 'Candy Village', 'vs20candvil', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20candvil.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(99, 2, NULL, 'vs20wildboost', 'Wild Booster', 'vs20wildboost', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20wildboost.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(100, 2, NULL, 'vswayshammthor', 'Power of Thor Megaways', 'vswayshammthor', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayshammthor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-28 20:39:20'),
(101, 2, NULL, 'vs243lions', '5 Lions', 'vs243lions', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243lions.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(102, 2, NULL, 'vs5super7', 'Super 7s', 'vs5super7', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5super7.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(103, 2, NULL, 'vs1masterjoker', 'Master Joker', 'vs1masterjoker', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1masterjoker.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-28 20:26:05'),
(104, 2, NULL, 'vs20kraken', 'Release the Kraken', 'vs20kraken', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20kraken.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(105, 2, NULL, 'vs10firestrike', 'Fire Strike', 'vs10firestrike', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10firestrike.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(106, 2, NULL, 'vs243fortune', 'Caishen s Gold', 'vs243fortune', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(107, 2, NULL, 'vs20aladdinsorc', 'Aladdin and the Sorcerrer', 'vs20aladdinsorc', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20aladdinsorc.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(108, 2, NULL, 'vs243fortseren', 'Greek Gods', 'vs243fortseren', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243fortseren.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(109, 2, NULL, 'vs25chilli', 'Chilli Heat', 'vs25chilli', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25chilli.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(110, 2, NULL, 'vs8magicjourn', 'Magic Journey', 'vs8magicjourn', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs8magicjourn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(111, 2, NULL, 'vs20leprexmas', 'Leprechaun Carol', 'vs20leprexmas', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20leprexmas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(112, 2, NULL, 'vs7pigs', '7 Piggies', 'vs7pigs', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs7pigs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(113, 2, NULL, 'vs243caishien', 'Caishen s Cash', 'vs243caishien', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243caishien.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(114, 2, NULL, 'vs5joker', 'Joker s Jewels', 'vs5joker', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5joker.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(115, 2, NULL, 'vs25gladiator', 'Wild Gladiator', 'vs25gladiator', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25gladiator.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(116, 2, NULL, 'vs25goldpig', 'Golden Pig', 'vs25goldpig', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25goldpig.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(117, 2, NULL, 'vs25goldrush', 'Gold Rush', 'vs25goldrush', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25goldrush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(118, 2, NULL, 'vs25dragonkingdom', 'Dragon Kingdom', 'vs25dragonkingdom', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25dragonkingdom.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(119, 2, NULL, 'vs1dragon8', '888 Dragons', 'vs1dragon8', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1dragon8.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(120, 2, NULL, 'vs5aztecgems', 'Aztec Gems', 'vs5aztecgems', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5aztecgems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(121, 2, NULL, 'vs20hercpeg', 'Hercules and Pegasus', 'vs20hercpeg', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20hercpeg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(122, 2, NULL, 'vs7fire88', 'Fire 88', 'vs7fire88', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs7fire88.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(123, 2, NULL, 'vs20honey', 'Honey Honey Honey', 'vs20honey', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20honey.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(124, 2, NULL, 'vs25safari', 'Hot Safari', 'vs25safari', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25safari.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(125, 2, NULL, 'vs25journey', 'Journey to the West', 'vs25journey', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25journey.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(126, 2, NULL, 'vs20chicken', 'The Great Chicken Escape', 'vs20chicken', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20chicken.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(127, 2, NULL, 'vs1fortunetree', 'Tree of Riches', 'vs1fortunetree', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1fortunetree.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(128, 2, NULL, 'vs20wildpix', 'Wild Pixies', 'vs20wildpix', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20wildpix.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(129, 2, NULL, 'vs15fairytale', 'Fairytale Fortune', 'vs15fairytale', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs15fairytale.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(130, 2, NULL, 'vs20santa', 'Santa', 'vs20santa', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20santa.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(131, 2, NULL, 'vs10vampwolf', 'Vampires vs Wolves', 'vs10vampwolf', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10vampwolf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(132, 2, NULL, 'vs50aladdin', '3 Genie Wishes', 'vs50aladdin', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50aladdin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(133, 2, NULL, 'vs50hercules', 'Hercules Son of Zeus', 'vs50hercules', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50hercules.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(134, 2, NULL, 'vs7776aztec', 'Aztec Bonanza', 'vs7776aztec', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs7776aztec.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(135, 2, NULL, 'vs5trdragons', 'Triple Dragons', 'vs5trdragons', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5trdragons.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(136, 2, NULL, 'vs40madwheel', 'The Wild Machine', 'vs40madwheel', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40madwheel.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(137, 2, NULL, 'vs25newyear', 'Lucky New Year', 'vs25newyear', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25newyear.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(138, 2, NULL, 'vs40frrainbow', 'Fruit Rainbow', 'vs40frrainbow', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40frrainbow.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(139, 2, NULL, 'vs50kingkong', 'Mighty Kong', 'vs50kingkong', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50kingkong.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(140, 2, NULL, 'vs20godiva', 'Lady Godiva', 'vs20godiva', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20godiva.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(141, 2, NULL, 'vs9madmonkey', 'Monkey Madness', 'vs9madmonkey', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs9madmonkey.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(142, 2, NULL, 'vs1tigers', 'Triple Tigers', 'vs1tigers', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1tigers.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(143, 2, NULL, 'vs9chen', 'Master Chen s Fortune', 'vs9chen', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs9chen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(144, 2, NULL, 'vs5hotburn', 'Hot to burn', 'vs5hotburn', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5hotburn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(145, 2, NULL, 'vs25dwarves_new', 'Dwarven Gold Deluxe', 'vs25dwarves_new', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25dwarves_new.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(146, 2, NULL, 'vs25sea', 'Great Reef', 'vs25sea', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25sea.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(147, 2, NULL, 'vs20leprechaun', 'Leprechaun Song', 'vs20leprechaun', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20leprechaun.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(148, 2, NULL, 'vs7monkeys', '7 Monkeys', 'vs7monkeys', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs7monkeys.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(149, 2, NULL, 'vs50chinesecharms', 'Lucky Dragons', 'vs50chinesecharms', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50chinesecharms.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(150, 2, NULL, 'vs18mashang', 'Treasure Horse', 'vs18mashang', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs18mashang.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(151, 2, NULL, 'vs5spjoker', 'Super Joker', 'vs5spjoker', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5spjoker.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(152, 2, NULL, 'vs20egypttrs', 'Egyptian Fortunes', 'vs20egypttrs', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20egypttrs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(153, 2, NULL, 'vs25queenofgold', 'Queen of Gold', 'vs25queenofgold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25queenofgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(154, 2, NULL, 'vs9hotroll', 'Hot Chilli', 'vs9hotroll', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs9hotroll.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(155, 2, NULL, 'vs4096jurassic', 'Jurassic Giants', 'vs4096jurassic', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs4096jurassic.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(156, 2, NULL, 'vs3train', 'Gold Train', 'vs3train', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs3train.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(157, 2, NULL, 'vs40beowulf', 'Beowulf', 'vs40beowulf', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40beowulf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(158, 2, NULL, 'vs20bl', 'Busy Bees', 'vs20bl', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20bl.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(159, 2, NULL, 'vs1money', 'Money Money Money', 'vs1money', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1money.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(160, 2, NULL, 'vs1600drago', 'Drago - Jewels of Fortune', 'vs1600drago', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1600drago.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(161, 2, NULL, 'vs1fufufu', 'Fu Fu Fu', 'vs1fufufu', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1fufufu.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(162, 2, NULL, 'vs40streetracer', 'Street Racer', 'vs40streetracer', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40streetracer.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(163, 2, NULL, 'vs9aztecgemsdx', 'Aztec Gems Deluxe', 'vs9aztecgemsdx', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs9aztecgemsdx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(164, 2, NULL, 'vs20gorilla', 'Jungle Gorilla', 'vs20gorilla', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20gorilla.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(165, 2, NULL, 'vswayswerewolf', 'Curse of the Werewolf Megaways', 'vswayswerewolf', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayswerewolf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(166, 2, NULL, 'vswayshive', 'Star Bounty', 'vswayshive', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayshive.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(167, 2, NULL, 'vs25samurai', 'Rise of Samurai', 'vs25samurai', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25samurai.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(168, 2, NULL, 'vs25walker', 'Wild Walker', 'vs25walker', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25walker.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(169, 2, NULL, 'vs20goldfever', 'Gems Bonanza', 'vs20goldfever', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20goldfever.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(170, 2, NULL, 'vs25bkofkngdm', 'Book of Kingdoms', 'vs25bkofkngdm', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25bkofkngdm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(171, 2, NULL, 'vs10goldfish', 'Fishin Reels', 'vs10goldfish', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10goldfish.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(172, 2, NULL, 'vs1024dtiger', 'The Dragon Tiger', 'vs1024dtiger', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1024dtiger.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(173, 2, NULL, 'vs20xmascarol', 'Christmas Carol Megaways', 'vs20xmascarol', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20xmascarol.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(174, 2, NULL, 'vs10mayangods', 'John Hunter and the Mayan Gods', 'vs10mayangods', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10mayangods.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(175, 2, NULL, 'vs20bonzgold', 'Bonanza Gold', 'vs20bonzgold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20bonzgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(176, 2, NULL, 'vs40voodoo', 'Voodoo Magic', 'vs40voodoo', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40voodoo.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(177, 2, NULL, 'vs25gldox', 'Golden Ox', 'vs25gldox', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25gldox.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(178, 2, NULL, 'vs10wildtut', 'Mysterious Egypt', 'vs10wildtut', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10wildtut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(179, 2, NULL, 'vs10eyestorm', 'Eye of the Storm', 'vs10eyestorm', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10eyestorm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(180, 2, NULL, 'vs117649starz', 'Starz Megaways', 'vs117649starz', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs117649starz.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(181, 2, NULL, 'vs10amm', 'The Amazing Money Machine', 'vs10amm', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10amm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(182, 2, NULL, 'vs20magicpot', 'The Magic Cauldron - Enchanted Brew', 'vs20magicpot', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20magicpot.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(183, 2, NULL, 'vswayselements', 'Elemental Gems Megaways', 'vswayselements', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayselements.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(184, 2, NULL, 'vswayschilheat', 'Chilli Heat Megaways', 'vswayschilheat', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayschilheat.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(185, 2, NULL, 'vs10luckcharm', 'Lucky Grace And Charm', 'vs10luckcharm', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10luckcharm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(186, 2, NULL, 'vswaysaztecking', 'Aztec King Megaways', 'vswaysaztecking', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysaztecking.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(187, 2, NULL, 'vs20phoenixf', 'Phoenix Forge', 'vs20phoenixf', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20phoenixf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(188, 2, NULL, 'vs576hokkwolf', 'Hokkaido Wolf', 'vs576hokkwolf', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs576hokkwolf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(189, 2, NULL, 'vs20trsbox', 'Treasure Wild', 'vs20trsbox', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20trsbox.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(190, 2, NULL, 'vs243chargebull', 'Raging Bull', 'vs243chargebull', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243chargebull.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(191, 2, NULL, 'vswaysbankbonz', 'Cash Bonanza', 'vswaysbankbonz', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysbankbonz.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(192, 2, NULL, 'vs20pbonanza', 'Pyramid Bonanza', 'vs20pbonanza', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20pbonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(193, 2, NULL, 'vs243empcaishen', 'Emperor Caishen', 'vs243empcaishen', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243empcaishen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(194, 2, NULL, 'vs25tigeryear', 'New Year Tiger Treasures (tm)', 'vs25tigeryear', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25tigeryear.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(195, 2, NULL, 'vs20amuleteg', 'Fortune of Giza(tm)', 'vs20amuleteg', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20amuleteg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(196, 2, NULL, 'vs10runes', 'Gates of Valhalla(tm)', 'vs10runes', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10runes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(197, 2, NULL, 'vs25goldparty', 'Gold Party(r)', 'vs25goldparty', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25goldparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(198, 2, NULL, 'vswaysxjuicy', 'Extra Juicy Megaways(tm)', 'vswaysxjuicy', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysxjuicy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(199, 2, NULL, 'vs40wanderw', 'Wild Depths(tm)', 'vs40wanderw', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40wanderw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(200, 2, NULL, 'vs4096magician', 'Magician s Secrets(tm)', 'vs4096magician', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs4096magician.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(201, 2, NULL, 'vs20smugcove', 'Smugglers Cove(tm)', 'vs20smugcove', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20smugcove.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(202, 2, NULL, 'vswayscryscav', 'Crystal Caverns Megaways(tm)', 'vswayscryscav', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayscryscav.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(203, 2, NULL, 'vs20superx', 'Super X(tm)', 'vs20superx', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20superx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(204, 2, NULL, 'vs20rockvegas', 'Rock Vegas Mega Hold e Spin', 'vs20rockvegas', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20rockvegas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(205, 2, NULL, 'vs25copsrobbers', 'Cash Patrol', 'vs25copsrobbers', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25copsrobbers.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(206, 2, NULL, 'vs20colcashzone', 'Colossal Cash Zone', 'vs20colcashzone', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20colcashzone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(207, 2, NULL, 'vs20ultim5', 'The Ultimate 5', 'vs20ultim5', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20ultim5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(208, 2, NULL, 'vs20bchprty', 'Wild Beach Party', 'vs20bchprty', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20bchprty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(209, 2, NULL, 'vs10bookazteck', 'Book of Aztec King', 'vs10bookazteck', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bookazteck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(210, 2, NULL, 'vs50mightra', 'Might of Ra', 'vs50mightra', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50mightra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(211, 2, NULL, 'vs25bullfiesta', 'Bull Fiesta', 'vs25bullfiesta', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25bullfiesta.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(212, 2, NULL, 'vs20rainbowg', 'Rainbow Gold', 'vs20rainbowg', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20rainbowg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(213, 2, NULL, 'vs10tictac', 'Tic Tac Take', 'vs10tictac', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10tictac.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(214, 2, NULL, 'vs243discolady', 'Disco Lady', 'vs243discolady', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243discolady.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(215, 2, NULL, 'vs243queenie', 'Queenie', 'vs243queenie', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243queenie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(216, 2, NULL, 'vs20farmfest', 'Barn Festival', 'vs20farmfest', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20farmfest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(217, 2, NULL, 'vs10chkchase', 'Chicken Chase', 'vs10chkchase', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10chkchase.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(218, 2, NULL, 'vswayswildwest', 'Wild West Gold Megaways', 'vswayswildwest', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayswildwest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(219, 2, NULL, 'vs20mustanggld2', 'Clover Gold', 'vs20mustanggld2', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20mustanggld2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(220, 2, NULL, 'vs20drtgold', 'Drill That Gold', 'vs20drtgold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20drtgold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(221, 2, NULL, 'vs10spiritadv', 'Spirit of Adventure', 'vs10spiritadv', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10spiritadv.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(222, 2, NULL, 'vs10firestrike2', 'Fire Strike 2', 'vs10firestrike2', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10firestrike2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(223, 2, NULL, 'vs40cleoeye', 'Eye of Cleopatra', 'vs40cleoeye', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40cleoeye.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(224, 2, NULL, 'vs20gobnudge', 'Goblin Heist Powernudge', 'vs20gobnudge', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20gobnudge.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(225, 2, NULL, 'vs20stickysymbol', 'The Great Stick-up', 'vs20stickysymbol', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20stickysymbol.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(226, 2, NULL, 'vswayszombcarn', 'Zombie Carnival', 'vswayszombcarn', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayszombcarn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(227, 2, NULL, 'vs50northgard', 'North Guardians', 'vs50northgard', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50northgard.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(228, 2, NULL, 'vs20sugarrush', 'Sugar Rush', 'vs20sugarrush', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20sugarrush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(229, 2, NULL, 'vs20cleocatra', 'Cleocatra', 'vs20cleocatra', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20cleocatra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(230, 2, NULL, 'vs5littlegem', 'Little Gem Hold and Spin', 'vs5littlegem', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5littlegem.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(231, 2, NULL, 'vs10egrich', 'Queen of Gods', 'vs10egrich', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10egrich.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(232, 2, NULL, 'vs243koipond', 'Koi Pond', 'vs243koipond', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243koipond.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(233, 2, NULL, 'vs40samurai3', 'Rise of Samurai 3', 'vs40samurai3', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40samurai3.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(234, 2, NULL, 'vs40cosmiccash', 'Cosmic Cash', 'vs40cosmiccash', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40cosmiccash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(235, 2, NULL, 'vs25bomb', 'Bomb Bonanza', 'vs25bomb', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25bomb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(236, 2, NULL, 'vs1024mahjpanda', 'Mahjong Panda', 'vs1024mahjpanda', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1024mahjpanda.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(237, 2, NULL, 'vs10coffee', 'Coffee Wild', 'vs10coffee', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10coffee.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(238, 2, NULL, 'vs100sh', 'Shining Hot 100', 'vs100sh', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs100sh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(239, 2, NULL, 'vs20sh', 'Shining Hot 20', 'vs20sh', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20sh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(240, 2, NULL, 'vs40sh', 'Shining Hot 40', 'vs40sh', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40sh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(241, 2, NULL, 'vs5sh', 'Shining Hot 5', 'vs5sh', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5sh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(242, 2, NULL, 'vswaysjkrdrop', 'Tropical Tiki', 'vswaysjkrdrop', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysjkrdrop.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(243, 2, NULL, 'vs243ckemp', 'Cheeky Emperor', 'vs243ckemp', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243ckemp.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(244, 2, NULL, 'vs40hotburnx', 'Hot To Burn Extreme', 'vs40hotburnx', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40hotburnx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(246, 2, NULL, 'vs20octobeer', 'Octobeer Fortunes', 'vs20octobeer', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20octobeer.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(247, 2, NULL, 'vs10txbigbass', 'Big Bass Splash', 'vs10txbigbass', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10txbigbass.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(248, 2, NULL, 'vs100firehot', 'Fire Hot 100', 'vs100firehot', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs100firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(249, 2, NULL, 'vs20fh', 'Fire Hot 20', 'vs20fh', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20fh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(250, 2, NULL, 'vs40firehot', 'Fire Hot 40', 'vs40firehot', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(251, 2, NULL, 'vs5firehot', 'Fire Hot 5', 'vs5firehot', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5firehot.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(252, 2, NULL, 'vs20wolfie', 'Greedy Wolf', 'vs20wolfie', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20wolfie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(253, 2, NULL, 'vs20underground', 'Down the Rails', 'vs20underground', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20underground.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(254, 2, NULL, 'vs10mmm', 'Magic Money Maze', 'vs10mmm', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10mmm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(255, 2, NULL, 'vswaysfltdrg', 'Floating Dragon Hold e Spin Megaways', 'vswaysfltdrg', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysfltdrg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(256, 2, NULL, 'vs20trswild2', 'Black Bull', 'vs20trswild2', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20trswild2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(257, 2, NULL, 'vswaysstrwild', 'Candy Stars', 'vswaysstrwild', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysstrwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(258, 2, NULL, 'vs10crownfire', 'Crown of Fire', 'vs10crownfire', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10crownfire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(259, 2, NULL, 'vs20muertos', 'Muertos Multiplier Megaways', 'vs20muertos', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20muertos.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 16, 0, 1, '2024-05-27 07:25:59', '2024-05-28 21:19:46'),
(260, 2, NULL, 'vswayslofhero', 'Legend of Heroes', 'vswayslofhero', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayslofhero.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(261, 2, NULL, 'vs5strh', 'Striking Hot 5', 'vs5strh', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5strh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(262, 2, NULL, 'vs10snakeeyes', 'Snakes e Ladders - Snake Eyes', 'vs10snakeeyes', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10snakeeyes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(263, 2, NULL, 'vswaysbook', 'Book of Golden Sands', 'vswaysbook', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysbook.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(264, 2, NULL, 'vs20mparty', 'Wild Hop and Drop', 'vs20mparty', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20mparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(265, 2, NULL, 'vs20swordofares', 'Sword of Ares', 'vs20swordofares', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20swordofares.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(266, 2, NULL, 'vswaysfrywld', 'Spin e Score Megaways', 'vswaysfrywld', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysfrywld.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(267, 2, NULL, 'vswaysconcoll', 'Sweet PowerNudge(tm)', 'vswaysconcoll', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysconcoll.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(268, 2, NULL, 'vs20lcount', 'Gems of Serengeti(tm)', 'vs20lcount', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20lcount.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(269, 2, NULL, 'vs20sparta', 'Shield of Sparta', 'vs20sparta', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20sparta.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(270, 2, NULL, 'vs10bbkir', 'Big Bass Bonanza Keeping it Reel', 'vs10bbkir', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bbkir.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(271, 2, NULL, 'vswayspizza', 'Pizza Pizza Pizza', 'vswayspizza', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayspizza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(272, 2, NULL, 'vs20dugems', 'Hot Pepper(tm)', 'vs20dugems', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20dugems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(273, 2, NULL, 'vs20clspwrndg', 'Sweet PowerNudge', 'vs20clspwrndg', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20clspwrndg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(274, 2, NULL, 'vswaysfuryodin', 'Fury of Odin Megaways(tm)', 'vswaysfuryodin', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysfuryodin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(275, 2, NULL, 'vs20sugarcoins', 'Viking Forge', 'vs20sugarcoins', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20sugarcoins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(276, 2, NULL, 'vs20olympgrace', 'Grace of Ebisu', 'vs20olympgrace', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20olympgrace.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(277, 2, NULL, 'vs20starlightx', 'Starlight Princess 1000', 'vs20starlightx', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20starlightx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(278, 2, NULL, 'vswaysmoneyman', 'The Money Men Megaways', 'vswaysmoneyman', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysmoneyman.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(279, 2, NULL, 'vs40demonpots', 'Demon Pots', 'vs40demonpots', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40demonpots.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(280, 2, NULL, 'vswaystut', 'John Hunter and the Book of Tut Megaways', 'vswaystut', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaystut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(281, 2, NULL, 'vs10gdchalleng', '8 Golden Dragon Challenge', 'vs10gdchalleng', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10gdchalleng.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(282, 2, NULL, 'vs20yisunshin', 'Yi Sun Shin', 'vs20yisunshin', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20yisunshin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(283, 2, NULL, 'vs20candyblitz', 'Candy Blitz', 'vs20candyblitz', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20candyblitz.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(284, 2, NULL, 'vswaysstrlght', 'Fortunes of Aztec', 'vswaysstrlght', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysstrlght.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(285, 2, NULL, 'vs40infwild', 'Infective Wild', 'vs40infwild', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40infwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(286, 2, NULL, 'vs20gravity', 'Gravity Bonanza', 'vs20gravity', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20gravity.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(287, 2, NULL, 'vs40rainbowr', 'Rainbow Reels', 'vs40rainbowr', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs40rainbowr.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(288, 2, NULL, 'vs20bnnzdice', 'Sweet Bonanza Dice', 'vs20bnnzdice', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20bnnzdice.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 6, 0, 1, '2024-05-27 07:25:59', '2024-05-28 20:47:19'),
(289, 2, NULL, 'vs10bhallbnza', 'Big Bass Halloween', 'vs10bhallbnza', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bhallbnza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(290, 2, NULL, 'vswaysraghex', 'Tundra s Fortune', 'vswaysraghex', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysraghex.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(291, 2, NULL, 'vs20maskgame', 'Cash Chips', 'vs20maskgame', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20maskgame.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(292, 2, NULL, 'vs5gemstone', 'Gemstone', 'vs5gemstone', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs5gemstone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(293, 2, NULL, 'vs1024mahjwins', 'Mahjong Wins', 'vs1024mahjwins', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1024mahjwins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(294, 2, NULL, 'vs20procount', 'Wisdom of Athena', 'vs20procount', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20procount.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(295, 2, NULL, 'vs20forge', 'Forge of Olympus', 'vs20forge', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20forge.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(296, 2, NULL, 'vswaysbbhas', 'Big Bass Hold e Spinner Megaways', 'vswaysbbhas', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysbbhas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(297, 2, NULL, 'vs20earthquake', 'Cyclops Smash', 'vs20earthquake', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20earthquake.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(298, 2, NULL, 'vs20saiman', 'Saiyan Mania', 'vs20saiman', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20saiman.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(299, 2, NULL, 'vs20piggybank', 'Piggy Bankers', 'vs20piggybank', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20piggybank.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(300, 2, NULL, 'vs20lvlup', 'Pub Kings', 'vs20lvlup', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20lvlup.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(301, 2, NULL, 'vs10trail', 'Mustang Trail', 'vs10trail', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10trail.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(302, 2, NULL, 'vs20supermania', 'Supermania', 'vs20supermania', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20supermania.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(303, 2, NULL, 'vs50dmdcascade', 'Diamond Cascade', 'vs50dmdcascade', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50dmdcascade.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(304, 2, NULL, 'vs20lobcrab', 'Lobster Bob s Crazy Crab Shack', 'vs20lobcrab', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20lobcrab.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(305, 2, NULL, 'vs20wildparty', '3 Buzzing Wilds', 'vs20wildparty', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20wildparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(306, 2, NULL, 'vs20doghousemh', 'The Dog House Multihold', 'vs20doghousemh', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20doghousemh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(307, 2, NULL, 'vs20splmystery', 'Spellbinding Mystery', 'vs20splmystery', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20splmystery.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(308, 2, NULL, 'vs20cashmachine', 'Cash Box', 'vs20cashmachine', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20cashmachine.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(309, 2, NULL, 'vs50jucier', 'Sky Bounty', 'vs50jucier', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs50jucier.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(310, 2, NULL, 'vs243nudge4gold', 'Hellvis Wild', 'vs243nudge4gold', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs243nudge4gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(311, 2, NULL, 'vs25jokrace', 'Joker Race', 'vs25jokrace', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25jokrace.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(312, 2, NULL, 'vs20hstgldngt', 'Heist for the Golden Nuggets', 'vs20hstgldngt', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20hstgldngt.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(313, 2, NULL, 'vs20beefed', 'Fat Panda', 'vs20beefed', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20beefed.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(314, 2, NULL, 'vs20jewelparty', 'Jewel Rush', 'vs20jewelparty', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20jewelparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(315, 2, NULL, 'vs9outlaw', 'Pirates Pub', 'vs9outlaw', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs9outlaw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(316, 2, NULL, 'vswaysfrbugs', 'Frogs e Bugs', 'vswaysfrbugs', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysfrbugs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(317, 2, NULL, 'vs20lampinf', 'Lamp Of Infinity', 'vs20lampinf', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20lampinf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(318, 2, NULL, 'vs4096robber', 'Robber Strike', 'vs4096robber', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs4096robber.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(319, 2, NULL, 'vs10fdrasbf', 'Floating Dragon - Dragon Boat Festival', 'vs10fdrasbf', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10fdrasbf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(320, 2, NULL, 'vs20clustwild', 'Sticky Bees', 'vs20clustwild', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20clustwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(321, 2, NULL, 'vs25spotz', 'Knight Hot Spotz', 'vs25spotz', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25spotz.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(322, 2, NULL, 'vs20excalibur', 'Excalibur Unleashed', 'vs20excalibur', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20excalibur.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(323, 2, NULL, 'vs20stickywild', 'Wild Bison Charge', 'vs20stickywild', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20stickywild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(324, 2, NULL, 'vs25holiday', 'Holiday Ride', 'vs25holiday', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25holiday.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(325, 2, NULL, 'vs20mvwild', 'Jasmine Dreams', 'vs20mvwild', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20mvwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(326, 2, NULL, 'vs10kingofdth', 'Kingdom of the Dead', 'vs10kingofdth', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10kingofdth.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(327, 2, NULL, 'vswaysultrcoin', 'Cowboy Coins', 'vswaysultrcoin', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysultrcoin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(328, 2, NULL, 'vs10gizagods', 'Gods of Giza', 'vs10gizagods', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10gizagods.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(329, 2, NULL, 'vswaysrsm', 'Wild Celebrity Bus Megaways', 'vswaysrsm', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysrsm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(330, 2, NULL, 'vswaysmonkey', '3 Dancing Monkeys', 'vswaysmonkey', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysmonkey.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(331, 2, NULL, 'vs20hotzone', 'African Elephant', 'vs20hotzone', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20hotzone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(332, 2, NULL, 'vs10bbhas', 'Big Bass - Hold e Spinner', 'vs10bbhas', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10bbhas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(333, 2, NULL, 'vs1024moonsh', 'Moonshot', 'vs1024moonsh', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs1024moonsh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(334, 2, NULL, 'vswaysredqueen', 'The Red Queen', 'vswaysredqueen', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysredqueen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(335, 2, NULL, 'vs20framazon', 'Fruits of the Amazon', 'vs20framazon', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20framazon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(336, 2, NULL, 'vs20sknights', 'The Knight King', 'vs20sknights', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20sknights.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(337, 2, NULL, 'vs20goldclust', 'Rabbit Garden', 'vs20goldclust', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20goldclust.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(338, 2, NULL, 'vswaysmorient', 'Mystery of the Orient', 'vswaysmorient', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysmorient.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(339, 2, NULL, 'vs10powerlines', 'Peak Power', 'vs10powerlines', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10powerlines.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(340, 2, NULL, 'vs12tropicana', 'Club Tropicana', 'vs12tropicana', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs12tropicana.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(341, 2, NULL, 'vs25archer', 'Fire Archer', 'vs25archer', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25archer.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(342, 2, NULL, 'vs20gatotfury', 'Gatot Kaca s Fury', 'vs20gatotfury', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20gatotfury.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(343, 2, NULL, 'vs20mochimon', 'Mochimon', 'vs20mochimon', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20mochimon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(344, 2, NULL, 'vs10fisheye', 'Fish Eye', 'vs10fisheye', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs10fisheye.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(345, 2, NULL, 'vs20superlanche', 'Monster Superlanche', 'vs20superlanche', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs20superlanche.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(346, 2, NULL, 'vswaysftropics', 'Frozen Tropics', 'vswaysftropics', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysftropics.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(347, 2, NULL, 'vswaysincwnd', 'Gold Oasis', 'vswaysincwnd', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswaysincwnd.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(348, 2, NULL, 'vs25spgldways', 'Secret City Gold', 'vs25spgldways', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vs25spgldways.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(349, 2, NULL, 'vswayswwhex', 'Wild Wild Bananas', 'vswayswwhex', 'Slot', NULL, 'PROVEDOR/PRAGMATIC/vswayswwhex.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(350, 3, NULL, 'SGReturnToTheFeature', 'Return to the Future', 'SGReturnToTheFeature', 'Slot', NULL, 'PROVEDOR/HABANERO/SGReturnToTheFeature.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(351, 3, NULL, 'SGTabernaDeLosMuertosUltra', 'Tevena de los Muirtos Ultra', 'SGTabernaDeLosMuertosUltra', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTabernaDeLosMuertosUltra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:03:10'),
(352, 3, NULL, 'SGTotemTowers', 'Totem towers', 'SGTotemTowers', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTotemTowers.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(353, 3, NULL, 'SGChristmasGiftRush', 'Christmas Kipoot Rush', 'SGChristmasGiftRush', 'Slot', NULL, 'PROVEDOR/HABANERO/SGChristmasGiftRush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(354, 3, NULL, 'SGOrbsOfAtlantis', 'Overs of Atlantis', 'SGOrbsOfAtlantis', 'Slot', NULL, 'PROVEDOR/HABANERO/SGOrbsOfAtlantis.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(355, 3, NULL, 'SGBeforeTimeRunsOut', 'Before Time Runner Out', 'SGBeforeTimeRunsOut', 'Slot', NULL, 'PROVEDOR/HABANERO/SGBeforeTimeRunsOut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(356, 3, NULL, 'SGTechnoTumble', 'Techno tumble', 'SGTechnoTumble', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTechnoTumble.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(358, 3, NULL, 'SGHappyApe', 'Happy ape', 'SGHappyApe', 'Slot', NULL, 'PROVEDOR/HABANERO/SGHappyApe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(359, 3, NULL, 'SGTabernaDeLosMuertos', 'Tevena di los Muertos', 'SGTabernaDeLosMuertos', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTabernaDeLosMuertos.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(360, 3, NULL, 'SGNaughtySanta', 'Notty Santa', 'SGNaughtySanta', 'Slot', NULL, 'PROVEDOR/HABANERO/SGNaughtySanta.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(361, 3, NULL, 'SGFaCaiShenDeluxe', 'Pakai Sen Deluxe', 'SGFaCaiShenDeluxe', 'Slot', NULL, 'PROVEDOR/HABANERO/SGFaCaiShenDeluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(362, 3, NULL, 'SGHeySushi', 'Hey sushi', 'SGHeySushi', 'Slot', NULL, 'PROVEDOR/HABANERO/SGHeySushi.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(363, 3, NULL, 'SGKnockoutFootballRush', 'Knockout football rush', 'SGKnockoutFootballRush', 'Slot', NULL, 'PROVEDOR/HABANERO/SGKnockoutFootballRush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(364, 3, NULL, 'SGColossalGems', 'Closal Gems', 'SGColossalGems', 'Slot', NULL, 'PROVEDOR/HABANERO/SGColossalGems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(365, 3, NULL, 'SGHotHotHalloween', 'hot hot halloween', 'SGHotHotHalloween', 'Slot', NULL, 'PROVEDOR/HABANERO/SGHotHotHalloween.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(366, 3, NULL, 'SGLuckyFortuneCat', 'Lucky fortune cat', 'SGLuckyFortuneCat', 'Slot', NULL, 'PROVEDOR/HABANERO/SGLuckyFortuneCat.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(367, 3, NULL, 'SGHotHotFruit', 'hot hot fruit', 'SGHotHotFruit', 'Slot', NULL, 'PROVEDOR/HABANERO/SGHotHotFruit.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(368, 3, NULL, 'SGMountMazuma', 'Mount Majuma', 'SGMountMazuma', 'Slot', NULL, 'PROVEDOR/HABANERO/SGMountMazuma.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(369, 3, NULL, 'SGWildTrucks', 'Wild Trucks', 'SGWildTrucks', 'Slot', NULL, 'PROVEDOR/HABANERO/SGWildTrucks.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(370, 3, NULL, 'SGLuckyLucky', 'Lucky Lucky', 'SGLuckyLucky', 'Slot', NULL, 'PROVEDOR/HABANERO/SGLuckyLucky.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(371, 3, NULL, 'SGKnockoutFootball', 'Knockout football', 'SGKnockoutFootball', 'Slot', NULL, 'PROVEDOR/HABANERO/SGKnockoutFootball.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(372, 3, NULL, 'SGJump', 'Jump!', 'SGJump', 'Slot', NULL, 'PROVEDOR/HABANERO/SGJump.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(373, 3, NULL, 'SGPumpkinPatch', 'Pumpkin patch', 'SGPumpkinPatch', 'Slot', NULL, 'PROVEDOR/HABANERO/SGPumpkinPatch.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:03:54'),
(374, 3, NULL, 'SGWaysOfFortune', 'Way of Fortune', 'SGWaysOfFortune', 'Slot', NULL, 'PROVEDOR/HABANERO/SGWaysOfFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(375, 3, NULL, 'SGFourDivineBeasts', 'For Devine Beasts', 'SGFourDivineBeasts', 'Slot', NULL, 'PROVEDOR/HABANERO/SGFourDivineBeasts.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(376, 3, NULL, 'SGPandaPanda', 'Panda panda', 'SGPandaPanda', 'Slot', NULL, 'PROVEDOR/HABANERO/SGPandaPanda.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(377, 3, NULL, 'SGOceansCall', 'Ocean s Call', 'SGOceansCall', 'Slot', NULL, 'PROVEDOR/HABANERO/SGOceansCall.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(378, 3, NULL, 'SGScruffyScallywags', 'Scruffy Skellywex', 'SGScruffyScallywags', 'Slot', NULL, 'PROVEDOR/HABANERO/SGScruffyScallywags.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(379, 3, NULL, 'SGNuwa', 'Nuwa', 'SGNuwa', 'Slot', NULL, 'PROVEDOR/HABANERO/SGNuwa.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(380, 3, NULL, 'SGTheKoiGate', 'Koi gate', 'SGTheKoiGate', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTheKoiGate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(381, 3, NULL, 'SGFaCaiShen', 'Pacaishen', 'SGFaCaiShen', 'Slot', NULL, 'PROVEDOR/HABANERO/SGFaCaiShen.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(382, 3, NULL, 'SG12Zodiacs', '12 zodiacs', 'SG12Zodiacs', 'Slot', NULL, 'PROVEDOR/HABANERO/SG12Zodiacs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(383, 3, NULL, 'SGFireRooster', 'Fire rooster', 'SGFireRooster', 'Slot', NULL, 'PROVEDOR/HABANERO/SGFireRooster.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(384, 3, NULL, 'SGFenghuang', 'Phoenix', 'SGFenghuang', 'Slot', NULL, 'PROVEDOR/HABANERO/SGFenghuang.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(385, 3, NULL, 'SGBirdOfThunder', 'Bird of Thunder', 'SGBirdOfThunder', 'Slot', NULL, 'PROVEDOR/HABANERO/SGBirdOfThunder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(386, 3, NULL, 'SGTheDeadEscape', 'The Dead Escape', 'SGTheDeadEscape', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTheDeadEscape.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(387, 3, NULL, 'SGBombsAway', 'Bombs Away', 'SGBombsAway', 'Slot', NULL, 'PROVEDOR/HABANERO/SGBombsAway.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(388, 3, NULL, 'SGGoldRush', 'Gold rush', 'SGGoldRush', 'Slot', NULL, 'PROVEDOR/HABANERO/SGGoldRush.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(389, 3, NULL, 'SGRuffledUp', 'Ruffled up', 'SGRuffledUp', 'Slot', NULL, 'PROVEDOR/HABANERO/SGRuffledUp.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(390, 3, NULL, 'SGRomanEmpire', 'Roman empire', 'SGRomanEmpire', 'Slot', NULL, 'PROVEDOR/HABANERO/SGRomanEmpire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(391, 3, NULL, 'SGCoyoteCrash', 'Coyote crash', 'SGCoyoteCrash', 'Slot', NULL, 'PROVEDOR/HABANERO/SGCoyoteCrash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(392, 3, NULL, 'SGWickedWitch', 'Wickt Location', 'SGWickedWitch', 'Slot', NULL, 'PROVEDOR/HABANERO/SGWickedWitch.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(393, 3, NULL, 'SGDragonsThrone', 'Dragon s Throne', 'SGDragonsThrone', 'Slot', NULL, 'PROVEDOR/HABANERO/SGDragonsThrone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(394, 3, NULL, 'SGBuggyBonus', 'Buggy bonus', 'SGBuggyBonus', 'Slot', NULL, 'PROVEDOR/HABANERO/SGBuggyBonus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(395, 3, NULL, 'SGGlamRock', 'Glam rock', 'SGGlamRock', 'Slot', NULL, 'PROVEDOR/HABANERO/SGGlamRock.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(396, 3, NULL, 'SGSuperTwister', 'Super twister', 'SGSuperTwister', 'Slot', NULL, 'PROVEDOR/HABANERO/SGSuperTwister.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(398, 3, NULL, 'SGTreasureTomb', 'Treasure Tomb', 'SGTreasureTomb', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTreasureTomb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(399, 3, NULL, 'SGJugglenaut', 'Jugglenut', 'SGJugglenaut', 'Slot', NULL, 'PROVEDOR/HABANERO/SGJugglenaut.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(400, 3, NULL, 'SGGalacticCash', 'Glactic Cash', 'SGGalacticCash', 'Slot', NULL, 'PROVEDOR/HABANERO/SGGalacticCash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(401, 3, NULL, 'SGZeus2', 'Zeus 2', 'SGZeus2', 'Slot', NULL, 'PROVEDOR/HABANERO/SGZeus2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(402, 3, NULL, 'SGTheDragonCastle', 'Dragon castle', 'SGTheDragonCastle', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTheDragonCastle.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(403, 3, NULL, 'SGKingTutsTomb', 'King Teeth Tomb', 'SGKingTutsTomb', 'Slot', NULL, 'PROVEDOR/HABANERO/SGKingTutsTomb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(404, 3, NULL, 'SGCarnivalCash', 'Carnival cash', 'SGCarnivalCash', 'Slot', NULL, 'PROVEDOR/HABANERO/SGCarnivalCash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(405, 3, NULL, 'SGTreasureDiver', 'Treasure diver', 'SGTreasureDiver', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTreasureDiver.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(406, 3, NULL, 'SGLittleGreenMoney', 'Little Green Money', 'SGLittleGreenMoney', 'Slot', NULL, 'PROVEDOR/HABANERO/SGLittleGreenMoney.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(407, 3, NULL, 'SGMonsterMashCash', 'Monster Mash Cash', 'SGMonsterMashCash', 'Slot', NULL, 'PROVEDOR/HABANERO/SGMonsterMashCash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(408, 3, NULL, 'SGShaolinFortunes100', 'Xiaolin Fortune 100', 'SGShaolinFortunes100', 'Slot', NULL, 'PROVEDOR/HABANERO/SGShaolinFortunes100.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(409, 3, NULL, 'SGShaolinFortunes243', 'Xiaolin Fortune', 'SGShaolinFortunes243', 'Slot', NULL, 'PROVEDOR/HABANERO/SGShaolinFortunes243.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(410, 3, NULL, 'SGWeirdScience', 'Weird Science', 'SGWeirdScience', 'Slot', NULL, 'PROVEDOR/HABANERO/SGWeirdScience.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(411, 3, NULL, 'SGBlackbeardsBounty', 'Blackbeards Bounty', 'SGBlackbeardsBounty', 'Slot', NULL, 'PROVEDOR/HABANERO/SGBlackbeardsBounty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(412, 3, NULL, 'SGDrFeelgood', 'Dr. Feelgood', 'SGDrFeelgood', 'Slot', NULL, 'PROVEDOR/HABANERO/SGDrFeelgood.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(413, 3, NULL, 'SGVikingsPlunder', 'Vikings plunder', 'SGVikingsPlunder', 'Slot', NULL, 'PROVEDOR/HABANERO/SGVikingsPlunder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(414, 3, NULL, 'SGDoubleODollars', 'Double O Dollars', 'SGDoubleODollars', 'Slot', NULL, 'PROVEDOR/HABANERO/SGDoubleODollars.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(415, 3, NULL, 'SGSpaceFortune', 'Space fortune', 'SGSpaceFortune', 'Slot', NULL, 'PROVEDOR/HABANERO/SGSpaceFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(416, 3, NULL, 'SGPamperMe', 'Pamper me', 'SGPamperMe', 'Slot', NULL, 'PROVEDOR/HABANERO/SGPamperMe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(417, 3, NULL, 'SGZeus', 'Zeus', 'SGZeus', 'Slot', NULL, 'PROVEDOR/HABANERO/SGZeus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:01:40'),
(420, 3, NULL, 'SGEgyptianDreams', 'Egyptian Dreams', 'SGEgyptianDreams', 'Slot', NULL, 'PROVEDOR/HABANERO/SGEgyptianDreams.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(421, 3, NULL, 'SGBarnstormerBucks', 'Barnstormer Bucks', 'SGBarnstormerBucks', 'Slot', NULL, 'PROVEDOR/HABANERO/SGBarnstormerBucks.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(422, 3, NULL, 'SGSuperStrike', 'Super strike', 'SGSuperStrike', 'Slot', NULL, 'PROVEDOR/HABANERO/SGSuperStrike.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(423, 3, NULL, 'SGJungleRumble', 'Jungle rumble', 'SGJungleRumble', 'Slot', NULL, 'PROVEDOR/HABANERO/SGJungleRumble.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(424, 3, NULL, 'SGArcticWonders', 'Arctic Wonders', 'SGArcticWonders', 'Slot', NULL, 'PROVEDOR/HABANERO/SGArcticWonders.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:01:23'),
(425, 3, NULL, 'SGTowerOfPizza', 'Tower of Pizza', 'SGTowerOfPizza', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTowerOfPizza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(426, 3, NULL, 'SGMummyMoney', 'Mummy money', 'SGMummyMoney', 'Slot', NULL, 'PROVEDOR/HABANERO/SGMummyMoney.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:03:23'),
(427, 3, NULL, 'SGBikiniIsland', 'bikini island', 'SGBikiniIsland', 'Slot', NULL, 'PROVEDOR/HABANERO/SGBikiniIsland.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(428, 3, NULL, 'SGQueenOfQueens1024', 'Queen of Queens II', 'SGQueenOfQueens1024', 'Slot', NULL, 'PROVEDOR/HABANERO/SGQueenOfQueens1024.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(429, 3, NULL, 'SGDragonsRealm', 'Dragon s Realm', 'SGDragonsRealm', 'Slot', NULL, 'PROVEDOR/HABANERO/SGDragonsRealm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(430, 3, NULL, 'SGAllForOne', 'All for one', 'SGAllForOne', 'Slot', NULL, 'PROVEDOR/HABANERO/SGAllForOne.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(431, 3, NULL, 'SGFlyingHigh', 'Flying high', 'SGFlyingHigh', 'Slot', NULL, 'PROVEDOR/HABANERO/SGFlyingHigh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(432, 3, NULL, 'SGMrBling', 'Mr. Bling', 'SGMrBling', 'Slot', NULL, 'PROVEDOR/HABANERO/SGMrBling.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(433, 3, NULL, 'SGMysticFortune', 'Mystic Fortune', 'SGMysticFortune', 'Slot', NULL, 'PROVEDOR/HABANERO/SGMysticFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(437, 3, NULL, 'SGQueenOfQueens243', 'Queen of queens', 'SGQueenOfQueens243', 'Slot', NULL, 'PROVEDOR/HABANERO/SGQueenOfQueens243.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(439, 3, NULL, 'SGGrapeEscape', 'The Graph Escape', 'SGGrapeEscape', 'Slot', NULL, 'PROVEDOR/HABANERO/SGGrapeEscape.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(440, 3, NULL, 'SGGoldenUnicorn', 'Golden unicorn', 'SGGoldenUnicorn', 'Slot', NULL, 'PROVEDOR/HABANERO/SGGoldenUnicorn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(441, 3, NULL, 'SGFrontierFortunes', 'Frontier Fortune', 'SGFrontierFortunes', 'Slot', NULL, 'PROVEDOR/HABANERO/SGFrontierFortunes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(442, 3, NULL, 'SGIndianCashCatcher', 'Indian Cash Catcher', 'SGIndianCashCatcher', 'Slot', NULL, 'PROVEDOR/HABANERO/SGIndianCashCatcher.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(443, 3, NULL, 'SGSkysTheLimit', 'Skys the Limit', 'SGSkysTheLimit', 'Slot', NULL, 'PROVEDOR/HABANERO/SGSkysTheLimit.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:02:56'),
(444, 3, NULL, 'SGTheBigDeal', 'The Big Deal', 'SGTheBigDeal', 'Slot', NULL, 'PROVEDOR/HABANERO/SGTheBigDeal.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(445, 3, NULL, 'SGCashosaurus', 'Cashosaurus', 'SGCashosaurus', 'Slot', NULL, 'PROVEDOR/HABANERO/SGCashosaurus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(446, 3, NULL, 'SGDiscoFunk', 'Disco funk', 'SGDiscoFunk', 'Slot', NULL, 'PROVEDOR/HABANERO/SGDiscoFunk.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(447, 3, NULL, 'SGCalaverasExplosivas', 'Calaveras Explociba', 'SGCalaverasExplosivas', 'Slot', NULL, 'PROVEDOR/HABANERO/SGCalaverasExplosivas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(449, 3, NULL, 'SGNineTails', 'Nine Tales', 'SGNineTails', 'Slot', NULL, 'PROVEDOR/HABANERO/SGNineTails.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(450, 3, NULL, 'SGMysticFortuneDeluxe', 'Mystic Fortune Deluxe', 'SGMysticFortuneDeluxe', 'Slot', NULL, 'PROVEDOR/HABANERO/SGMysticFortuneDeluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(451, 3, NULL, 'SGLuckyDurian', 'Lucky durian', 'SGLuckyDurian', 'Slot', NULL, 'PROVEDOR/HABANERO/SGLuckyDurian.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(452, 3, NULL, 'SGDiscoBeats', 'Disco beat', 'SGDiscoBeats', 'Slot', NULL, 'PROVEDOR/HABANERO/SGDiscoBeats.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(453, 3, NULL, 'SGLanternLuck', 'Lantern lucky', 'SGLanternLuck', 'Slot', NULL, 'PROVEDOR/HABANERO/SGLanternLuck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(454, 3, NULL, 'SGBombRunner', 'Boom runner', 'SGBombRunner', 'Slot', NULL, 'PROVEDOR/HABANERO/SGBombRunner.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(455, 4, NULL, 'sun_of_egypt', 'SUN OF EGYPT', 'sun_of_egypt', 'Slot', NULL, 'PROVEDOR/BOOONGO/sun_of_egypt.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(456, 4, NULL, 'sun_of_egypt_2', 'SUN OF EGYPT 2', 'sun_of_egypt_2', 'Slot', NULL, 'PROVEDOR/BOOONGO/sun_of_egypt_2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(457, 4, NULL, 'happy_fish', 'HAPPY FISH', 'happy_fish', 'Slot', NULL, 'PROVEDOR/BOOONGO/happy_fish.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:50:42'),
(458, 4, NULL, 'queen_of_the_sun', 'QUEEN OF THE SUN', 'queen_of_the_sun', 'Slot', NULL, 'PROVEDOR/BOOONGO/queen_of_the_sun.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(459, 4, NULL, 'tiger_jungle', 'TIGER JUNGLE', 'tiger_jungle', 'Slot', NULL, 'PROVEDOR/BOOONGO/tiger_jungle.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(460, 4, NULL, 'black_wolf', 'BLACK WOLF', 'black_wolf', 'Slot', NULL, 'PROVEDOR/BOOONGO/black_wolf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(461, 4, NULL, 'hit_the_gold', 'HIT THE GOLD', 'hit_the_gold', 'Slot', NULL, 'PROVEDOR/BOOONGO/hit_the_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(462, 4, NULL, 'candy_boom', 'CANDY BOOM', 'candy_boom', 'Slot', NULL, 'PROVEDOR/BOOONGO/candy_boom.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(463, 4, NULL, 'scarab_riches', 'SCARAB RICHES', 'scarab_riches', 'Slot', NULL, 'PROVEDOR/BOOONGO/scarab_riches.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(464, 4, NULL, 'golden_dancing_lion', 'GOLDEN DANCING LION', 'golden_dancing_lion', 'Slot', NULL, 'PROVEDOR/BOOONGO/golden_dancing_lion.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(465, 4, NULL, 'dragon_pearls', 'DRAGON PEARLS', 'dragon_pearls', 'Slot', NULL, 'PROVEDOR/BOOONGO/dragon_pearls.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(466, 4, NULL, '3_coins', '3 COINS', '3_coins', 'Slot', NULL, 'PROVEDOR/BOOONGO/3_coins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(467, 4, NULL, 'super_rich_god', 'SUPER RICH GOD', 'super_rich_god', 'Slot', NULL, 'PROVEDOR/BOOONGO/super_rich_god.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(468, 4, NULL, '15_dragon_pearls', '15 DRAGON PEARLS', '15_dragon_pearls', 'Slot', NULL, 'PROVEDOR/BOOONGO/15_dragon_pearls.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(469, 4, NULL, 'aztec_sun', 'AZTEC SUN', 'aztec_sun', 'Slot', NULL, 'PROVEDOR/BOOONGO/aztec_sun.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(470, 4, NULL, 'scarab_temple', 'SCARAB TEMPLE', 'scarab_temple', 'Slot', NULL, 'PROVEDOR/BOOONGO/scarab_temple.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(471, 4, NULL, 'gods_temple_deluxe', 'GODS TEMPLE DELUXE', 'gods_temple_deluxe', 'Slot', NULL, 'PROVEDOR/BOOONGO/gods_temple_deluxe.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(472, 4, NULL, 'book_of_sun', 'BOOK OF SUN', 'book_of_sun', 'Slot', NULL, 'PROVEDOR/BOOONGO/book_of_sun.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(473, 4, NULL, '777_gems', '777 GEMS', '777_gems', 'Slot', NULL, 'PROVEDOR/BOOONGO/777_gems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(474, 4, NULL, 'book_of_sun_multichance', 'BOOK OF SUN MULTICHANCE', 'book_of_sun_multichance', 'Slot', NULL, 'PROVEDOR/BOOONGO/book_of_sun_multichance.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(475, 4, NULL, 'olympian_gods', 'OLYMPIAN GODS', 'olympian_gods', 'Slot', NULL, 'PROVEDOR/BOOONGO/olympian_gods.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(476, 4, NULL, '777_gems_respin', '777 GEMS RESPIN', '777_gems_respin', 'Slot', NULL, 'PROVEDOR/BOOONGO/777_gems_respin.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(477, 4, NULL, 'tigers_gold', 'TIGERS GOLD', 'tigers_gold', 'Slot', NULL, 'PROVEDOR/BOOONGO/tigers_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(478, 4, NULL, 'moon_sisters', 'MOON SISTERS', 'moon_sisters', 'Slot', NULL, 'PROVEDOR/BOOONGO/moon_sisters.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(479, 4, NULL, 'book_of_sun_choice', 'BOOK OF SUN CHOICE', 'book_of_sun_choice', 'Slot', NULL, 'PROVEDOR/BOOONGO/book_of_sun_choice.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(480, 4, NULL, 'super_marble', 'SUPER MARBLE', 'super_marble', 'Slot', NULL, 'PROVEDOR/BOOONGO/super_marble.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(481, 4, NULL, 'buddha_fortune', 'BUDDHA FORTUNE', 'buddha_fortune', 'Slot', NULL, 'PROVEDOR/BOOONGO/buddha_fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(482, 4, NULL, 'great_panda', 'GREAT PANDA', 'great_panda', 'Slot', NULL, 'PROVEDOR/BOOONGO/great_panda.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:51:25'),
(483, 4, NULL, '15_golden_eggs', '15 GOLDEN EGGS', '15_golden_eggs', 'Slot', NULL, 'PROVEDOR/BOOONGO/15_golden_eggs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:52:12'),
(484, 4, NULL, 'thunder_of_olympus', 'THUNDER OF OLYMPUS', 'thunder_of_olympus', 'Slot', NULL, 'PROVEDOR/BOOONGO/thunder_of_olympus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(485, 4, NULL, 'eye_of_gold', 'EYE OF GOLD', 'eye_of_gold', 'Slot', NULL, 'PROVEDOR/BOOONGO/eye_of_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(486, 4, NULL, 'tiger_stone', 'TIGER STONE', 'tiger_stone', 'Slot', NULL, 'PROVEDOR/BOOONGO/tiger_stone.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(487, 4, NULL, 'magic_apple', 'MAGIC APPLE', 'magic_apple', 'Slot', NULL, 'PROVEDOR/BOOONGO/magic_apple.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(488, 4, NULL, 'wolf_saga', 'WOLF SAGA', 'wolf_saga', 'Slot', NULL, 'PROVEDOR/BOOONGO/wolf_saga.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(489, 4, NULL, 'magic_ball', 'MAGIC BALL', 'magic_ball', 'Slot', NULL, 'PROVEDOR/BOOONGO/magic_ball.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(490, 4, NULL, 'scarab_boost', 'SCARAB BOOST', 'scarab_boost', 'Slot', NULL, 'PROVEDOR/BOOONGO/scarab_boost.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(491, 4, NULL, 'wukong', 'WUKONG', 'wukong', 'Slot', NULL, 'PROVEDOR/BOOONGO/wukong.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(492, 4, NULL, 'pearl_diver', 'PEARL DIVER', 'pearl_diver', 'Slot', NULL, 'PROVEDOR/BOOONGO/pearl_diver.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(493, 4, NULL, '3_coins_egypt', '3 COINS EGYPT', '3_coins_egypt', 'Slot', NULL, 'PROVEDOR/BOOONGO/3_coins_egypt.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(494, 4, NULL, 'ganesha_boost', 'GANESHA BOOST', 'ganesha_boost', 'Slot', NULL, 'PROVEDOR/BOOONGO/ganesha_boost.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(495, 4, NULL, 'wolf_night', 'WOLF NIGHT', 'wolf_night', 'Slot', NULL, 'PROVEDOR/BOOONGO/wolf_night.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(496, 4, NULL, 'book_of_wizard', 'BOOK OF WIZARD', 'book_of_wizard', 'Slot', NULL, 'PROVEDOR/BOOONGO/book_of_wizard.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(497, 4, NULL, 'lord_fortune_2', 'LORD FORTUNE 2', 'lord_fortune_2', 'Slot', NULL, 'PROVEDOR/BOOONGO/lord_fortune_2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:51:42'),
(498, 4, NULL, 'gold_express', 'GOLD EXPRESS', 'gold_express', 'Slot', NULL, 'PROVEDOR/BOOONGO/gold_express.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:52:03'),
(499, 4, NULL, 'book_of_wizard_crystal', 'BOOK OF WIZARD CRYSTAL', 'book_of_wizard_crystal', 'Slot', NULL, 'PROVEDOR/BOOONGO/book_of_wizard_crystal.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(500, 4, NULL, 'pearl_diver_2', 'PEARL DIVER 2', 'pearl_diver_2', 'Slot', NULL, 'PROVEDOR/BOOONGO/pearl_diver_2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(501, 4, NULL, 'sun_of_egypt_3', 'SUN OF EGYPT 3', 'sun_of_egypt_3', 'Slot', NULL, 'PROVEDOR/BOOONGO/sun_of_egypt_3.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(502, 4, NULL, 'caishen_wealth', 'CAISHEN WEALTH', 'caishen_wealth', 'Slot', NULL, 'PROVEDOR/BOOONGO/caishen_wealth.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(503, 4, NULL, 'aztec_fire', 'AZTEC FIRE', 'aztec_fire', 'Slot', NULL, 'PROVEDOR/BOOONGO/aztec_fire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:51:13'),
(504, 5, NULL, 'hand_of_gold', 'HAND OF GOLD', 'hand_of_gold', 'Slot', NULL, 'PROVEDOR/PLAYSON/hand_of_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(505, 5, NULL, 'legend_of_cleopatra', 'LEGEND OF CLEOPATRA', 'legend_of_cleopatra', 'Slot', NULL, 'PROVEDOR/PLAYSON/legend_of_cleopatra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-30 20:36:01'),
(506, 5, NULL, '40_joker_staxx', '40 JOKER STAXX', '40_joker_staxx', 'Slot', NULL, 'PROVEDOR/PLAYSON/40_joker_staxx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:43'),
(507, 5, NULL, 'burning_wins', 'BURNING WINS', 'burning_wins', 'Slot', NULL, 'PROVEDOR/PLAYSON/burning_wins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:36'),
(508, 5, NULL, 'book_of_gold', 'BOOK OF GOLD', 'book_of_gold', 'Slot', NULL, 'PROVEDOR/PLAYSON/book_of_gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:38'),
(509, 5, NULL, '100_joker_staxx', '100 JOKER STAXX', '100_joker_staxx', 'Slot', NULL, 'PROVEDOR/PLAYSON/100_joker_staxx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(510, 5, NULL, 'book_of_gold_classic', 'BOOK OF GOLD CLASSIC', 'book_of_gold_classic', 'Slot', NULL, 'PROVEDOR/PLAYSON/book_of_gold_classic.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:40'),
(511, 5, NULL, 'buffalo_xmas', 'BUFFALO XMAS', 'buffalo_xmas', 'Slot', NULL, 'PROVEDOR/PLAYSON/buffalo_xmas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 19:05:41'),
(512, 6, NULL, '67', 'Golden eggs', '67', 'Slot', NULL, 'PROVEDOR/CQ9/67.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(513, 6, NULL, '161', 'Hercules', '161', 'Slot', NULL, 'PROVEDOR/CQ9/161.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(514, 6, NULL, '16', 'Super 5', '16', 'Slot', NULL, 'PROVEDOR/CQ9/16.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(515, 6, NULL, '72', 'Happy Rich Year', '72', 'Slot', NULL, 'PROVEDOR/CQ9/72.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(516, 6, NULL, '1', 'Fruit King', '1', 'Slot', NULL, 'PROVEDOR/CQ9/1.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(517, 6, NULL, '163', 'Neja Advent', '163', 'Slot', NULL, 'PROVEDOR/CQ9/163.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(518, 6, NULL, '26', '777', '26', 'Slot', NULL, 'PROVEDOR/CQ9/26.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(519, 6, NULL, '50', 'Good fortune', '50', 'Slot', NULL, 'PROVEDOR/CQ9/50.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(520, 6, NULL, '31', 'God of war', '31', 'Slot', NULL, 'PROVEDOR/CQ9/31.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(521, 6, NULL, '64', 'Zeus', '64', 'Slot', NULL, 'PROVEDOR/CQ9/64.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(522, 6, NULL, '69', 'Pasaycen', '69', 'Slot', NULL, 'PROVEDOR/CQ9/69.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(523, 6, NULL, '89', 'Thor', '89', 'Slot', NULL, 'PROVEDOR/CQ9/89.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:53:28'),
(524, 6, NULL, '46', 'Wolf moon', '46', 'Slot', NULL, 'PROVEDOR/CQ9/46.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(525, 6, NULL, '139', 'Fire chibi', '139', 'Slot', NULL, 'PROVEDOR/CQ9/139.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(526, 6, NULL, '15', 'Gu Gu Gu', '15', 'Slot', NULL, 'PROVEDOR/CQ9/15.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(527, 6, NULL, '140', 'Fire Chibi 2', '140', 'Slot', NULL, 'PROVEDOR/CQ9/140.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(528, 6, NULL, '8', 'So Sweet', '8', 'Slot', NULL, 'PROVEDOR/CQ9/8.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:53:06'),
(529, 6, NULL, '147', 'Flower fortune', '147', 'Slot', NULL, 'PROVEDOR/CQ9/147.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(530, 6, NULL, '113', 'Flying Kai Shen', '113', 'Slot', NULL, 'PROVEDOR/CQ9/113.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(531, 6, NULL, '58', 'Gu Gu Gu 2', '58', 'Slot', NULL, 'PROVEDOR/CQ9/58.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(532, 6, NULL, '128', 'Wheel money', '128', 'Slot', NULL, 'PROVEDOR/CQ9/128.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(533, 6, NULL, '5', 'Mr Rich', '5', 'Slot', NULL, 'PROVEDOR/CQ9/5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(534, 6, NULL, '180', 'Gu Gu Gu 3', '180', 'Slot', NULL, 'PROVEDOR/CQ9/180.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:53:39'),
(535, 6, NULL, '118', 'SkullSkull', '118', 'Slot', NULL, 'PROVEDOR/CQ9/118.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(536, 6, NULL, '148', 'Fortune totem', '148', 'Slot', NULL, 'PROVEDOR/CQ9/148.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(537, 6, NULL, '144', 'Diamond treasure', '144', 'Slot', NULL, 'PROVEDOR/CQ9/144.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(538, 6, NULL, '19', 'Hot spin', '19', 'Slot', NULL, 'PROVEDOR/CQ9/19.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:53:19'),
(539, 6, NULL, '112', 'Pyramid radar', '112', 'Slot', NULL, 'PROVEDOR/CQ9/112.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(540, 6, NULL, '160', 'Pa Kai Shen2', '160', 'Slot', NULL, 'PROVEDOR/CQ9/160.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(542, 6, NULL, '47', 'Pharaoh gold', '47', 'Slot', NULL, 'PROVEDOR/CQ9/47.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:54:22'),
(543, 6, NULL, '13', 'Sakura legend', '13', 'Slot', NULL, 'PROVEDOR/CQ9/13.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(544, 6, NULL, '34', 'Gopher s War', '34', 'Slot', NULL, 'PROVEDOR/CQ9/34.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(545, 6, NULL, '59', 'Summer mood', '59', 'Slot', NULL, 'PROVEDOR/CQ9/59.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(547, 6, NULL, '95', 'Football boots', '95', 'Slot', NULL, 'PROVEDOR/CQ9/95.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(548, 6, NULL, '57', 'The Beast War', '57', 'Slot', NULL, 'PROVEDOR/CQ9/57.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(549, 6, NULL, '17', 'Great lion', '17', 'Slot', NULL, 'PROVEDOR/CQ9/17.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(550, 6, NULL, '20', '888', '20', 'Slot', NULL, 'PROVEDOR/CQ9/20.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(551, 6, NULL, '182', 'Thor 2', '182', 'Slot', NULL, 'PROVEDOR/CQ9/182.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(552, 6, NULL, '66', 'Fire 777', '66', 'Slot', NULL, 'PROVEDOR/CQ9/66.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(553, 6, NULL, '2', 'God of Chess', '2', 'Slot', NULL, 'PROVEDOR/CQ9/2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(554, 6, NULL, '21', 'Big wolf', '21', 'Slot', NULL, 'PROVEDOR/CQ9/21.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(555, 6, NULL, '197', 'Dragon s Treasure', '197', 'Slot', NULL, 'PROVEDOR/CQ9/197.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:54:20'),
(556, 6, NULL, '208', 'Money tree', '208', 'Slot', NULL, 'PROVEDOR/CQ9/208.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(557, 6, NULL, '212', 'Burning Si-Yow', '212', 'Slot', NULL, 'PROVEDOR/CQ9/212.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(558, 6, NULL, '214', 'Ninja raccoon', '214', 'Slot', NULL, 'PROVEDOR/CQ9/214.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(559, 6, NULL, '218', 'Dollar night', '218', 'Slot', NULL, 'PROVEDOR/CQ9/218.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(560, 7, NULL, 'greatwall', 'The Great Wall Treasure', 'greatwall', 'Slot', NULL, 'PROVEDOR/EVOPLAY/greatwall.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(561, 7, NULL, 'chinesenewyear', 'Chinese New Year', 'chinesenewyear', 'Slot', NULL, 'PROVEDOR/EVOPLAY/chinesenewyear.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(562, 7, NULL, 'jewellerystore', 'Jewelry store', 'jewellerystore', 'Slot', NULL, 'PROVEDOR/EVOPLAY/jewellerystore.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(563, 7, NULL, 'redcliff', 'Red cliff', 'redcliff', 'Slot', NULL, 'PROVEDOR/EVOPLAY/redcliff.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(564, 7, NULL, 'ElvenPrincesses', 'Elven Princess', 'ElvenPrincesses', 'Slot', NULL, 'PROVEDOR/EVOPLAY/ElvenPrincesses.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(565, 7, NULL, 'robinzon', 'Robinson', 'robinzon', 'Slot', NULL, 'PROVEDOR/EVOPLAY/robinzon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(566, 7, NULL, 'aeronauts', 'Aeronauts', 'aeronauts', 'Slot', NULL, 'PROVEDOR/EVOPLAY/aeronauts.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(567, 7, NULL, 'monsterlab', 'Monster rap', 'monsterlab', 'Slot', NULL, 'PROVEDOR/EVOPLAY/monsterlab.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(568, 7, NULL, 'TriptotheFuture', 'Trip to the Future', 'TriptotheFuture', 'Slot', NULL, 'PROVEDOR/EVOPLAY/TriptotheFuture.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(569, 7, NULL, 'NukeWorld', 'Nook World', 'NukeWorld', 'Slot', NULL, 'PROVEDOR/EVOPLAY/NukeWorld.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(570, 7, NULL, 'legendofkaan', 'Legend of Khan', 'legendofkaan', 'Slot', NULL, 'PROVEDOR/EVOPLAY/legendofkaan.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(571, 7, NULL, 'LivingTales', 'Night of the Living Tales', 'LivingTales', 'Slot', NULL, 'PROVEDOR/EVOPLAY/LivingTales.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(572, 7, NULL, 'IceMania', 'Ice mania', 'IceMania', 'Slot', NULL, 'PROVEDOR/EVOPLAY/IceMania.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:58:16'),
(573, 7, NULL, 'ValleyOfDreams', 'Valley of Dreams', 'ValleyOfDreams', 'Slot', NULL, 'PROVEDOR/EVOPLAY/ValleyOfDreams.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(574, 7, NULL, 'FruitNova', 'Fruit Nova', 'FruitNova', 'Slot', NULL, 'PROVEDOR/EVOPLAY/FruitNova.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(575, 7, NULL, 'TreeOfLight', 'Tree of light', 'TreeOfLight', 'Slot', NULL, 'PROVEDOR/EVOPLAY/TreeOfLight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(576, 7, NULL, 'TempleOfDead', 'Temple of the dead', 'TempleOfDead', 'Slot', NULL, 'PROVEDOR/EVOPLAY/TempleOfDead.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(577, 7, NULL, 'RunesOfDestiny', 'Runes of Destiny', 'RunesOfDestiny', 'Slot', NULL, 'PROVEDOR/EVOPLAY/RunesOfDestiny.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(578, 7, NULL, 'EllensFortune', 'Ellen Fortune', 'EllensFortune', 'Slot', NULL, 'PROVEDOR/EVOPLAY/EllensFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(579, 7, NULL, 'UnlimitedWishes', 'Unlimited Wishes', 'UnlimitedWishes', 'Slot', NULL, 'PROVEDOR/EVOPLAY/UnlimitedWishes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(580, 7, NULL, 'FoodFeast', 'Food fist', 'FoodFeast', 'Slot', NULL, 'PROVEDOR/EVOPLAY/FoodFeast.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:58:37'),
(581, 7, NULL, 'EpicLegends', 'Epic legends', 'EpicLegends', 'Slot', NULL, 'PROVEDOR/EVOPLAY/EpicLegends.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(582, 7, NULL, 'SweetSugar', 'Sweet sugar', 'SweetSugar', 'Slot', NULL, 'PROVEDOR/EVOPLAY/SweetSugar.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(583, 7, NULL, 'CycleofLuck', 'Cycle of Luck', 'CycleofLuck', 'Slot', NULL, 'PROVEDOR/EVOPLAY/CycleofLuck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:57:54'),
(584, 7, NULL, 'GangsterNight', 'Gangster night', 'GangsterNight', 'Slot', NULL, 'PROVEDOR/EVOPLAY/GangsterNight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(585, 7, NULL, 'GoldOfSirens', 'Gold of sirens', 'GoldOfSirens', 'Slot', NULL, 'PROVEDOR/EVOPLAY/GoldOfSirens.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:58:09'),
(586, 7, NULL, 'BloodyBrilliant', 'Bloody brilliant', 'BloodyBrilliant', 'Slot', NULL, 'PROVEDOR/EVOPLAY/BloodyBrilliant.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(587, 7, NULL, 'TempleOfDeadBonusBuy', 'Temple of the Dead BB', 'TempleOfDeadBonusBuy', 'Slot', NULL, 'PROVEDOR/EVOPLAY/TempleOfDeadBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(588, 7, NULL, 'ShadowOfLuxor', 'Shadow of Luxor', 'ShadowOfLuxor', 'Slot', NULL, 'PROVEDOR/EVOPLAY/ShadowOfLuxor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(589, 7, NULL, 'CycleofLuckBonusBuy', 'Cycle of Luck BB', 'CycleofLuckBonusBuy', 'Slot', NULL, 'PROVEDOR/EVOPLAY/CycleofLuckBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(590, 7, NULL, 'AnubisMoon', 'Anubis moon', 'AnubisMoon', 'Slot', NULL, 'PROVEDOR/EVOPLAY/AnubisMoon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(591, 7, NULL, 'FruitDisco', 'Fruit disco', 'FruitDisco', 'Slot', NULL, 'PROVEDOR/EVOPLAY/FruitDisco.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:58:30'),
(592, 7, NULL, 'FruitSuperNova30', 'Fruit Super Nova 30', 'FruitSuperNova30', 'Slot', NULL, 'PROVEDOR/EVOPLAY/FruitSuperNova30.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(593, 7, NULL, 'CurseOfThePharaoh', 'Curse of the Pharaoh', 'CurseOfThePharaoh', 'Slot', NULL, 'PROVEDOR/EVOPLAY/CurseOfThePharaoh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(594, 7, NULL, 'GoldOfSirensBonusBuy', 'Gold of Sirens BB', 'GoldOfSirensBonusBuy', 'Slot', NULL, 'PROVEDOR/EVOPLAY/GoldOfSirensBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(595, 7, NULL, 'FruitSuperNova60', 'Fruit Super Nova 60', 'FruitSuperNova60', 'Slot', NULL, 'PROVEDOR/EVOPLAY/FruitSuperNova60.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(596, 7, NULL, 'CurseofthePharaohBonusBuy', 'Curse of the Pharaoh BB', 'CurseofthePharaohBonusBuy', 'Slot', NULL, 'PROVEDOR/EVOPLAY/CurseofthePharaohBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(597, 7, NULL, 'FruitSuperNova100', 'Fruit Super Nova 100', 'FruitSuperNova100', 'Slot', NULL, 'PROVEDOR/EVOPLAY/FruitSuperNova100.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(599, 7, NULL, 'FruitSuperNova80', 'Whoft Super Nova 80', 'FruitSuperNova80', 'Slot', NULL, 'PROVEDOR/EVOPLAY/FruitSuperNova80.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(600, 7, NULL, 'DragonsTavern', 'Dragons Tavern', 'DragonsTavern', 'Slot', NULL, 'PROVEDOR/EVOPLAY/DragonsTavern.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(601, 7, NULL, 'ChristmasReachBonusBuy', 'Christmas Riti BB', 'ChristmasReachBonusBuy', 'Slot', NULL, 'PROVEDOR/EVOPLAY/ChristmasReachBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(602, 7, NULL, 'WildOverlords', 'Wild overlord', 'WildOverlords', 'Slot', NULL, 'PROVEDOR/EVOPLAY/WildOverlords.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(603, 7, NULL, 'DragonsTavernBonusBuy', 'Dragons Tavern BB', 'DragonsTavernBonusBuy', 'Slot', NULL, 'PROVEDOR/EVOPLAY/DragonsTavernBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(604, 7, NULL, 'BudaiReels', 'Budai reels', 'BudaiReels', 'Slot', NULL, 'PROVEDOR/EVOPLAY/BudaiReels.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(605, 7, NULL, 'BudaiReelsBonusBuy', 'Budai Lils BB', 'BudaiReelsBonusBuy', 'Slot', NULL, 'PROVEDOR/EVOPLAY/BudaiReelsBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(606, 7, NULL, 'MoneyMinter', 'Money minter', 'MoneyMinter', 'Slot', NULL, 'PROVEDOR/EVOPLAY/MoneyMinter.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(609, 7, NULL, 'TheGreatestCatch', 'The Greatest Catch', 'TheGreatestCatch', 'Slot', NULL, 'PROVEDOR/EVOPLAY/TheGreatestCatch.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(611, 7, NULL, 'TreeOfLightBB', 'Tree of Light BB', 'TreeOfLightBB', 'Slot', NULL, 'PROVEDOR/EVOPLAY/TreeOfLightBB.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(612, 7, NULL, 'WolfHiding', 'Wolf Hiding', 'WolfHiding', 'Slot', NULL, 'PROVEDOR/EVOPLAY/WolfHiding.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(613, 7, NULL, 'CaminoDeChili', 'Camino de Chili', 'CaminoDeChili', 'Slot', NULL, 'PROVEDOR/EVOPLAY/CaminoDeChili.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(614, 7, NULL, 'CandyDreamsSweetPlanet', 'candy dreams', 'CandyDreamsSweetPlanet', 'Slot', NULL, 'PROVEDOR/EVOPLAY/CandyDreamsSweetPlanet.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-30 18:58:45'),
(615, 7, NULL, 'WildOverlordsBonusBuy', 'Wild Overlord BB', 'WildOverlordsBonusBuy', 'Slot', NULL, 'PROVEDOR/EVOPLAY/WildOverlordsBonusBuy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(616, 7, NULL, 'TempleOfThunder', 'Temple of Thunder', 'TempleOfThunder', 'Slot', NULL, 'PROVEDOR/EVOPLAY/TempleOfThunder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(617, 8, NULL, 'WildTriads', 'WildTriads', 'WildTriads', 'Slot', NULL, 'PROVEDOR/TOPTREND/WildTriads.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(618, 8, NULL, 'GoldenDragon', 'Golden Dragon', 'GoldenDragon', 'Slot', NULL, 'PROVEDOR/TOPTREND/GoldenDragon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 19:55:10'),
(619, 8, NULL, 'ReelsOfFortune', 'Reels Of Fortune', 'ReelsOfFortune', 'Slot', NULL, 'PROVEDOR/TOPTREND/ReelsOfFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(620, 8, NULL, 'GoldenAmazon', 'Golden Amazon', 'GoldenAmazon', 'Slot', NULL, 'PROVEDOR/TOPTREND/GoldenAmazon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(621, 8, NULL, 'MonkeyLuck', 'MonkeyLuck', 'MonkeyLuck', 'Slot', NULL, 'PROVEDOR/TOPTREND/MonkeyLuck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(622, 8, NULL, 'LeagueOfChampions', 'League Of Champions', 'LeagueOfChampions', 'Slot', NULL, 'PROVEDOR/TOPTREND/LeagueOfChampions.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(623, 8, NULL, 'MadMonkeyH5', 'MadMonkey', 'MadMonkeyH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/MadMonkeyH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(624, 8, NULL, 'DynastyEmpire', 'Dynasty Empire', 'DynastyEmpire', 'Slot', NULL, 'PROVEDOR/TOPTREND/DynastyEmpire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 19:55:34'),
(625, 8, NULL, 'SuperKids', 'SuperKids', 'SuperKids', 'Slot', NULL, 'PROVEDOR/TOPTREND/SuperKids.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(626, 8, NULL, 'HotVolcanoH5', 'HotVolcano', 'HotVolcanoH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/HotVolcanoH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(627, 8, NULL, 'Huluwa', 'Huluwa', 'Huluwa', 'Slot', NULL, 'PROVEDOR/TOPTREND/Huluwa.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(628, 8, NULL, 'LegendOfLinkH5', 'LegendOfLink', 'LegendOfLinkH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/LegendOfLinkH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(629, 8, NULL, 'DetectiveBlackCat', 'DetectiveBlackCat', 'DetectiveBlackCat', 'Slot', NULL, 'PROVEDOR/TOPTREND/DetectiveBlackCat.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(630, 8, NULL, 'ChilliGoldH5', 'Chilli Gold', 'ChilliGoldH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/ChilliGoldH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(631, 8, NULL, 'SilverLionH5', 'Silver Lion', 'SilverLionH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/SilverLionH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(632, 8, NULL, 'ThunderingZeus', 'ThunderingZeus', 'ThunderingZeus', 'Slot', NULL, 'PROVEDOR/TOPTREND/ThunderingZeus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-31 13:52:06'),
(633, 8, NULL, 'DragonPalaceH5', 'Dragon Palace', 'DragonPalaceH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/DragonPalaceH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(634, 8, NULL, 'MadMonkey2', 'MadMonkey', 'MadMonkey2', 'Slot', NULL, 'PROVEDOR/TOPTREND/MadMonkey2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(635, 8, NULL, 'MedusaCurse', 'Medusa Curse', 'MedusaCurse', 'Slot', NULL, 'PROVEDOR/TOPTREND/MedusaCurse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(636, 8, NULL, 'BattleHeroes', 'Battle Heroes', 'BattleHeroes', 'Slot', NULL, 'PROVEDOR/TOPTREND/BattleHeroes.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(637, 8, NULL, 'NeptunesGoldH5', 'Neptunes Gold', 'NeptunesGoldH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/NeptunesGoldH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(638, 8, NULL, 'HeroesNeverDie', 'Heroes Never Die', 'HeroesNeverDie', 'Slot', NULL, 'PROVEDOR/TOPTREND/HeroesNeverDie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(639, 8, NULL, 'WildWildWitch', 'Wild Wild Witch', 'WildWildWitch', 'Slot', NULL, 'PROVEDOR/TOPTREND/WildWildWitch.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(640, 8, NULL, 'WildKartRacers', 'Wild Kart Racers', 'WildKartRacers', 'Slot', NULL, 'PROVEDOR/TOPTREND/WildKartRacers.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 19:56:11'),
(641, 8, NULL, 'KingDinosaur', 'KingDinosaur', 'KingDinosaur', 'Slot', NULL, 'PROVEDOR/TOPTREND/KingDinosaur.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 19:55:50'),
(642, 8, NULL, 'GoldenGenie', 'GoldenGenie', 'GoldenGenie', 'Slot', NULL, 'PROVEDOR/TOPTREND/GoldenGenie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(643, 8, NULL, 'UltimateFighter', 'UltimateFighter', 'UltimateFighter', 'Slot', NULL, 'PROVEDOR/TOPTREND/UltimateFighter.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(644, 8, NULL, 'EverlastingSpins', 'EverlastingSpins', 'EverlastingSpins', 'Slot', NULL, 'PROVEDOR/TOPTREND/EverlastingSpins.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(645, 8, NULL, 'Zoomania', 'Zoomania', 'Zoomania', 'Slot', NULL, 'PROVEDOR/TOPTREND/Zoomania.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(646, 8, NULL, 'LaserCats', 'Laser Cats', 'LaserCats', 'Slot', NULL, 'PROVEDOR/TOPTREND/LaserCats.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(647, 8, NULL, 'DiamondFortune', 'DiamondFortune', 'DiamondFortune', 'Slot', NULL, 'PROVEDOR/TOPTREND/DiamondFortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-30 12:52:23'),
(648, 8, NULL, 'GoldenClaw', 'GoldenClaw', 'GoldenClaw', 'Slot', NULL, 'PROVEDOR/TOPTREND/GoldenClaw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(649, 8, NULL, 'PandaWarrior', 'PandaWarrior', 'PandaWarrior', 'Slot', NULL, 'PROVEDOR/TOPTREND/PandaWarrior.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(650, 8, NULL, 'RoyalGoldenDragon', 'RoyalGoldenDragon', 'RoyalGoldenDragon', 'Slot', NULL, 'PROVEDOR/TOPTREND/RoyalGoldenDragon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(651, 8, NULL, 'MegaMaya', 'MegaMaya', 'MegaMaya', 'Slot', NULL, 'PROVEDOR/TOPTREND/MegaMaya.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(652, 8, NULL, 'MegaPhoenix', 'MegaPhoenix', 'MegaPhoenix', 'Slot', NULL, 'PROVEDOR/TOPTREND/MegaPhoenix.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(653, 8, NULL, 'DolphinGoldH5', 'DolphinGold', 'DolphinGoldH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/DolphinGoldH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(654, 8, NULL, 'DragonKingH5', 'DragonKing', 'DragonKingH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/DragonKingH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(655, 8, NULL, 'LuckyPandaH5', 'LuckyPanda', 'LuckyPandaH5', 'Slot', NULL, 'PROVEDOR/TOPTREND/LuckyPandaH5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(656, 9, NULL, 'btball5x20', 'Crazy Basketball', 'btball5x20', 'Slot', NULL, 'PROVEDOR/DREAMTECH/btball5x20.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(657, 9, NULL, 'dnp', 'DragonPhoenix Prosper', 'dnp', 'Slot', NULL, 'PROVEDOR/DREAMTECH/dnp.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(658, 9, NULL, 'crystal', 'Glory of Heroes', 'crystal', 'Slot', NULL, 'PROVEDOR/DREAMTECH/crystal.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(659, 9, NULL, 'fls', 'FULUSHOU', 'fls', 'Slot', NULL, 'PROVEDOR/DREAMTECH/fls.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(660, 9, NULL, 'fourss', 'Four Holy Beasts', 'fourss', 'Slot', NULL, 'PROVEDOR/DREAMTECH/fourss.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(661, 9, NULL, 'casino', '3D Slot', 'casino', 'Slot', NULL, 'PROVEDOR/DREAMTECH/casino.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(662, 9, NULL, 'crazy5x243', 'Crazy GO GO GO', 'crazy5x243', 'Slot', NULL, 'PROVEDOR/DREAMTECH/crazy5x243.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(663, 9, NULL, 'rocknight', 'RocknRoll Night', 'rocknight', 'Slot', NULL, 'PROVEDOR/DREAMTECH/rocknight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(664, 9, NULL, 'bluesea', 'Blue Sea', 'bluesea', 'Slot', NULL, 'PROVEDOR/DREAMTECH/bluesea.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(665, 9, NULL, 'circus', 'Crazy Circus', 'circus', 'Slot', NULL, 'PROVEDOR/DREAMTECH/circus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(666, 9, NULL, 'bikini', 'Bikini Party', 'bikini', 'Slot', NULL, 'PROVEDOR/DREAMTECH/bikini.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(667, 9, NULL, 'foryouth5x25', 'SO YOUNG', 'foryouth5x25', 'Slot', NULL, 'PROVEDOR/DREAMTECH/foryouth5x25.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(668, 9, NULL, 'fourbeauty', 'Four Beauties', 'fourbeauty', 'Slot', NULL, 'PROVEDOR/DREAMTECH/fourbeauty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(669, 9, NULL, 'sweethouse', 'Candy House', 'sweethouse', 'Slot', NULL, 'PROVEDOR/DREAMTECH/sweethouse.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(670, 9, NULL, 'legend5x25', 'Legend of the King', 'legend5x25', 'Slot', NULL, 'PROVEDOR/DREAMTECH/legend5x25.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(671, 9, NULL, 'opera', 'Beijing opera', 'opera', 'Slot', NULL, 'PROVEDOR/DREAMTECH/opera.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(672, 9, NULL, 'bigred', 'Big Red', 'bigred', 'Slot', NULL, 'PROVEDOR/DREAMTECH/bigred.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(673, 9, NULL, 'wrathofthor', 'Wrath of Thor', 'wrathofthor', 'Slot', NULL, 'PROVEDOR/DREAMTECH/wrathofthor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(674, 9, NULL, 'boxingarena', 'Boxing Arena', 'boxingarena', 'Slot', NULL, 'PROVEDOR/DREAMTECH/boxingarena.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(675, 9, NULL, 'fantasyforest', 'Elf Kingdom', 'fantasyforest', 'Slot', NULL, 'PROVEDOR/DREAMTECH/fantasyforest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(676, 9, NULL, 'egyptian', 'Egyptian Empire', 'egyptian', 'Slot', NULL, 'PROVEDOR/DREAMTECH/egyptian.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(677, 9, NULL, 'hotpotfeast', 'Hotpot Feast', 'hotpotfeast', 'Slot', NULL, 'PROVEDOR/DREAMTECH/hotpotfeast.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(678, 9, NULL, 'magician', 'Magician', 'magician', 'Slot', NULL, 'PROVEDOR/DREAMTECH/magician.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(679, 9, NULL, 'galaxywars', 'Galaxy Wars', 'galaxywars', 'Slot', NULL, 'PROVEDOR/DREAMTECH/galaxywars.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(680, 9, NULL, 'easyrider', 'Easy Rider', 'easyrider', 'Slot', NULL, 'PROVEDOR/DREAMTECH/easyrider.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(681, 9, NULL, 'goldjade5x50', 'Jin Yu Man Tang', 'goldjade5x50', 'Slot', NULL, 'PROVEDOR/DREAMTECH/goldjade5x50.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(682, 9, NULL, 'shokudo', 'shokudo', 'shokudo', 'Slot', NULL, 'PROVEDOR/DREAMTECH/shokudo.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(683, 9, NULL, 'train', 'Treasure Hunt Trip', 'train', 'Slot', NULL, 'PROVEDOR/DREAMTECH/train.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(684, 9, NULL, 'lovefighters', 'Love Fighters', 'lovefighters', 'Slot', NULL, 'PROVEDOR/DREAMTECH/lovefighters.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(685, 9, NULL, 'genie', 'Aladdin s Wish', 'genie', 'Slot', NULL, 'PROVEDOR/DREAMTECH/genie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(686, 9, NULL, 'garden', 'Little Big Garden', 'garden', 'Slot', NULL, 'PROVEDOR/DREAMTECH/garden.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:50:32'),
(687, 9, NULL, 'alchemist', 'Crazy Alchemist', 'alchemist', 'Slot', NULL, 'PROVEDOR/DREAMTECH/alchemist.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(688, 9, NULL, 'dinosaur5x25', 'Dinosaur World', 'dinosaur5x25', 'Slot', NULL, 'PROVEDOR/DREAMTECH/dinosaur5x25.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:56:45'),
(689, 9, NULL, 'tombshadow', 'Tomb Shadow', 'tombshadow', 'Slot', NULL, 'PROVEDOR/DREAMTECH/tombshadow.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(690, 9, NULL, 'clash', 'Clash of Three kingdoms', 'clash', 'Slot', NULL, 'PROVEDOR/DREAMTECH/clash.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(691, 9, NULL, 'magicbean', 'Magic Bean Legend', 'magicbean', 'Slot', NULL, 'PROVEDOR/DREAMTECH/magicbean.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(692, 9, NULL, 'secretdate', 'Secret Date', 'secretdate', 'Slot', NULL, 'PROVEDOR/DREAMTECH/secretdate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:56:02'),
(693, 9, NULL, 'bacteria', 'Germ Lab', 'bacteria', 'Slot', NULL, 'PROVEDOR/DREAMTECH/bacteria.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(694, 9, NULL, 'baseball', 'Baseball Frenzy', 'baseball', 'Slot', NULL, 'PROVEDOR/DREAMTECH/baseball.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:50:03'),
(696, 9, NULL, 'mysticalstones', 'Mystical Stones', 'mysticalstones', 'Slot', NULL, 'PROVEDOR/DREAMTECH/mysticalstones.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(697, 9, NULL, 'sincity', 'Sin City', 'sincity', 'Slot', NULL, 'PROVEDOR/DREAMTECH/sincity.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:50:50'),
(698, 9, NULL, 'wheel', 'Secrets of The Pentagram', 'wheel', 'Slot', NULL, 'PROVEDOR/DREAMTECH/wheel.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(699, 9, NULL, 'westwild', 'West Wild', 'westwild', 'Slot', NULL, 'PROVEDOR/DREAMTECH/westwild.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(700, 9, NULL, 'halloween', 'Witch Winnings', 'halloween', 'Slot', NULL, 'PROVEDOR/DREAMTECH/halloween.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(701, 9, NULL, 'bloodmoon', 'Blood Wolf legend', 'bloodmoon', 'Slot', NULL, 'PROVEDOR/DREAMTECH/bloodmoon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 18:56:26'),
(702, 9, NULL, 'dragonball2', 'Heroes of the East', 'dragonball2', 'Slot', NULL, 'PROVEDOR/DREAMTECH/dragonball2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(703, 9, NULL, 'muaythai', 'Muaythai', 'muaythai', 'Slot', NULL, 'PROVEDOR/DREAMTECH/muaythai.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(704, 9, NULL, 'sailor', 'Sailor Princess', 'sailor', 'Slot', NULL, 'PROVEDOR/DREAMTECH/sailor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(705, 9, NULL, 'nightclub', 'Infinity Club', 'nightclub', 'Slot', NULL, 'PROVEDOR/DREAMTECH/nightclub.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59');
INSERT INTO `games` (`id`, `provider_id`, `game_server_url`, `game_id`, `game_name`, `game_code`, `game_type`, `description`, `cover`, `status`, `technology`, `has_lobby`, `is_mobile`, `has_freespins`, `has_tables`, `only_demo`, `rtp`, `distribution`, `views`, `is_featured`, `show_home`, `created_at`, `updated_at`) VALUES
(706, 9, NULL, 'nezha', 'Nezha Legend', 'nezha', 'Slot', NULL, 'PROVEDOR/DREAMTECH/nezha.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(707, 9, NULL, 'bird', 'Bird Island', 'bird', 'Slot', NULL, 'PROVEDOR/DREAMTECH/bird.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(708, 9, NULL, 'honor', 'Field Of Honor', 'honor', 'Slot', NULL, 'PROVEDOR/DREAMTECH/honor.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(709, 9, NULL, 'train2', 'Treasure Hunt Trip 2', 'train2', 'Slot', NULL, 'PROVEDOR/DREAMTECH/train2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(710, 9, NULL, 'shiningstars', 'ShiningStars', 'shiningstars', 'Slot', NULL, 'PROVEDOR/DREAMTECH/shiningstars.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(711, 9, NULL, 'tgow2plus', 'Cai Shen Dao Plus', 'tgow2plus', 'Slot', NULL, 'PROVEDOR/DREAMTECH/tgow2plus.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(712, 9, NULL, 'peeping', 'Peeping', 'peeping', 'Slot', NULL, 'PROVEDOR/DREAMTECH/peeping.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(713, 1, NULL, 'piggy-gold', 'Piggy Gold', 'piggy-gold', 'Slot', NULL, 'PROVEDOR/PGSOFT/piggy-gold.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 0, '2024-05-27 07:25:59', '2024-05-27 19:53:14'),
(714, 1, NULL, 'the-great-icescape', 'The Great Icescape', 'the-great-icescape', 'Slot', NULL, 'PROVEDOR/PGSOFT/the-great-icescape.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:29:13'),
(715, 1, NULL, 'captains-bounty', 'Captains Bounty', 'captains-bounty', 'Slot', NULL, 'PROVEDOR/PGSOFT/captains-bounty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(716, 1, NULL, 'leprechaun-riches', 'Leprechaun Riches', 'leprechaun-riches', 'Slot', NULL, 'PROVEDOR/PGSOFT/leprechaun-riches.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(717, 1, NULL, 'mahjong-ways', 'Mahjong Ways', 'mahjong-ways', 'Slot', NULL, 'PROVEDOR/PGSOFT/mahjong-ways.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(718, 1, NULL, 'gem-saviour-conquest', 'Gem Saviour Conquest', 'gem-saviour-conquest', 'Slot', NULL, 'PROVEDOR/PGSOFT/gem-saviour-conquest.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(719, 1, NULL, 'candy-burst', 'Candy Burst', 'candy-burst', 'Slot', NULL, 'PROVEDOR/PGSOFT/candy-burst.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(720, 1, NULL, 'mahjong-ways2', 'Mahjong Ways 2', 'mahjong-ways2', 'Slot', NULL, 'PROVEDOR/PGSOFT/mahjong-ways2.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(721, 1, NULL, 'ganesha-fortune', 'Ganesha Fortune', 'ganesha-fortune', 'Slot', NULL, 'PROVEDOR/PGSOFT/ganesha-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(722, 1, NULL, 'phoenix-rises', 'Phoenix Rises', 'phoenix-rises', 'Slot', NULL, 'PROVEDOR/PGSOFT/phoenix-rises.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 0, '2024-05-27 07:25:59', '2024-05-27 19:52:38'),
(723, 1, NULL, 'wild-fireworks', 'Wild Fireworks', 'wild-fireworks', 'Slot', NULL, 'PROVEDOR/PGSOFT/wild-fireworks.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(724, 1, NULL, 'treasures-aztec', 'Treasures of Aztec', 'treasures-aztec', 'Slot', NULL, 'PROVEDOR/PGSOFT/treasures-aztec.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(725, 1, NULL, 'queen-bounty', 'Queen of Bounty', 'queen-bounty', 'Slot', NULL, 'PROVEDOR/PGSOFT/queen-bounty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(726, 1, NULL, 'jewels-prosper', 'Jewels of Prosperity', 'jewels-prosper', 'Slot', NULL, 'PROVEDOR/PGSOFT/jewels-prosper.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(727, 1, NULL, 'galactic-gems', 'Galactic Gems', 'galactic-gems', 'Slot', NULL, 'PROVEDOR/PGSOFT/galactic-gems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-23 00:39:54'),
(728, 1, NULL, 'gdn-ice-fire', 'Guardians of Ice and Fire', 'gdn-ice-fire', 'Slot', NULL, 'PROVEDOR/PGSOFT/gdn-ice-fire.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(729, 1, NULL, 'wild-bandito', 'Wild Bandito', 'wild-bandito', 'Slot', NULL, 'PROVEDOR/PGSOFT/wild-bandito.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 6, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:30:34'),
(730, 1, NULL, 'candy-bonanza', 'Candy Bonanza', 'candy-bonanza', 'Slot', NULL, 'PROVEDOR/PGSOFT/candy-bonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(731, 1, NULL, 'majestic-ts', 'Majestic Treasures', 'majestic-ts', 'Slot', NULL, 'PROVEDOR/PGSOFT/majestic-ts.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(732, 1, NULL, 'crypt-fortune', 'Raider Janes Crypt of Fortune', 'crypt-fortune', 'Slot', NULL, 'PROVEDOR/PGSOFT/crypt-fortune.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(733, 1, NULL, 'sprmkt-spree', 'Supermarket Spree', 'sprmkt-spree', 'Slot', NULL, 'PROVEDOR/PGSOFT/sprmkt-spree.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(734, 1, NULL, 'lgd-monkey-kg', 'Legendary Monkey King', 'lgd-monkey-kg', 'Slot', NULL, 'PROVEDOR/PGSOFT/lgd-monkey-kg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(735, 1, NULL, 'spirit-wonder', 'Spirited Wonders', 'spirit-wonder', 'Slot', NULL, 'PROVEDOR/PGSOFT/spirit-wonder.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(736, 1, NULL, 'emoji-riches', 'Emoji Riches', 'emoji-riches', 'Slot', NULL, 'PROVEDOR/PGSOFT/emoji-riches.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(737, 1, NULL, 'garuda-gems', 'Garuda Gems', 'garuda-gems', 'Slot', NULL, 'PROVEDOR/PGSOFT/garuda-gems.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(738, 1, NULL, 'dest-sun-moon', 'Destiny of Sun e Moon', 'dest-sun-moon', 'Slot', NULL, 'PROVEDOR/PGSOFT/dest-sun-moon.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(739, 1, NULL, 'btrfly-blossom', 'Butterfly Blossom', 'btrfly-blossom', 'Slot', NULL, 'PROVEDOR/PGSOFT/btrfly-blossom.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(740, 1, NULL, 'rooster-rbl', 'Rooster Rumble', 'rooster-rbl', 'Slot', NULL, 'PROVEDOR/PGSOFT/rooster-rbl.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(741, 1, NULL, 'battleground', 'Battleground Royale', 'battleground', 'Slot', NULL, 'PROVEDOR/PGSOFT/battleground.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(742, 1, NULL, 'prosper-ftree', 'Prosperity Fortune Tree', 'prosper-ftree', 'Slot', NULL, 'PROVEDOR/PGSOFT/prosper-ftree.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(743, 10, NULL, 'vs5ultrab', 'Ultra Burn', 'vs5ultrab', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs5ultrab.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(744, 10, NULL, 'vs5ultra', 'Ultra Hold and Spin', 'vs5ultra', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs5ultra.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(745, 10, NULL, 'vs10returndead', 'Return of the Dead', 'vs10returndead', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10returndead.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(746, 10, NULL, 'vs10bbbonanza', 'Big Bass Bonanza', 'vs10bbbonanza', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10bbbonanza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(747, 10, NULL, 'vs20hburnhs', 'Hot to Burn Hold and Spin', 'vs20hburnhs', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs20hburnhs.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(748, 10, NULL, 'vswayslight', 'Lucky Lightning', 'vswayslight', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vswayslight.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(749, 10, NULL, 'vs12bbb', 'Bigger Bass Bonanza', 'vs12bbb', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs12bbb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 4, 0, 1, '2024-05-27 07:25:59', '2024-05-31 13:38:35'),
(750, 10, NULL, 'vs10floatdrg', 'Floating Dragon', 'vs10floatdrg', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10floatdrg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(751, 10, NULL, 'vs1024temuj', 'Temujin Treasures', 'vs1024temuj', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs1024temuj.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(752, 10, NULL, 'vs10bxmasbnza', 'Christmas Big Bass Bonanza', 'vs10bxmasbnza', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10bxmasbnza.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(753, 10, NULL, 'vswaysbbb', 'Big Bass Bonanza Megaways(tm)', 'vswaysbbb', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vswaysbbb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(754, 10, NULL, 'vs40bigjuan', 'Big Juan', 'vs40bigjuan', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs40bigjuan.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:09:28'),
(755, 10, NULL, 'vs10starpirate', 'Star Pirates Code', 'vs10starpirate', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10starpirate.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:10:08'),
(756, 10, NULL, 'vs5hotburn', 'Hot to burn', 'vs5hotburn', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs5hotburn.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(757, 10, NULL, 'vs25bkofkngdm', 'Book of Kingdoms', 'vs25bkofkngdm', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs25bkofkngdm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(758, 10, NULL, 'vs10eyestorm', 'Eye of the Storm', 'vs10eyestorm', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10eyestorm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:09:47'),
(759, 10, NULL, 'vs10amm', 'The Amazing Money Machine', 'vs10amm', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10amm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(760, 10, NULL, 'vs10luckcharm', 'Lucky Grace And Charm', 'vs10luckcharm', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10luckcharm.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(761, 10, NULL, 'vs25goldparty', 'Gold Party(r)', 'vs25goldparty', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs25goldparty.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:11:23'),
(762, 10, NULL, 'vs20rockvegas', 'Rock Vegas Mega Hold e Spin', 'vs20rockvegas', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs20rockvegas.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(763, 10, NULL, 'vs10tictac', 'Tic Tac Take', 'vs10tictac', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10tictac.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 17:10:17'),
(764, 10, NULL, 'vs243queenie', 'Queenie', 'vs243queenie', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs243queenie.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(765, 10, NULL, 'vs10spiritadv', 'Spirit of Adventure', 'vs10spiritadv', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs10spiritadv.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(766, 10, NULL, 'vs5littlegem', 'Little Gem Hold and Spin', 'vs5littlegem', 'Slot', NULL, 'PROVEDOR/REELKINGDOM/vs5littlegem.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(791, 12, NULL, '01rb77cq1gtenhmo', 'Auto-Roulette VIP', '01rb77cq1gtenhmo', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/01rb77cq1gtenhmo.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(792, 12, NULL, 'qgqrucipvltnvnvq', 'Speed Baccarat W', 'qgqrucipvltnvnvq', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/qgqrucipvltnvnvq.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(793, 12, NULL, 'JapSpeedBac00001', 'Japanese Speed Baccarat A', 'JapSpeedBac00001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/JapSpeedBac00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(794, 12, NULL, 'NoCommBac0000001', 'No Commission Baccarat', 'NoCommBac0000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/NoCommBac0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(795, 12, NULL, 'PTBaccarat000001', 'Prosperity Tree Baccarat', 'PTBaccarat000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/PTBaccarat000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(796, 12, NULL, 'p63cmvmwagteemoy', 'Korean Speed Baccarat A', 'p63cmvmwagteemoy', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/p63cmvmwagteemoy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(797, 12, NULL, 'MonBigBaller0001', 'MONOPOLY Big Baller', 'MonBigBaller0001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/MonBigBaller0001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(798, 12, NULL, 'LightningTable01', 'Lightning Roulette', 'LightningTable01', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/LightningTable01.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(799, 12, NULL, 'ndgvz5mlhfuaad6e', 'Speed Baccarat D', 'ndgvz5mlhfuaad6e', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ndgvz5mlhfuaad6e.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(800, 12, NULL, 'obj64qcnqfunjelj', 'Speed Baccarat J', 'obj64qcnqfunjelj', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/obj64qcnqfunjelj.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(801, 12, NULL, 'PorROULigh000001', 'Roleta Relampago', 'PorROULigh000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/PorROULigh000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 1, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:22:09'),
(802, 12, NULL, 'ovfzgqahvicqtiwu', 'Lightning Roulette Italia', 'ovfzgqahvicqtiwu', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ovfzgqahvicqtiwu.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(803, 12, NULL, 'HSpeedBac0000002', 'Hindi Speed Baccarat B', 'HSpeedBac0000002', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/HSpeedBac0000002.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(805, 12, NULL, '8clwnwrupuvf0osq', 'Ruleta en Vivo', '8clwnwrupuvf0osq', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/8clwnwrupuvf0osq.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(806, 12, NULL, 'xie6wodezmfwmmcb', 'Punto Banco', 'xie6wodezmfwmmcb', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/xie6wodezmfwmmcb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(807, 12, NULL, '48z5pjps3ntvqc1b', 'Auto-Roulette', '48z5pjps3ntvqc1b', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/48z5pjps3ntvqc1b.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-05-29 19:59:07'),
(808, 12, NULL, 'mkvhbciosnfqhat7', 'Arabic Roulette', 'mkvhbciosnfqhat7', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/mkvhbciosnfqhat7.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(809, 12, NULL, 'RedDoorRoulette1', 'Red Door Roulette', 'RedDoorRoulette1', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/RedDoorRoulette1.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(811, 12, NULL, 'nmwde3fd7hvqhq43', 'Speed Baccarat F', 'nmwde3fd7hvqhq43', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/nmwde3fd7hvqhq43.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(812, 12, NULL, 'ocye2ju2bsoyq6vv', 'Speed Baccarat K', 'ocye2ju2bsoyq6vv', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ocye2ju2bsoyq6vv.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(813, 12, NULL, 'EmperorSB0000001', 'Emperor Sic Bo', 'EmperorSB0000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/EmperorSB0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(814, 12, NULL, 'CrazyTime0000002', 'Crazy Time A', 'CrazyTime0000002', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/CrazyTime0000002.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(815, 12, NULL, 'ovu5eja74ccmyoiq', 'Speed Baccarat N', 'ovu5eja74ccmyoiq', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ovu5eja74ccmyoiq.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(816, 12, NULL, 'SBCTable00000001', 'Side Bet City', 'SBCTable00000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/SBCTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(817, 12, NULL, 'nmwdzhbg7hvqh6a7', 'Speed Baccarat G', 'nmwdzhbg7hvqh6a7', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/nmwdzhbg7hvqh6a7.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(822, 12, NULL, 'AmericanTable001', 'American Roulette', 'AmericanTable001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/AmericanTable001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(823, 12, NULL, 'PorROU0000000001', 'Roleta ao Vivo', 'PorROU0000000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/PorROU0000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 10, 0, 1, '2024-05-27 07:25:59', '2024-06-23 01:14:39'),
(824, 12, NULL, 'pv5q45yjhasyt46y', 'Emperor Roulette', 'pv5q45yjhasyt46y', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/pv5q45yjhasyt46y.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(825, 12, NULL, 'ndgv45bghfuaaebf', 'Speed Baccarat E', 'ndgv45bghfuaaebf', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ndgv45bghfuaaebf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(827, 12, NULL, '7x0b1tgh7agmf6hv', 'Immersive Roulette', '7x0b1tgh7agmf6hv', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/7x0b1tgh7agmf6hv.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(829, 12, NULL, 'ovu5h6b3ujb4y53w', 'No Commission Speed Baccarat C', 'ovu5h6b3ujb4y53w', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ovu5h6b3ujb4y53w.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(830, 12, NULL, 'qsf63ownyvbqnz33', 'Speed Baccarat Z', 'qsf63ownyvbqnz33', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/qsf63ownyvbqnz33.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(831, 12, NULL, 'ndgvwvgthfuaad3q', 'Speed Baccarat C', 'ndgvwvgthfuaad3q', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ndgvwvgthfuaad3q.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(833, 12, NULL, 'CSPTable00000001', 'Caribbean Stud Poker', 'CSPTable00000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/CSPTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(834, 12, NULL, 'qgqrhfvsvltnueqf', 'Speed Baccarat U', 'qgqrhfvsvltnueqf', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/qgqrhfvsvltnueqf.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(836, 12, NULL, 'f1f4rm9xgh4j3u2z', 'Auto-Roulette La Partage', 'f1f4rm9xgh4j3u2z', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/f1f4rm9xgh4j3u2z.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(837, 12, NULL, 'Monopoly00000001', 'MONOPOLY Live', 'Monopoly00000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/Monopoly00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(840, 12, NULL, 'leqhceumaq6qfoug', 'Speed Baccarat A', 'leqhceumaq6qfoug', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/leqhceumaq6qfoug.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(841, 12, NULL, 'qgonc7t4ucdiel4o', 'Speed Baccarat T', 'qgonc7t4ucdiel4o', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/qgonc7t4ucdiel4o.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(842, 12, NULL, '7nyiaws9tgqrzaz3', 'Football Studio Roulette', '7nyiaws9tgqrzaz3', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/7nyiaws9tgqrzaz3.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:03:38'),
(843, 12, NULL, 'ETHTable00000001', 'Extreme Texas Hold em', 'ETHTable00000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ETHTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(844, 12, NULL, 'ndgvs3tqhfuaadyg', 'Baccarat C', 'ndgvs3tqhfuaadyg', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ndgvs3tqhfuaadyg.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(846, 12, NULL, 'lkcbrbdckjxajdol', 'Speed Roulette', 'lkcbrbdckjxajdol', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/lkcbrbdckjxajdol.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:03:40'),
(849, 12, NULL, 'o4kymodby2fa2c7g', 'Speed Baccarat S', 'o4kymodby2fa2c7g', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/o4kymodby2fa2c7g.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(850, 12, NULL, 'nxpkul2hgclallno', 'Speed Baccarat I', 'nxpkul2hgclallno', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/nxpkul2hgclallno.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(852, 12, NULL, 'CrazyTime0000001', 'Crazy Time', 'CrazyTime0000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/CrazyTime0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(853, 12, NULL, 'vctlz20yfnmp1ylr', 'Roulette', 'vctlz20yfnmp1ylr', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/vctlz20yfnmp1ylr.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:03:49'),
(854, 12, NULL, 'zixzea8nrf1675oh', 'Baccarat Squeeze', 'zixzea8nrf1675oh', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/zixzea8nrf1675oh.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(856, 12, NULL, 'TRPTable00000001', 'Triple Card Poker', 'TRPTable00000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/TRPTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(857, 12, NULL, 'teenpattitable01', 'Teen Patti', 'teenpattitable01', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/teenpattitable01.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(858, 12, NULL, 'peekbaccarat0001', 'Peek Baccarat', 'peekbaccarat0001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/peekbaccarat0001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(859, 12, NULL, 'o4kyj7tgpwqqy4m4', 'Speed Baccarat Q', 'o4kyj7tgpwqqy4m4', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/o4kyj7tgpwqqy4m4.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(860, 12, NULL, 'FunkyTime0000001', 'Funky Time', 'FunkyTime0000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/FunkyTime0000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(861, 12, NULL, 'XxxtremeLigh0001', 'XXXtreme Lightning Roulette', 'XxxtremeLigh0001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/XxxtremeLigh0001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(862, 12, NULL, 'AndarBahar000001', 'Super Andar Bahar', 'AndarBahar000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/AndarBahar000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(865, 12, NULL, 'o4kylkahpwqqy57w', 'Speed Baccarat R', 'o4kylkahpwqqy57w', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/o4kylkahpwqqy57w.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(868, 12, NULL, '60i0lcfx5wkkv3sy', 'Baccarat B', '60i0lcfx5wkkv3sy', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/60i0lcfx5wkkv3sy.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(869, 12, NULL, 'PorBacBo00000001', 'Bac Bo Ao Vivo', 'PorBacBo00000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/PorBacBo00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 2, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:22:27'),
(870, 12, NULL, 'ocye5hmxbsoyrcii', 'No Commission Speed Baccarat B', 'ocye5hmxbsoyrcii', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ocye5hmxbsoyrcii.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(871, 12, NULL, 'THBTable00000001', 'Texas Hold em Bonus Poker', 'THBTable00000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/THBTable00000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(872, 12, NULL, 'BonsaiBacc000002', 'Bonsai Speed Baccarat B', 'BonsaiBacc000002', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/BonsaiBacc000002.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(873, 12, NULL, 'DoubleBallRou001', 'Double Ball Roulette', 'DoubleBallRou001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/DoubleBallRou001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(874, 12, NULL, 'lv2kzclunt2qnxo5', 'Speed Baccarat B', 'lv2kzclunt2qnxo5', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/lv2kzclunt2qnxo5.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(875, 12, NULL, 'HoldemTable00001', 'Casino Hold em', 'HoldemTable00001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/HoldemTable00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(877, 12, NULL, 'qsf7alptyvbqohva', 'Speed Baccarat 2', 'qsf7alptyvbqohva', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/qsf7alptyvbqohva.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(879, 12, NULL, 'pv2zgy42anvdwk3l', 'Lotus Roulette', 'pv2zgy42anvdwk3l', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/pv2zgy42anvdwk3l.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:03:36'),
(880, 12, NULL, 'ovu5cwp54ccmymck', 'Speed Baccarat L', 'ovu5cwp54ccmymck', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ovu5cwp54ccmymck.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(882, 12, NULL, 'FanTan0000000001', 'Fan Tan', 'FanTan0000000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/FanTan0000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(883, 12, NULL, 'BonsaiBacc000003', 'Bonsai Speed Baccarat C', 'BonsaiBacc000003', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/BonsaiBacc000003.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(885, 12, NULL, 'rep5ca4ynyjl7wdw', 'Speed Baccarat 7', 'rep5ca4ynyjl7wdw', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/rep5ca4ynyjl7wdw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(886, 12, NULL, 'ovu5dsly4ccmynil', 'Speed Baccarat M', 'ovu5dsly4ccmynil', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ovu5dsly4ccmynil.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(887, 12, NULL, 'LightningBac0001', 'Lightning Baccarat', 'LightningBac0001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/LightningBac0001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(889, 12, NULL, 'oytmvb9m1zysmc44', 'Baccarat A', 'oytmvb9m1zysmc44', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/oytmvb9m1zysmc44.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(890, 12, NULL, 'StockMarket00001', 'Stock Market', 'StockMarket00001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/StockMarket00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(891, 12, NULL, 'TopCard000000004', 'Futebol Studio Ao Vivo', 'TopCard000000004', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/TopCard000000004.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 2, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:03:44'),
(892, 12, NULL, 'qsf7bpfvyvbqolwp', 'Speed Baccarat 3', 'qsf7bpfvyvbqolwp', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/qsf7bpfvyvbqolwp.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(894, 12, NULL, 'TopDice000000001', 'Football Studio Dice', 'TopDice000000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/TopDice000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(895, 12, NULL, 'k2oswnib7jjaaznw', 'Baccarat Control Squeeze', 'k2oswnib7jjaaznw', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/k2oswnib7jjaaznw.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-05-27 07:27:59'),
(897, 12, NULL, 'qsf65xtoyvbqoaop', 'Speed Baccarat 1', 'qsf65xtoyvbqoaop', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/qsf65xtoyvbqoaop.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:28'),
(900, 12, NULL, 'ovu5fzje4ccmyqnr', 'Speed Baccarat P', 'ovu5fzje4ccmyqnr', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ovu5fzje4ccmyqnr.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:25'),
(901, 12, NULL, 'qgqrrnuqvltnvejx', 'Speed Baccarat V', 'qgqrrnuqvltnvejx', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/qgqrrnuqvltnvejx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:23'),
(903, 12, NULL, 'ImperialQuest001', 'Imperial Quest', 'ImperialQuest001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ImperialQuest001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:21'),
(904, 12, NULL, 'wzg6kdkad1oe7m5k', 'VIP Roulette', 'wzg6kdkad1oe7m5k', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/wzg6kdkad1oe7m5k.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:03:34'),
(908, 12, NULL, 'TopCard000000001', 'Football Studio', 'TopCard000000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/TopCard000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:19'),
(909, 12, NULL, 'SuperSicBo000001', 'Super Sic Bo', 'SuperSicBo000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/SuperSicBo000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:17'),
(910, 12, NULL, 'ovu5fbxm4ccmypmb', 'Speed Baccarat O', 'ovu5fbxm4ccmypmb', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/ovu5fbxm4ccmypmb.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:15'),
(911, 12, NULL, 'nxpj4wumgclak2lx', 'Speed Baccarat H', 'nxpj4wumgclak2lx', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/nxpj4wumgclak2lx.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:13'),
(913, 12, NULL, 'GoldVaultRo00001', 'Gold Vault Roulette', 'GoldVaultRo00001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/GoldVaultRo00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:11'),
(916, 12, NULL, 'XXXtremeLB000001', 'XXXtreme Lightning Baccarat', 'XXXtremeLB000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/XXXtremeLB000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:20:09'),
(918, 12, NULL, 'SpeedAutoRo00001', 'Speed Auto Roulette', 'SpeedAutoRo00001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/SpeedAutoRo00001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:03:46'),
(919, 12, NULL, 'BacBo00000000001', 'Bac Bo', 'BacBo00000000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/BacBo00000000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 3, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:22:36'),
(922, 12, NULL, 'BonsaiBacc000001', 'Bonsai Speed Baccarat A', 'BonsaiBacc000001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/BonsaiBacc000001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:21:01'),
(923, 12, NULL, 'LightningDice001', 'Lightning Dice', 'LightningDice001', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/LightningDice001.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 1, '2024-05-27 07:25:59', '2024-06-22 23:21:00'),
(928, 12, NULL, 'LightningSpain01', 'Ruleta Relampago en Vivo', 'LightningSpain01', 'aovivo', NULL, 'PROVEDOR/EVOLUTION/LightningSpain01.png', '1', 'html5', 0, 0, 0, 0, 0, 89, 'play_fiver', 0, 0, 0, '2024-05-27 07:25:59', '2024-06-22 23:03:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `games_keys`
--

CREATE TABLE `games_keys` (
  `id` bigint UNSIGNED NOT NULL,
  `playfiver_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `playfiver_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `playfiver_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `playfiver_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `games_keys`
--

INSERT INTO `games_keys` (`id`, `playfiver_url`, `playfiver_secret`, `playfiver_code`, `playfiver_token`, `created_at`, `updated_at`) VALUES
(1, 'https://api.playfiver.com/api/v1', '', '', '', '2023-11-30 18:03:08', '2024-06-23 01:31:59');

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_favorites`
--

CREATE TABLE `game_favorites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_likes`
--

CREATE TABLE `game_likes` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `game_reviews`
--

CREATE TABLE `game_reviews` (
  `user_id` bigint UNSIGNED NOT NULL,
  `game_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint UNSIGNED NOT NULL,
  `suitpay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suitpay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `suitpay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe_production` tinyint DEFAULT '0',
  `stripe_public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stripe_webhook_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bspay_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bspay_cliente_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bspay_cliente_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `private_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mp_client_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mp_client_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mp_public_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mp_access_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `digitopay_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `digitopay_cliente_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `digitopay_cliente_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ezze_uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ezze_client` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ezze_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ezze_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ezze_senha` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `gateways`
--

INSERT INTO `gateways` (`id`, `suitpay_uri`, `suitpay_cliente_id`, `suitpay_cliente_secret`, `stripe_production`, `stripe_public_key`, `stripe_secret_key`, `stripe_webhook_key`, `bspay_uri`, `bspay_cliente_id`, `bspay_cliente_secret`, `created_at`, `updated_at`, `public_key`, `private_key`, `mp_client_id`, `mp_client_secret`, `mp_public_key`, `mp_access_token`, `digitopay_uri`, `digitopay_cliente_id`, `digitopay_cliente_secret`, `ezze_uri`, `ezze_client`, `ezze_secret`, `ezze_user`, `ezze_senha`) VALUES
(1, 'https://ws.suitpay.app/api/v1/', '', '', 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-30 21:05:51', '2024-06-23 01:18:28', NULL, NULL, NULL, NULL, NULL, NULL, 'https://api.digitopayoficial.com.br/api/', '', '', 'https://api.ezzebank.com/v2/', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_config`
--

CREATE TABLE `ggds_spin_config` (
  `id` bigint UNSIGNED NOT NULL,
  `prizes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `ggds_spin_config`
--

INSERT INTO `ggds_spin_config` (`id`, `prizes`, `created_at`, `updated_at`) VALUES
(1, '[{\"currency\":\"BRL\",\"value\":5},{\"currency\":\"BRL\",\"value\":10},{\"currency\":\"BRL\",\"value\":25},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":40},{\"currency\":\"BRL\",\"value\":50},{\"currency\":\"BRL\",\"value\":90},{\"currency\":\"BRL\",\"value\":100},{\"currency\":\"BRL\",\"value\":140},{\"currency\":\"BRL\",\"value\":15},{\"currency\":\"BRL\",\"value\":30},{\"currency\":\"BRL\",\"value\":500},{\"currency\":\"BRL\",\"value\":1000},{\"currency\":\"BRL\",\"value\":1500},{\"currency\":\"BRL\",\"value\":2000},{\"currency\":\"BRL\",\"value\":2500}]', '2024-01-11 20:52:59', '2024-01-14 17:07:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggds_spin_runs`
--

CREATE TABLE `ggds_spin_runs` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nonce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `possibilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prize` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games`
--

CREATE TABLE `ggr_games` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aggregator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `ggr_games_world_slots`
--

CREATE TABLE `ggr_games_world_slots` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_win` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'BRL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `liked_user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `liked_user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-06-23 00:19:50', '2024-06-23 00:19:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2023_10_30_034921_create_settings_table', 6),
(7, '2023_11_03_205251_create_sport_categories_table', 1),
(8, '2023_11_03_205252_create_sports_table', 1),
(10, '2023_11_04_001342_create_sport_events_table', 2),
(11, '2023_11_04_213841_add_fields_to_users_table', 3),
(12, '2023_11_07_202919_create_currencies_table', 4),
(13, '2023_11_07_210310_create_wallets_table', 5),
(16, '2023_11_07_214236_create_withdrawals_table', 7),
(17, '2023_11_07_214240_create_deposits_table', 7),
(18, '2023_11_07_214244_create_orders_table', 7),
(19, '2023_11_07_214708_create_suit_pay_payments_table', 7),
(20, '2023_11_07_215204_create_notifications_table', 8),
(21, '2023_11_07_202919_create_currency_alloweds_table', 9),
(22, '2023_11_11_205824_create_casino_categories_table', 9),
(23, '2023_11_11_205834_create_casino_providers_table', 9),
(24, '2023_11_11_205938_create_casino_games_slotgrators_table', 9),
(25, '2023_11_11_210018_create_casino_games_kscinuses_table', 9),
(26, '2023_11_12_225424_create_transactions_table', 10),
(27, '2023_11_12_225431_create_affiliate_histories_table', 10),
(28, '2023_11_12_234643_add_field_to_wallet_table', 11),
(29, '2023_11_14_203632_create_likes_table', 12),
(30, '2023_09_27_214903_create_wallet_changes_table', 13),
(31, '2023_11_16_155140_create_permission_tables', 14),
(32, '2023_11_17_012533_add_language_to_users_table', 15),
(33, '2023_11_22_171616_create_football_leagues_table', 16),
(34, '2023_11_22_175530_create_football_venues_table', 17),
(35, '2023_11_22_175547_create_football_teams_table', 17),
(36, '2023_11_23_143637_create_football_events_table', 18),
(38, '2023_11_29_134520_create_sport_bets_table', 19),
(39, '2023_11_29_135451_create_sport_bets_odds_table', 19),
(40, '2023_11_30_195548_create_gateways_table', 20),
(41, '2023_11_30_195557_create_games_keys_table', 20),
(42, '2023_11_30_195609_create_setting_mails_table', 20),
(43, '2023_10_08_111755_add_fields_to_game_exclusives_table', 20),
(44, '2023_10_07_183921_create_game_exclusives_table', 21),
(45, '2023_10_11_144956_create_system_wallets_table', 22),
(46, '2023_12_18_172721_create_banners_table', 23),
(47, '2023_12_20_135908_create_casino_games_salsas_table', 24),
(48, '2023_12_23_224032_create_fivers_providers_table', 25),
(49, '2023_12_23_224105_create_fivers_games_table', 25),
(50, '2023_12_31_121453_create_custom_layouts_table', 26),
(51, '2024_01_01_193712_create_g_g_r_games_fivers_table', 27),
(52, '2024_01_14_155144_create_missions_table', 28),
(53, '2024_01_14_155150_create_mission_users_table', 28),
(54, '2024_01_19_120728_create_ka_gamings_table', 29),
(55, '2024_01_19_170650_create_categories_table', 30),
(56, '2024_01_19_170657_create_providers_table', 30),
(57, '2024_01_19_170658_create_games_table', 31),
(58, '2023_10_07_183920_create_categories_table', 32),
(59, '2023_10_07_183921_create_providers_table', 33),
(60, '2023_10_07_183922_create_games_table', 34),
(61, '2024_01_20_144529_create_category_games_table', 35),
(62, '2024_01_20_182155_add_vibra_to_games_keys_table', 36),
(63, '2024_01_21_173742_create_game_favorites_table', 37),
(64, '2024_01_21_173752_create_game_likes_table', 37),
(65, '2024_01_21_173803_create_game_reviews_table', 37),
(66, '2024_01_11_231932_create_vibra_casino_games_table', 38),
(69, '2024_01_28_194456_add_vip_to_wallet_table', 40),
(68, '2024_01_28_194645_create_vips_table', 39),
(70, '2024_01_28_231843_create_vip_users_table', 41),
(71, '2024_01_29_102939_add_paid_to_limits_table', 41),
(72, '2024_01_10_001705_create_sub_affiliates_table', 42),
(73, '2024_01_30_120547_create_affiliate_withdraws_table', 43),
(74, '2024_02_09_233936_add_worldslot_to_games_keys_table', 44),
(75, '2024_02_10_191215_add_disable_spin_to_settings_table', 45),
(76, '2024_02_17_210822_add_games2_to_games_keys_table', 46),
(78, '2024_02_20_004853_add_sub_to_settings_table', 47),
(79, '2024_02_24_121146_add_header_to_custom_layouts_table', 48),
(80, '2024_02_26_144235_create_ggr_games_world_slots_table', 49),
(81, '2024_03_01_172613_add_evergame_to_games_keys_table', 50),
(82, '2024_03_03_201700_add_venixkey_to_games_keys_table', 51),
(83, '2024_03_08_201557_add_play_gaming_to_games_keys_table', 52),
(84, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 53),
(85, '2024_03_21_154342_add_headerbody_to_custom_layouts_table', 54),
(86, '2024_03_21_223739_add_sharkpay_to_gateways_table', 55),
(87, '2024_03_21_230017_add_reference_to_transactions_table', 56),
(88, '2024_03_24_125025_add_rollver_protection_to_settings_table', 57),
(89, '2024_03_24_134101_add_accept_bonus_to_transactions_table', 58),
(90, '2024_03_24_172243_add_receita_to_affiliate_histories_table', 59),
(91, '2024_03_26_161932_add_baseline_column_to_settings_table', 60),
(92, '2024_03_26_234226_add_playigaming_column_to_games_key_table', 61),
(93, '2024_03_25_231103_add_mercado_pago_column_to_gateways_table', 62),
(94, '2024_03_30_215051_add_social_to_custom_layouts_table', 63),
(98, '2024_03_30_225900_create_digito_pay_payments_table', 66),
(96, '2024_03_30_225929_add_digitopay_to_gateways_table', 64),
(97, '2024_03_31_124211_add_digitopay_to_settings_table', 65),
(99, '2024_04_02_140932_add_default_gateway_to_settings_table', 67),
(100, '2024_05_16_204842_create__ezzepay', 68),
(101, '2024_05_16_225244_create__digito_pay', 69);

-- --------------------------------------------------------

--
-- Estrutura para tabela `missions`
--

CREATE TABLE `missions` (
  `id` bigint UNSIGNED NOT NULL,
  `challenge_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `challenge_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `challenge_rules` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `challenge_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'game',
  `challenge_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `challenge_start_date` datetime NOT NULL,
  `challenge_end_date` datetime NOT NULL,
  `challenge_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `challenge_total` bigint NOT NULL DEFAULT '1',
  `challenge_currency` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `challenge_provider` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `challenge_gameid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mission_users`
--

CREATE TABLE `mission_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `mission_id` int UNSIGNED NOT NULL,
  `rounds` bigint DEFAULT '0',
  `rewards` decimal(10,2) DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 28);

-- --------------------------------------------------------

--
-- Estrutura para tabela `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `session_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `game_uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type_money` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `providers` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `refunded` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `round_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `session_id`, `transaction_id`, `game`, `game_uuid`, `type`, `type_money`, `amount`, `providers`, `refunded`, `status`, `round_id`, `created_at`, `updated_at`) VALUES
(1, 1, '35a44cc258b98615', '7c88b0c0-0737-468c-8bee-dfedb4b92137', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '35a44cc258b98615', '2024-06-23 00:24:15', '2024-06-23 00:24:15'),
(2, 1, 'c86af5d046e935a4', 'c49427eb-7c2c-4f49-9615-6eefdb8b20a1', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, 'c86af5d046e935a4', '2024-06-23 00:27:38', '2024-06-23 00:27:38'),
(3, 1, '10c937f0768ae70b', 'e1724514-75b3-4768-bb25-4489dc41a7fa', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '10c937f0768ae70b', '2024-06-23 00:27:43', '2024-06-23 00:27:43'),
(4, 1, 'edd33445e19ca77c', '74c7cc5c-2e0a-41b6-9f65-8761f599dc72', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, 'edd33445e19ca77c', '2024-06-23 00:27:47', '2024-06-23 00:27:47'),
(5, 1, '91de2ed1a8b0dfbd', '65d51fd7-9961-4c87-a1a0-0b60b073cef8', '126', '126', 'win', 'balance_withdrawal', 0.24, 'play_fiver', 0, 1, '91de2ed1a8b0dfbd', '2024-06-23 00:27:48', '2024-06-23 00:27:48'),
(6, 1, 'dcce27cba695e534', '260a3da6-bd32-45db-95b6-6d9a3ac2c81b', '1695365', '1695365', 'bet', 'balance_withdrawal', 12.00, 'play_fiver', 0, 1, 'dcce27cba695e534', '2024-06-23 00:33:47', '2024-06-23 00:33:47'),
(7, 1, '905753c0eaf7c53d', '54989287-f270-4d85-aaf1-7ff6588d05d0', '1695365', '1695365', 'bet', 'balance_withdrawal', 12.00, 'play_fiver', 0, 1, '905753c0eaf7c53d', '2024-06-23 00:33:49', '2024-06-23 00:33:49'),
(8, 1, '2e556ec11f865551', 'cf858651-d396-457e-8b66-cef5dc9f50bf', '1695365', '1695365', 'bet', 'balance_withdrawal', 12.00, 'play_fiver', 0, 1, '2e556ec11f865551', '2024-06-23 00:33:51', '2024-06-23 00:33:51'),
(9, 1, 'c49900e9f676833f', '1b0a158d-eccc-482a-a491-218870f446ce', '1695365', '1695365', 'win', 'balance_withdrawal', 144.00, 'play_fiver', 0, 1, 'c49900e9f676833f', '2024-06-23 00:33:54', '2024-06-23 00:33:54'),
(10, 1, 'aa8df3b2e4ca7505', '5d5f700a-c113-4397-bffa-0b4690499eaf', '126', '126', 'win', 'balance_withdrawal', 2.40, 'play_fiver', 0, 1, 'aa8df3b2e4ca7505', '2024-06-23 01:00:48', '2024-06-23 01:00:48'),
(11, 1, 'ac66ef5af4753953', '64924378-200c-41b0-bc77-37cad94c3e45', '126', '126', 'bet', 'balance_withdrawal', 4.00, 'play_fiver', 0, 1, 'ac66ef5af4753953', '2024-06-23 01:01:02', '2024-06-23 01:01:02'),
(12, 1, 'cb57f94682db9ed4', '2c1b8423-3fc5-48ee-a485-6b0af4f11abc', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'cb57f94682db9ed4', '2024-06-23 01:06:15', '2024-06-23 01:06:15'),
(13, 1, 'ecb5069ac5731c06', 'a54192e0-d0af-4085-93d8-9bbfe5fcaba9', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'ecb5069ac5731c06', '2024-06-23 01:06:20', '2024-06-23 01:06:20'),
(14, 1, 'dc592b804f89b633', 'fd9991f7-9b76-45ea-88c4-fa3c022cdfb8', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'dc592b804f89b633', '2024-06-23 01:06:26', '2024-06-23 01:06:26'),
(15, 1, 'a5003f8a776cad48', '2b953a35-d346-4e89-ae88-76aa6477e658', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'a5003f8a776cad48', '2024-06-23 01:06:29', '2024-06-23 01:06:29'),
(16, 1, 'fc90079334f631f2', 'c5153db2-1a2e-4d8b-81b0-5bd2c97bd1ff', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'fc90079334f631f2', '2024-06-23 01:06:33', '2024-06-23 01:06:33'),
(17, 1, '7a092214e263ef6f', '27711e0e-538a-429d-8120-3f7d5071b080', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, '7a092214e263ef6f', '2024-06-23 01:06:37', '2024-06-23 01:06:37'),
(18, 1, 'd3206cbad222e299', 'a98da67d-1ddd-41c0-b64b-f061d9a2405f', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'd3206cbad222e299', '2024-06-23 01:06:38', '2024-06-23 01:06:38'),
(19, 1, '8c3387a40c7fb077', '9530242b-2639-41aa-b6f8-6d0290cc80c1', '126', '126', 'win', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, '8c3387a40c7fb077', '2024-06-23 01:06:42', '2024-06-23 01:06:42'),
(20, 1, 'fe8d662120e1a040', '03723629-3eb2-44e3-8f68-61cf8b619f95', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'fe8d662120e1a040', '2024-06-23 01:06:52', '2024-06-23 01:06:52'),
(21, 1, '239193953a9e859a', '4074cb2d-b09f-4cf0-bff2-c436fc01c270', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, '239193953a9e859a', '2024-06-23 01:06:53', '2024-06-23 01:06:53'),
(22, 1, '7763e54bdfef44c7', 'cff76e9d-066b-493a-a83f-b184ca21e0c2', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, '7763e54bdfef44c7', '2024-06-23 01:06:55', '2024-06-23 01:06:55'),
(23, 1, 'd88d089d164c26ed', '916aabc8-293c-4838-ace3-de1b3a686828', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'd88d089d164c26ed', '2024-06-23 01:06:55', '2024-06-23 01:06:55'),
(24, 1, 'b6ed2242e8d712fa', 'b48508fa-f9c6-456a-a106-b3fe203ed827', '126', '126', 'bet', 'balance_withdrawal', 15.00, 'play_fiver', 0, 1, 'b6ed2242e8d712fa', '2024-06-23 01:06:59', '2024-06-23 01:06:59'),
(25, 1, 'ccdc05ebc8dcb75d', '7197de35-b443-4b66-8e51-17615951c641', '126', '126', 'bet', 'balance_withdrawal', 40.00, 'play_fiver', 0, 1, 'ccdc05ebc8dcb75d', '2024-06-23 01:07:03', '2024-06-23 01:07:03'),
(26, 1, '754209710e2bc2a2', '0694ac1a-5c9a-4d0d-bc2e-941f36c39c7c', '126', '126', 'bet', 'balance_withdrawal', 40.00, 'play_fiver', 0, 1, '754209710e2bc2a2', '2024-06-23 01:07:06', '2024-06-23 01:07:06'),
(27, 1, 'c543c0d0dc490e8f', '01752ce1-215f-4ed6-999b-213a255c298e', '126', '126', 'bet', 'balance_withdrawal', 40.00, 'play_fiver', 0, 1, 'c543c0d0dc490e8f', '2024-06-23 01:07:10', '2024-06-23 01:07:10'),
(28, 1, '4ffaf9324f25a35d', 'c0bf5620-1a69-470e-8771-07659b361263', '126', '126', 'bet', 'balance_withdrawal', 12.00, 'play_fiver', 0, 1, '4ffaf9324f25a35d', '2024-06-23 01:07:19', '2024-06-23 01:07:19'),
(29, 1, '27ae57249b025707', 'dd45a34f-26bc-4526-96d7-b1b7450b76ec', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '27ae57249b025707', '2024-06-23 01:09:23', '2024-06-23 01:09:23'),
(30, 1, 'ce5e50182c14805b', '32838ee1-c34e-445f-8c1e-a52824fac6a4', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, 'ce5e50182c14805b', '2024-06-23 01:09:29', '2024-06-23 01:09:29'),
(31, 1, 'ac2823d67bea569a', '85d502bd-341e-4d5a-8e31-461c6878cea4', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, 'ac2823d67bea569a', '2024-06-23 01:09:35', '2024-06-23 01:09:35'),
(32, 1, '29cdb48a48fd6310', 'ab0310b1-d337-446c-828c-de869cba359d', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '29cdb48a48fd6310', '2024-06-23 01:09:40', '2024-06-23 01:09:40'),
(33, 1, '7170e83a20aaa6e3', 'f521b39e-3371-4b67-ac2d-016836f70dc7', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '7170e83a20aaa6e3', '2024-06-23 01:09:44', '2024-06-23 01:09:44'),
(34, 1, '8878833ebbbec8e9', 'b34712e2-4383-46ce-83c3-062703ebbc56', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '8878833ebbbec8e9', '2024-06-23 01:09:47', '2024-06-23 01:09:47'),
(35, 1, '8b0a33ed0735c1c3', '55620031-f4de-4631-bd9d-dfc16d3001e2', '126', '126', 'bet', 'balance_withdrawal', 0.40, 'play_fiver', 0, 1, '8b0a33ed0735c1c3', '2024-06-23 01:09:50', '2024-06-23 01:09:50'),
(36, 1, '43c6cb7e5010390c', '47d40be6-3a79-46b9-8223-861f94283977', '126', '126', 'win', 'balance_withdrawal', 0.48, 'play_fiver', 0, 1, '43c6cb7e5010390c', '2024-06-23 01:09:54', '2024-06-23 01:09:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'games-exclusive-edit', 'web', '2023-10-12 16:23:45', '2023-10-12 18:12:28'),
(2, 'games-exclusive-view', 'web', '2023-10-12 16:23:56', '2023-10-12 18:11:25'),
(3, 'games-exclusive-create', 'web', '2023-10-12 16:25:06', '2023-10-12 18:11:10'),
(4, 'admin-view', 'web', '2023-10-12 17:56:35', '2023-10-12 17:56:35'),
(5, 'admin-create', 'web', '2023-10-12 18:56:02', '2023-10-12 18:56:02'),
(6, 'admin-edit', 'web', '2023-10-12 18:56:27', '2023-10-12 18:56:27'),
(7, 'admin-delete', 'web', '2023-10-12 18:56:55', '2023-10-12 18:56:55'),
(8, 'category-view', 'web', '2023-10-12 19:01:31', '2023-10-12 19:01:31'),
(9, 'category-create', 'web', '2023-10-12 19:01:46', '2023-10-12 19:01:46'),
(10, 'category-edit', 'web', '2023-10-12 19:01:59', '2023-10-12 19:01:59'),
(11, 'category-delete', 'web', '2023-10-12 19:02:09', '2023-10-12 19:02:09'),
(12, 'game-view', 'web', '2023-10-12 19:02:27', '2023-10-12 19:02:27'),
(13, 'game-create', 'web', '2023-10-12 19:02:36', '2023-10-12 19:02:36'),
(14, 'game-edit', 'web', '2023-10-12 19:02:44', '2023-10-12 19:02:44'),
(15, 'game-delete', 'web', '2023-10-12 19:02:54', '2023-10-12 19:02:54'),
(16, 'wallet-view', 'web', '2023-10-12 19:05:49', '2023-10-12 19:05:49'),
(17, 'wallet-create', 'web', '2023-10-12 19:06:01', '2023-10-12 19:06:01'),
(18, 'wallet-edit', 'web', '2023-10-12 19:06:11', '2023-10-12 19:06:11'),
(19, 'wallet-delete', 'web', '2023-10-12 19:06:18', '2023-10-12 19:06:18'),
(20, 'deposit-view', 'web', '2023-10-12 19:06:44', '2023-10-12 19:06:44'),
(21, 'deposit-create', 'web', '2023-10-12 19:06:56', '2023-10-12 19:06:56'),
(22, 'deposit-edit', 'web', '2023-10-12 19:07:05', '2023-10-12 19:07:05'),
(23, 'deposit-update', 'web', '2023-10-12 19:08:00', '2023-10-12 19:08:00'),
(24, 'deposit-delete', 'web', '2023-10-12 19:08:11', '2023-10-12 19:08:11'),
(25, 'withdrawal-view', 'web', '2023-10-12 19:09:31', '2023-10-12 19:09:31'),
(26, 'withdrawal-create', 'web', '2023-10-12 19:09:40', '2023-10-12 19:09:40'),
(27, 'withdrawal-edit', 'web', '2023-10-12 19:09:51', '2023-10-12 19:09:51'),
(28, 'withdrawal-update', 'web', '2023-10-12 19:10:00', '2023-10-12 19:10:00'),
(29, 'withdrawal-delete', 'web', '2023-10-12 19:10:09', '2023-10-12 19:10:09'),
(30, 'order-view', 'web', '2023-10-12 19:12:36', '2023-10-12 19:12:36'),
(31, 'order-create', 'web', '2023-10-12 19:12:47', '2023-10-12 19:12:47'),
(32, 'order-edit', 'web', '2023-10-12 19:12:56', '2023-10-12 19:12:56'),
(33, 'order-update', 'web', '2023-10-12 19:13:06', '2023-10-12 19:13:06'),
(34, 'order-delete', 'web', '2023-10-12 19:13:19', '2023-10-12 19:13:19'),
(35, 'admin-menu-view', 'web', '2023-10-12 20:26:06', '2023-10-12 20:26:06'),
(36, 'setting-view', 'web', '2023-10-12 21:25:46', '2023-10-12 21:25:46'),
(37, 'setting-create', 'web', '2023-10-12 21:25:57', '2023-10-12 21:25:57'),
(38, 'setting-edit', 'web', '2023-10-12 21:26:06', '2023-10-12 21:26:06'),
(39, 'setting-update', 'web', '2023-10-12 21:26:19', '2023-10-12 21:26:19'),
(40, 'setting-delete', 'web', '2023-10-12 21:26:33', '2023-10-12 21:26:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `providers`
--

CREATE TABLE `providers` (
  `id` bigint UNSIGNED NOT NULL,
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `rtp` bigint DEFAULT '90',
  `views` bigint DEFAULT '1',
  `distribution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `providers`
--

INSERT INTO `providers` (`id`, `cover`, `code`, `name`, `status`, `rtp`, `views`, `distribution`, `created_at`, `updated_at`) VALUES
(13, NULL, 'Aviator', 'Aviator', 1, 90, 1, 'play_fiver', '2024-05-27 15:30:40', '2024-05-30 20:30:04'),
(12, NULL, 'EVOLUTION', 'EVOLUTION', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:59', '2024-05-27 12:46:59'),
(4, NULL, 'BOOONGO', 'BOOONGO', 1, 90, 1, 'play_fiver', '2024-05-27 12:45:53', '2024-05-27 12:45:53'),
(5, NULL, 'PLAYSON', 'PLAYSON', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:02', '2024-05-27 12:46:02'),
(6, NULL, 'CQ9', 'CQ9', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:18', '2024-05-27 12:46:18'),
(7, NULL, 'EVOPLAY', 'EVOPLAY', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:25', '2024-05-27 12:46:25'),
(8, NULL, 'TOPTREND', 'TOPTREND', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:31', '2024-05-27 13:06:44'),
(9, NULL, 'DREAMTECH', 'DREAMTECH', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:37', '2024-05-27 13:06:58'),
(10, NULL, 'REELKINGDOM', 'REELKINGDOM', 1, 90, 1, 'play_fiver', '2024-05-27 12:46:45', '2024-05-27 12:46:45'),
(2, NULL, 'PRAGMATIC', 'PRAGMATIC', 1, 90, 1, 'play_fiver', '2024-05-27 12:45:35', '2024-05-27 13:06:35'),
(3, NULL, 'HABANERO', 'HABANERO', 1, 90, 1, 'play_fiver', '2024-05-27 12:45:44', '2024-05-27 12:45:44'),
(1, NULL, 'PGSOFT', 'PGSOFT', 1, 90, 1000, 'play_fiver', '2024-05-27 19:45:24', '2024-05-27 19:45:24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-10-12 16:20:41', '2023-10-12 16:20:41'),
(2, 'afiliado', 'web', '2023-10-12 16:21:08', '2023-10-12 16:21:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `software_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_logo_white` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_logo_black` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_background` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'BRL',
  `decimal_format` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'dot',
  `currency_position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'left',
  `revshare_percentage` bigint DEFAULT '20',
  `ngr_percent` bigint DEFAULT '20',
  `soccer_percentage` bigint DEFAULT '30',
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'R$',
  `storage` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'local',
  `initial_bonus` bigint DEFAULT '0',
  `min_deposit` decimal(10,2) DEFAULT '20.00',
  `max_deposit` decimal(10,2) DEFAULT '0.00',
  `min_withdrawal` decimal(10,2) DEFAULT '20.00',
  `max_withdrawal` decimal(10,2) DEFAULT '0.00',
  `rollover` bigint DEFAULT '10',
  `rollover_deposit` bigint DEFAULT '1',
  `suitpay_is_enable` tinyint DEFAULT '1',
  `stripe_is_enable` tinyint DEFAULT '1',
  `bspay_is_enable` tinyint DEFAULT '0',
  `sharkpay_is_enable` tinyint DEFAULT '1',
  `turn_on_football` tinyint DEFAULT '1',
  `revshare_reverse` tinyint(1) DEFAULT '1',
  `bonus_vip` bigint DEFAULT '100',
  `activate_vip_bonus` tinyint(1) DEFAULT '1',
  `updated_at` timestamp NULL DEFAULT NULL,
  `maintenance_mode` tinyint DEFAULT '0',
  `withdrawal_limit` bigint DEFAULT NULL,
  `withdrawal_period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `disable_spin` tinyint(1) NOT NULL DEFAULT '0',
  `perc_sub_lv1` bigint NOT NULL DEFAULT '4',
  `perc_sub_lv2` bigint NOT NULL DEFAULT '2',
  `perc_sub_lv3` bigint NOT NULL DEFAULT '3',
  `disable_rollover` tinyint DEFAULT '0',
  `rollover_protection` bigint NOT NULL DEFAULT '1',
  `cpa_baseline` decimal(10,2) DEFAULT NULL,
  `cpa_value` decimal(10,2) DEFAULT NULL,
  `mercadopago_is_enable` tinyint DEFAULT '0',
  `digitopay_is_enable` tinyint NOT NULL DEFAULT '0',
  `default_gateway` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'digitopay',
  `ezzepay_is_enable` tinyint(1) NOT NULL DEFAULT '0',
  `limit_withdrawal` decimal(8,2) DEFAULT NULL,
  `withdrawal_autom` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `settings`
--

INSERT INTO `settings` (`id`, `software_name`, `software_description`, `software_favicon`, `software_logo_white`, `software_logo_black`, `software_background`, `currency_code`, `decimal_format`, `currency_position`, `revshare_percentage`, `ngr_percent`, `soccer_percentage`, `prefix`, `storage`, `initial_bonus`, `min_deposit`, `max_deposit`, `min_withdrawal`, `max_withdrawal`, `rollover`, `rollover_deposit`, `suitpay_is_enable`, `stripe_is_enable`, `bspay_is_enable`, `sharkpay_is_enable`, `turn_on_football`, `revshare_reverse`, `bonus_vip`, `activate_vip_bonus`, `updated_at`, `maintenance_mode`, `withdrawal_limit`, `withdrawal_period`, `disable_spin`, `perc_sub_lv1`, `perc_sub_lv2`, `perc_sub_lv3`, `disable_rollover`, `rollover_protection`, `cpa_baseline`, `cpa_value`, `mercadopago_is_enable`, `digitopay_is_enable`, `default_gateway`, `ezzepay_is_enable`, `limit_withdrawal`, `withdrawal_autom`) VALUES
(1, 'Play Fiver ', 'Melhor plataforma de jogos brasileiras.', 'uploads/fz4Nh3oa494DZFdVbNumNGXuk3FXgbmDyRyFxa5Q.png', 'uploads/qpbg3zpP2n60sUrk9xJlE72XbEhflHaWaCUgpZme.png', 'uploads/RCvnRUJ2ejjtdGc3vqKs6q1sPUOfbB6VftUJcyY5.png', '[]', 'BRL', 'dot', 'left', 30, 0, 30, 'R$', 'local', 20, 15.00, 5000.00, 50.00, 1000.00, 10, 2, 0, 0, 1, 0, 0, 1, 0, 0, '2024-06-23 00:50:50', 0, 500, 'daily', 1, 10, 5, 1, 0, 5, 10.00, 5.00, 0, 1, 'suitpay', 1, 80.00, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `setting_mails`
--

CREATE TABLE `setting_mails` (
  `id` bigint UNSIGNED NOT NULL,
  `software_smtp_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_host` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_port` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_encryption` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_from_address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `software_smtp_mail_from_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sub_affiliates`
--

CREATE TABLE `sub_affiliates` (
  `id` bigint UNSIGNED NOT NULL,
  `affiliate_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `suit_pay_payments`
--

CREATE TABLE `suit_pay_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `withdrawal_id` bigint UNSIGNED NOT NULL,
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pix_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `observation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `suit_pay_payments`
--

INSERT INTO `suit_pay_payments` (`id`, `payment_id`, `user_id`, `withdrawal_id`, `pix_key`, `pix_type`, `amount`, `observation`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 10, '16079556790', 'document', 2.00, 'Saque direto', 0, '2024-06-21 17:55:48', '2024-06-21 17:55:48'),
(2, '37d753d7-712a-43ca-bc30-11554a555883', 1, 10, '16079556790', 'document', 2.00, 'Saque direto', 1, '2024-06-21 17:56:42', '2024-06-21 17:56:44');

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wallets`
--

CREATE TABLE `system_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `label` char(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance` decimal(27,12) NOT NULL DEFAULT '0.000000000000',
  `balance_min` decimal(27,12) NOT NULL DEFAULT '10000.100000000000',
  `pay_upto_percentage` decimal(4,2) NOT NULL DEFAULT '45.00',
  `mode` enum('balance_min','percentage') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'percentage',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

--
-- Despejando dados para a tabela `system_wallets`
--

INSERT INTO `system_wallets` (`id`, `label`, `balance`, `balance_min`, `pay_upto_percentage`, `mode`, `created_at`, `updated_at`) VALUES
(1, 'system', 261.800000000000, 10000.100000000000, 45.00, 'percentage', '2023-10-11 16:11:15', '2023-10-16 18:42:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'usd',
  `status` tinyint DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `accept_bonus` tinyint(1) NOT NULL DEFAULT '1',
  `idUnico` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `transactions`
--

INSERT INTO `transactions` (`id`, `payment_id`, `user_id`, `payment_method`, `price`, `currency`, `status`, `created_at`, `updated_at`, `reference`, `accept_bonus`, `idUnico`) VALUES
(1, '2BF77E5D63AC16C7', 1, 'pix', 100.00, 'BRL', 0, '2024-06-19 22:42:25', '2024-06-19 22:42:25', NULL, 1, NULL),
(2, '19F05395519F1643', 1, 'pix', 20.00, 'BRL', 0, '2024-06-19 22:48:32', '2024-06-19 22:48:32', NULL, 1, NULL),
(3, 'DE0832F14BB515F7', 1, 'pix', 20.00, 'BRL', 0, '2024-06-19 22:55:04', '2024-06-19 22:55:04', NULL, 1, NULL),
(4, '1eedb49a-3386-4c5e-8c90-236f7e23c349', 1, 'pix', 20.00, 'BRL', 0, '2024-06-21 02:55:44', '2024-06-21 02:55:44', NULL, 1, NULL),
(5, '9D46FE7E268215A8', 1, 'pix', 20.00, 'BRL', 0, '2024-06-21 03:00:33', '2024-06-21 03:00:33', NULL, 1, NULL),
(6, '5273E95719B41577', 1, 'pix', 1.00, 'BRL', 1, '2024-06-21 16:35:55', '2024-06-21 16:36:32', NULL, 1, NULL),
(7, '8d09870b-254c-4b91-824c-698a7e741ece', 1, 'pix', 1.00, 'BRL', 0, '2024-06-21 16:41:12', '2024-06-21 16:41:12', NULL, 1, NULL),
(8, '436b127a-0b15-445d-b445-1b8b0d771b57', 1, 'pix', 1.00, 'BRL', 0, '2024-06-21 16:42:18', '2024-06-21 16:42:18', NULL, 1, NULL),
(9, 'f48b9310-c7a7-4bed-bb7f-e17fc7176501', 1, 'pix', 1.00, 'BRL', 0, '2024-06-21 16:46:23', '2024-06-21 16:46:23', NULL, 1, NULL),
(10, '0a1db78f-6a39-421b-a952-6071d0f5291b', 1, 'pix', 1.00, 'BRL', 1, '2024-06-21 16:50:27', '2024-06-21 16:50:36', NULL, 1, NULL),
(11, '2e47ca05-5543-4655-90cb-cf91119da39b', 1, 'pix', 1.00, 'BRL', 0, '2024-06-21 17:35:29', '2024-06-21 17:35:29', NULL, 1, NULL),
(12, '6899d790-4003-4d74-ab80-e4a1e52e2fe6', 1, 'pix', 5.00, 'BRL', 0, '2024-06-21 17:38:46', '2024-06-21 17:38:46', NULL, 1, NULL),
(13, '5b18f673-cbd8-4e71-9222-7f7c8fff5b99', 1, 'pix', 1.00, 'BRL', 0, '2024-06-21 17:40:14', '2024-06-21 17:40:14', NULL, 1, NULL),
(14, 'cf61608c-cde5-4d40-a041-9af0df98b9eb', 1, 'pix', 1.00, 'BRL', 0, '2024-06-21 17:43:18', '2024-06-21 17:43:18', NULL, 1, NULL),
(16, '094ef5e2-6908-464c-a1a8-f0611a5cda2b', 1, 'pix', 1.00, 'BRL', 0, '2024-06-21 17:47:36', '2024-06-21 17:47:36', NULL, 1, NULL),
(17, '9af67004-23a0-4a62-9c8e-a5a9d49c3660', 1, 'pix', 1.00, 'BRL', 1, '2024-06-21 17:53:55', '2024-06-21 17:54:17', NULL, 1, '6675e8617709b'),
(22, 'd1856886-005d-437e-8e38-9af365716048', 28, 'pix', 3.00, 'BRL', 1, '2024-06-21 19:48:55', '2024-06-21 19:49:28', NULL, 1, '667603559a90c'),
(23, '6b7a7f6b-6c16-468e-a266-6e4b5a0a13fe', 28, 'pix', 3.00, 'BRL', 1, '2024-06-21 19:54:42', '2024-06-21 19:55:05', NULL, 1, '667604b1ccdb4'),
(24, '3528162d-86d2-47a1-a724-29c175aa5a89', 28, 'pix', 3.00, 'BRL', 1, '2024-06-21 19:57:45', '2024-06-21 19:58:09', NULL, 1, '6676056875ed5'),
(25, '3c59200e-8fb9-4ea6-9f0b-23906cd96cb0', 28, 'pix', 3.00, 'BRL', 1, '2024-06-21 19:59:24', '2024-06-21 20:00:09', NULL, 1, '667605cb784bd'),
(27, '42f442bc-1d17-4494-82f7-4e4c8dd8534e', 1, 'pix', 10.00, 'BRL', 1, '2024-06-22 22:09:03', '2024-06-22 22:09:32', NULL, 1, '66773d6dbf4d5');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oauth_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `oauth_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cpf` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logged_in` tinyint NOT NULL DEFAULT '0',
  `banned` tinyint NOT NULL DEFAULT '0',
  `inviter` int DEFAULT NULL,
  `inviter_code` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `affiliate_revenue_share` bigint NOT NULL DEFAULT '15',
  `affiliate_revenue_share_fake` bigint DEFAULT NULL,
  `affiliate_cpa` decimal(20,2) NOT NULL DEFAULT '10.00',
  `affiliate_baseline` decimal(20,2) NOT NULL DEFAULT '50.00',
  `is_demo_agent` tinyint NOT NULL DEFAULT '0',
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'active',
  `language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pt_BR',
  `role_id` int DEFAULT '3'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `oauth_id`, `oauth_type`, `avatar`, `last_name`, `cpf`, `phone`, `logged_in`, `banned`, `inviter`, `inviter_code`, `affiliate_revenue_share`, `affiliate_revenue_share_fake`, `affiliate_cpa`, `affiliate_baseline`, `is_demo_agent`, `status`, `language`, `role_id`) VALUES
(1, 'Play Fiver', 'PlayFiver@hotmail.com', NULL, '$2y$10$jXVNdWUHxpbeHxvDzI/VFexnzKh5mh9Pqyt.katByS0rVud3jKY42', 'adYTm30xa6VbHWV1YMrGCFeEbqPEshOpF8Wa4VzkhJl3BOy6084eNXu5VJ3o', '2024-04-13 03:38:44', '2024-06-23 01:20:42', NULL, NULL, 'uploads/QpO72iLzeGDDlFfwpDnON9ZTk080tj1xGSt2puB3.png', NULL, NULL, '556781323734', 0, 0, NULL, '3QQ4PSS5ZI', 50, NULL, 7.00, 6.00, 0, 'active', 'pt_BR', 3),
(28, 'Leandro', 'affiliate@gmail.com', NULL, '$2y$10$n31l2GoIyJWE9t0ZGVdw7uLzDYMcLz2IQ2sldW7cNAGmtYjm40/vq', NULL, '2024-06-21 17:41:04', '2024-06-23 01:30:02', NULL, NULL, NULL, NULL, NULL, '67991845708', 0, 0, NULL, '0JQ9UXZ7NH', 50, NULL, 10.00, 50.00, 1, 'active', 'pt_BR', 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `vips`
--

CREATE TABLE `vips` (
  `id` bigint UNSIGNED NOT NULL,
  `bet_symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bet_level` bigint NOT NULL DEFAULT '1',
  `bet_required` bigint DEFAULT NULL,
  `bet_period` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bet_bonus` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `vip_users`
--

CREATE TABLE `vip_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `vip_id` int UNSIGNED NOT NULL,
  `level` bigint NOT NULL,
  `points` bigint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `currency` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `symbol` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `balance` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_bonus_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_deposit_rollover` decimal(10,2) DEFAULT '0.00',
  `balance_withdrawal` decimal(10,2) DEFAULT '0.00',
  `balance_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `balance_cryptocurrency` decimal(20,8) NOT NULL DEFAULT '0.00000000',
  `balance_demo` decimal(20,8) DEFAULT '1000.00000000',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `hide_balance` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_bet` decimal(20,2) NOT NULL DEFAULT '0.00',
  `total_won` bigint NOT NULL DEFAULT '0',
  `total_lose` bigint NOT NULL DEFAULT '0',
  `last_won` bigint NOT NULL DEFAULT '0',
  `last_lose` bigint NOT NULL DEFAULT '0',
  `vip_level` bigint DEFAULT '0',
  `vip_points` bigint DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Despejando dados para a tabela `wallets`
--

INSERT INTO `wallets` (`id`, `user_id`, `currency`, `symbol`, `balance`, `balance_bonus_rollover`, `balance_deposit_rollover`, `balance_withdrawal`, `balance_bonus`, `balance_cryptocurrency`, `balance_demo`, `refer_rewards`, `hide_balance`, `active`, `created_at`, `updated_at`, `total_bet`, `total_won`, `total_lose`, `last_won`, `last_lose`, `vip_level`, `vip_points`) VALUES
(1, 1, 'BRL', 'R$', 0.00, 0.00, 0.00, 5.74, 0.00, 0.00000000, 1000.00000000, 7.00, 0, 1, '2024-04-13 03:38:44', '2024-06-23 01:09:54', 0.00, 0, 0, 0, 0, 0, 0),
(28, 28, 'BRL', 'R$', 12.00, 0.00, 6.00, 0.00, 0.00, 0.00000000, 1000.00000000, 3.08, 0, 1, '2024-06-21 17:41:04', '2024-06-21 20:00:09', 0.00, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wallet_changes`
--

CREATE TABLE `wallet_changes` (
  `id` bigint UNSIGNED NOT NULL,
  `reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `change` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `value_bonus` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_total` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_roi` decimal(20,2) NOT NULL DEFAULT '0.00',
  `value_entry` decimal(20,2) NOT NULL DEFAULT '0.00',
  `refer_rewards` decimal(20,2) NOT NULL DEFAULT '0.00',
  `game` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int UNSIGNED NOT NULL,
  `app_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `peak_connection_count` int NOT NULL,
  `websocket_message_count` int NOT NULL,
  `api_message_count` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura para tabela `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `payment_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proof` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `pix_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pix_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `symbol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cpf` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_histories_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `affiliate_histories_inviter_index` (`inviter`) USING BTREE;

--
-- Índices de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `affiliate_withdraws_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `casino_categories_slug_unique` (`slug`) USING BTREE;

--
-- Índices de tabela `category_game`
--
ALTER TABLE `category_game`
  ADD KEY `category_games_category_id_foreign` (`category_id`) USING BTREE,
  ADD KEY `category_games_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `currency_alloweds_currency_id_foreign` (`currency_id`) USING BTREE;

--
-- Índices de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `deposits_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `digito_pay`
--
ALTER TABLE `digito_pay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `ezzepay`
--
ALTER TABLE `ezzepay`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Índices de tabela `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`),
  ADD KEY `games_provider_id_index` (`provider_id`),
  ADD KEY `games_game_code_index` (`game_code`);

--
-- Índices de tabela `games_keys`
--
ALTER TABLE `games_keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `game_favorites_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_favorites_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_likes`
--
ALTER TABLE `game_likes`
  ADD UNIQUE KEY `game_likes_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_likes_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `game_reviews`
--
ALTER TABLE `game_reviews`
  ADD UNIQUE KEY `game_reviews_user_id_game_id_unique` (`user_id`,`game_id`) USING BTREE,
  ADD KEY `game_reviews_game_id_foreign` (`game_id`) USING BTREE;

--
-- Índices de tabela `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_fivers_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ggr_games_world_slots_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `likes_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `likes_liked_user_id_foreign` (`liked_user_id`) USING BTREE;

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `mission_users`
--
ALTER TABLE `mission_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mission_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `mission_users_mission_id_index` (`mission_id`) USING BTREE;

--
-- Índices de tabela `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Índices de tabela `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Índices de tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `orders_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`) USING BTREE;

--
-- Índices de tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Índices de tabela `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Índices de tabela `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `sub_affiliates_affiliate_id_index` (`affiliate_id`) USING BTREE,
  ADD KEY `sub_affiliates_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `suit_pay_payments_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `suit_pay_payments_withdrawal_id_foreign` (`withdrawal_id`) USING BTREE;

--
-- Índices de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `transactions_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Índices de tabela `vips`
--
ALTER TABLE `vips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `vip_users`
--
ALTER TABLE `vip_users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `vip_users_user_id_index` (`user_id`) USING BTREE,
  ADD KEY `vip_users_vip_id_index` (`vip_id`) USING BTREE;

--
-- Índices de tabela `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallets_user_id_index` (`user_id`) USING BTREE;

--
-- Índices de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `wallet_changes_user_id_foreign` (`user_id`) USING BTREE;

--
-- Índices de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Índices de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `withdrawals_user_id_foreign` (`user_id`) USING BTREE;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `affiliate_histories`
--
ALTER TABLE `affiliate_histories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `affiliate_withdraws`
--
ALTER TABLE `affiliate_withdraws`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT de tabela `currency_alloweds`
--
ALTER TABLE `currency_alloweds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `custom_layouts`
--
ALTER TABLE `custom_layouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `digito_pay`
--
ALTER TABLE `digito_pay`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ezzepay`
--
ALTER TABLE `ezzepay`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=929;

--
-- AUTO_INCREMENT de tabela `games_keys`
--
ALTER TABLE `games_keys`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `game_favorites`
--
ALTER TABLE `game_favorites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_config`
--
ALTER TABLE `ggds_spin_config`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ggds_spin_runs`
--
ALTER TABLE `ggds_spin_runs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ggr_games`
--
ALTER TABLE `ggr_games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ggr_games_world_slots`
--
ALTER TABLE `ggr_games_world_slots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mission_users`
--
ALTER TABLE `mission_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11137;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `setting_mails`
--
ALTER TABLE `setting_mails`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `sub_affiliates`
--
ALTER TABLE `sub_affiliates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `suit_pay_payments`
--
ALTER TABLE `suit_pay_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `system_wallets`
--
ALTER TABLE `system_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `vips`
--
ALTER TABLE `vips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vip_users`
--
ALTER TABLE `vip_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `wallet_changes`
--
ALTER TABLE `wallet_changes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
