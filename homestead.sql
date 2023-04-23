-- Adminer 4.8.1 MySQL 8.0.31-0ubuntu0.20.04.2 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `code`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1,	'Sativa',	'sativa',	'‘Sativa’ is one of three main ways cannabis strains are classified, along with ‘indica’ and ‘hybrid’. It’s an aging, imperfect classification system, but dispensaries offer sativa strains as the energetic counterpoint to indica strains, which are considered more sedative. Budtenders pitch sativa strains as offering energy, creativity, or focus, as compared to other types of weed that put you to sleep. Many patients also state in Leafly reviews that they use sativa strains to help them manage symptoms of mood disorders or other cognitive issues, including depression and ADHD. \r\n\r\nMost modern, popular strains are hybrids of indicas and sativa, so you’re unlikely to ever find a ‘pure’ sativa strain. Strains labeled ‘sativa’ comprise the smallest segment of the Leafly database, with 548 strains, versus 860 listed as indica strains, and 3,800 listed as hybrid strains.\r\n\r\nEach person’s chemistry is different, but here are some super-popular, strong sativa strains to check out and see if the effect is right for your needs.  ',	NULL,	NULL,	NULL),
(2,	'Indica',	'indica',	'\'Indica\' is one of three types of weed strains in the legacy pot classification system. An aging, imperfect system? Yes. But most dispensaries offer indica strains as the sleepy counterpoint to sativa strains, which users report as more energetic. Budtenders pitch indica strains as offering relaxation, hunger, and body effects, compared to other cultivars that reviewers say help them focus, lift the blues, or suppress appetite. Many patients also state in Leafly reviews that they use indica strains to help them manage symptoms like pain, inflammation, muscle spasms, nausea, and other body issues. Indica strain users also report managing nervous disorders like stress and anxiety. Many modern and popular indica strains are mixes of indica and sativa parents found in the wild. In other words, it\'s very hard to find pure indica strains. In fact, indica strains comprise the second smallest segment of the Leafly database. Leafly lists 870 indica strains, 548 sativa strains, and 3,800 hybrid strains.\r\n\r\nIt can take more than one try to find the indicas you love. But here are some super-popular, strong indica strains to check out and see if the effect fits your needs.',	NULL,	NULL,	NULL),
(3,	'Hybrid',	'hybrid',	'\'Hybrid\' is a friendly, catch-all term from the legacy pot naming system that includes indica strains and sativa strains. It\'s an aging and simplistic system, but it\'s useful. Leafly reviewers consistently report similar effects for the hybrid strains and develop preferences for certain varieties and strain families. Most dispensary menus classify flowers by indica, sativa, or hybrid. Leafly has more than 3,800 \'hybrid\' strains in its database, growing almost daily. By contrast, there are only a few hundred sativa strains and less than 1,000 indica strains.\r\n\r\nHybrid weed strains are the most popular because they encapsulate so much variety in look, flavor, and effect: from the mood-stabilizing Blue Dream\'s green to relaxing Runtz\'s purple bling. Many breeders consider every aspect when they work with a hybrid strain. The hybrid class of cannabis is so big that you can spend years exploring it.\r\n\r\nOur idea of the best hybrid strains includes a mix of super-available and well-reviewed strains. We also love hybrid strains that lean more one way than the other, such as a sativa-dominant hybrid or an indica-dominant hybrid. You can even leave reviews on Leafly to track how you react to different types of hybrid strains.',	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_08_19_000000_create_failed_jobs_table',	1),
(9,	'2014_10_12_000000_create_users_table',	2),
(10,	'2019_12_14_000001_create_personal_access_tokens_table',	2),
(11,	'2023_04_02_122041_create_products_table',	2),
(12,	'2023_04_02_122829_create_categories_table',	2),
(13,	'2023_04_09_110507_create_orders_table',	3),
(14,	'2023_04_09_121926_create_order_product_table',	4),
(16,	'2023_04_23_114747_add_counter_order_product_table',	5);

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `count` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `count`, `created_at`, `updated_at`) VALUES
(1,	4,	3,	1,	NULL,	NULL),
(2,	4,	3,	1,	NULL,	NULL),
(3,	4,	3,	1,	NULL,	NULL),
(4,	4,	3,	1,	NULL,	NULL),
(5,	4,	1,	1,	NULL,	NULL),
(6,	4,	1,	1,	NULL,	NULL),
(23,	5,	5,	4,	'2023-04-23 12:08:23',	'2023-04-23 12:22:04'),
(24,	5,	2,	3,	'2023-04-23 12:22:00',	'2023-04-23 12:22:06');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `orders` (`id`, `status`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1,	0,	NULL,	NULL,	'2023-04-09 09:41:06',	'2023-04-09 09:41:06'),
(2,	0,	NULL,	NULL,	'2023-04-09 09:42:12',	'2023-04-09 09:42:12'),
(3,	0,	NULL,	NULL,	'2023-04-09 09:42:31',	'2023-04-09 09:42:31'),
(4,	0,	NULL,	NULL,	'2023-04-09 09:43:29',	'2023-04-09 09:43:29'),
(5,	0,	NULL,	NULL,	'2023-04-23 11:23:54',	'2023-04-23 11:23:54');

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  `category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `products` (`id`, `name`, `code`, `description`, `image`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1,	'Colorado Cookies',	'colorado-cookies',	'Auto-feminized marijuana seeds Auto Colorado Cookies have a symbolic name: in terms of cannabis breeding, the state of Colorado (USA) is no less a cult place than Amsterdam or the California coast, or, for example, the city of Christiania. As for the alleged genetics, one of the ancestors of the Colorado Cookies is easy to guess, it was Girl Scout Cookies - a powerful and necessarily resinous indica with the aroma of fresh baked goods. How was the second one sorted? In terms of prevalence, there is more than one variety of cannabis by the word Colorado, but they are not involved in this autoflower. So here we have a GSC cross and… an amazing purple blueberry with a berry flavor and a reputation for being a crowd favorite. Both parents have specific traits and a very special terpene profile. By autoflowering marijuana standards, Auto Colorado Cookies is massive and produces an impressive amount of resin, its rich chocolate and candied cookie scent.',	NULL,	5,	1,	NULL,	NULL),
(2,	'Pineapple Express',	'pineapple-express',	'Pineapple Express Auto-Feminized is the epitome of modern breeding excellence. Marley Seedbank breeders took the classic Pineapple Express strain (a masterpiece cross between Trainwrek and Hawaiian) known for its intense pineapple gum scent. Amazing hybrid! However, the Jamaicans were not afraid to approach the project creatively and edit it a little: not every autoflower has such a yield and concentration of bioactive substances! Auto Pineapple Express from the Jamaican manufacturer is 100% authentic, going back to the landrace varieties of Colombia, Afghanistan and Hawaii. The original sweet and sour aroma is comparable to the taste of children\'s joys - lollipops and soda, and this terpene bouquet leaves no doubt about the authenticity of genetics!',	NULL,	9,	1,	NULL,	NULL),
(3,	'Red Dwarf',	'red-dwarf',	'Not only beauty is a good reason to buy Auto Red Dwarf cannabis seeds, because the variety inherits a solid \"dowry\" from the parents of Skunk and White Dwarf. In addition to the pungent odor, Skunk passed on enviable stress resistance and fertility to the proud red descendant. On the other hand, White Dwarf is a white variety, which indicates a record number of essential oil-producing trichomes ... and Red Dwarf Auto is not inferior in any way. When creating the variety, Dutch breeders used backcrossing, cloning and a number of other methods to increase the yield, according to numerous reviews - they succeeded! Auto Red Dwarf marijuana seeds have received great reviews for their great terpene profile, impressive resin production, and solid harvest weight for an auto. The genetics goes back to the landraces of Mexico, Colombia and Afghanistan.',	NULL,	7,	2,	NULL,	NULL),
(4,	'Jamaica Sativa',	'jamaica-sativa',	'Jamaica Sativa Cannabis Seeds Grow Huge Monsters and Break Record Yields! Depending on the conditions, one plant can take up more than one and a half square meters of space and stretch up to 4 meters high! It is a pure Jamaican sativa that contains 24% THC. It is an excellent remedy for depression and creative crisis. It gives an unforgettable experience, bringing with it cheerfulness, creativity and sociability.\r\n\r\nThis tree of paradise requires a lot of light, a capacious container for the substrate, plentiful regular watering and quality top dressing. Jamaica Sativa cannabis seeds are suitable for large greenhouses and large grow boxes. Due to the long maturation, outdoor cultivation is possible only in the southern regions, where there are no autumn frosts, and warm weather persists until November.\r\n\r\nOutdoors, the Jamaican Sativa begins to bloom in September and lasts for 90 days. During this time, huge inflorescences are formed on the branches, the total mass of which during the harvest often exceeds one and a half kilograms! If you do not support and tie them up in advance, one day you will have to find the fattest branches broken off! A mesh stretched over a young bush will also help to avoid this. Jamaican Sativa yield record - 4 kg per bush! But you have to fork out for equipment and work hard to achieve such indicators.\r\n\r\nThe refreshing, sweet and sour aroma of the finished buds is similar to flower nectar. The smoke is inhaled easily, but because of the strong tarry exhalation, it glues the lungs together. Leaves a sweet, fruity, mango-like aftertaste.\r\n\r\nThe strain is widely used for medical purposes. One bong of such a product for half a day relieves depressive thoughts. Due to this property and stimulation of appetite, it is often prescribed for cancer patients. Excellent results have also been obtained in the fight against post-traumatic syndrome.\r\n\r\nThis is an excellent variety for large companies. The effect promotes sociability, quickly improves mood, causes a feeling of euphoria and joy. Suitable for daily use, allowing you to deal with routine tasks with a creative approach!',	NULL,	9,	1,	NULL,	NULL),
(5,	'Gorilla Glue Fast',	'gorilla-glue-fast',	'Gorilla Glu Fast Feminized Photoperiod Cannabis Seeds come from Gorilla Glue, known for its amazing performance and numerous competition awards. The offered product is 100% genetically original, combining cannabis landraces of Pakistan, Thailand and Afghanistan in its pedigree. From parents (Chem\'s Sister, Chocolate Diesel), the genotype adopted a persistent earthy aroma - spicy, with hints of chocolate and \"diesel fuel\". The Fast version is impressive in that the short maturation here coexists with an equal amount of indica and sativa, as well as a huge amount of ester resins. The fact that the name “sticky” for the fast version remained relevant (still glue) is a real achievement of independent selection in the USA!',	NULL,	6,	2,	NULL,	NULL);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2023-04-23 12:29:20
