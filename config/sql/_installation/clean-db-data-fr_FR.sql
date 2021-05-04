/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Truncate tables before insertion
TRUNCATE TABLE `fcs_action_logs`;
TRUNCATE TABLE `fcs_address`;
TRUNCATE TABLE `fcs_attribute`;
TRUNCATE TABLE `fcs_blog_posts`;
TRUNCATE TABLE `fcs_cart_product_units`;
TRUNCATE TABLE `fcs_cart_products`;
TRUNCATE TABLE `fcs_carts`;
TRUNCATE TABLE `fcs_category`;
TRUNCATE TABLE `fcs_category_product`;
TRUNCATE TABLE `fcs_configuration`;
TRUNCATE TABLE `fcs_cronjob_logs`;
TRUNCATE TABLE `fcs_cronjobs`;
TRUNCATE TABLE `fcs_customer`;
TRUNCATE TABLE `fcs_deposits`;
TRUNCATE TABLE `fcs_images`;
TRUNCATE TABLE `fcs_invoice_taxes`;
TRUNCATE TABLE `fcs_invoices`;
TRUNCATE TABLE `fcs_manufacturer`;
TRUNCATE TABLE `fcs_order_detail`;
TRUNCATE TABLE `fcs_order_detail_feedbacks`;
TRUNCATE TABLE `fcs_order_detail_tax`;
TRUNCATE TABLE `fcs_order_detail_units`;
TRUNCATE TABLE `fcs_pages`;
TRUNCATE TABLE `fcs_payments`;
TRUNCATE TABLE `fcs_pickup_days`;
TRUNCATE TABLE `fcs_product`;
TRUNCATE TABLE `fcs_product_attribute`;
TRUNCATE TABLE `fcs_product_attribute_combination`;
TRUNCATE TABLE `fcs_sliders`;
TRUNCATE TABLE `fcs_stock_available`;
TRUNCATE TABLE `fcs_sync_domains`;
TRUNCATE TABLE `fcs_sync_products`;
TRUNCATE TABLE `fcs_tax`;
TRUNCATE TABLE `fcs_timebased_currency_order_detail`;
TRUNCATE TABLE `fcs_timebased_currency_payments`;
TRUNCATE TABLE `fcs_units`;
TRUNCATE TABLE `phinxlog`;
TRUNCATE TABLE `queue_phinxlog`;
TRUNCATE TABLE `queue_processes`;
TRUNCATE TABLE `queued_jobs`;
TRUNCATE TABLE `queued_tasks`;

/*!40000 ALTER TABLE `fcs_action_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_action_logs` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_address` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_attribute` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_blog_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_blog_posts` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_cart_product_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_cart_product_units` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_cart_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_cart_products` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_carts` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_category` DISABLE KEYS */;
INSERT INTO `fcs_category` VALUES
(20,2,'All products','',3,4,1,'2016-10-19 21:05:00','2016-10-19 21:05:00');
/*!40000 ALTER TABLE `fcs_category` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_category_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_category_product` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_configuration` DISABLE KEYS */;
INSERT INTO `fcs_configuration` VALUES
(11,1,'FCS_PRODUCT_AVAILABILITY_LOW','Disponibilité réduite<br /><div class=\"small\">A partir de quel montant, un texte d'information devrait être visible. \"(x disponible sur le site\")?</div>','10','number',600,'fr_FR','2017-07-26 13:24:47','2014-06-01 01:40:34'),
(31,1,'FCS_DAYS_SHOW_PRODUCT_AS_NEW','Combien de jours les produits doivent-ils être \"marqué comme nouveau\"?','7','number',700,'fr_FR','2017-07-26 13:24:47','2014-05-14 21:15:45'),
(164,1,'FCS_CUSTOMER_GROUP','A quel groupe d'utilisateurs les nouveaux membres doivent être affectés?','3','Menu déroulant',400,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(456,1,'FCS_FOOTER_CMS_TEXT','Texte supplémentaire pour le pied de page',NULL,'textarea_big',800,'fr_FR','2014-06-11 17:50:55','2016-07-01 21:47:47'),
(508,1,'FCS_FACEBOOK_URL','Url Facebook à intégrer dans le pied de page','https://www.facebook.com/FoodCoopShop/','text',900,'fr_FR','2015-07-08 13:23:54','2015-07-08 13:23:54'),
(538,1,'FCS_REGISTRATION_EMAIL_TEXT','Texte supplémentaire envoyé dans l'e-mail d'inscription après une inscription réussie. <br /> <a href=\"/admin/configurations/Aperçu de l'e-mail/FCS_REGISTRATION_EMAIL_TEXT\" target=\"_blank\"><i class=\"fas fa-info-circle\"></i> Aperçu des e-mails</a>','','textarea_big',1700,'fr_FR','2016-06-26 00:00:00','2016-06-26 00:00:00'),
(543,1,'FCS_RIGHT_INFO_BOX_HTML','Contenu de la boîte dans la colonne de droite sous le panier d'achat. <br /><div class=\"small\">Pour que l'arrière-plan d'une ligne soit vert, veuillez formater comme suit \"Intitulé 3\".</div>','<h3>Délai de livraison</h3><p>Vous pouvez commander chaque semaine jusqu'au mardi minuit et récupérer les produits le vendredi suivant.</p>','textarea_big',1500,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(544,1,'FCS_NO_DELIVERY_DAYS_GLOBAL','Interruption des livraisons pour tous les fabricants?<br /><div class=\"small\">Ici, vous pouvez définir des jours sans livraison pour l'ensemble de la coopérative alimentaire.</div>','','multiple_dropdown',100,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(545,1,'FCS_ACCOUNTING_EMAIL','E-mail du gestionnaire financier<br /><div class=\"small\">Qui reçoit la notification de l'envoi des factures?</div>','','text',1100,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(546,1,'FCS_REGISTRATION_INFO_TEXT','Texte d'information dans le formulaire d'inscription<br /><div class=\"small\">Ce texte d'information est affiché dans le formulaire d'inscription sous l'adresse e-mail.</div>','Vous devez être membre si vous voulez commander ici.','textarea_big',1600,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(547,1,'FCS_SHOW_PRODUCTS_FOR_GUESTS','Produits visibles pour les clients?','0','boolean',200,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(548,1,'FCS_DEFAULT_NEW_MEMBER_ACTIVE','Activation automatique des nouveaux membres?','0','boolean',500,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(549,1,'FCS_MINIMAL_CREDIT_BALANCE','Jusqu'à quel montant de crédit les commandes doivent être possibles?','0','number',1250,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(550,1,'FCS_BANK_ACCOUNT_DATA','Compte bancaire pour les téléchargements de crédit.','Compte de crédit Exemple de banque / IBAN: AT65 5645 4154 8748 8999 / BIC: ABC87878','text',1300,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(551,1,'FCS_MEMBER_FEE_BANK_ACCOUNT_DATA','Compte bancaire pour le téléchargement des cotisations des membres.','Compte de frais de membre Exemple de banque / IBAN: AT65 5645 4154 8748 8999 / BIC: ABC87878','text',1400,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(552,1,'FCS_DELIVERY_DETAILS_FOR_MANUFACTURERS','Détails de livraison supplémentaires pour les fabricants<br /><div class=\"small\">seront affichés dans les listes de commandes après la date de livraison.</div>',', De 15h00 à 17h00','text',1200,'fr_FR','2017-07-26 13:24:47','2017-07-26 13:24:47'),
(553,1,'FCS_BACKUP_EMAIL_ADDRESS_BCC','Adresse e-mail à laquelle tous les e-mails générés automatiquement sont envoyés en tant que BCC (Backup).<br /><div class=\"small\">Peut rester vide.</div>','','text',1900,'fr_FR','2016-10-06 00:00:00','2016-10-06 00:00:00'),
(554,1,'FCS_SHOW_FOODCOOPSHOP_BACKLINK','Afficher le lien vers www.foodcoopshop.com?<br /><div class=\"small\">Le lien est affiché dans le pied de page.</div>','1','boolean',1800,'fr_FR','2016-11-27 00:00:00','2016-11-27 00:00:00'),
(556,1,'FCS_APP_NAME','Nom de la coopérative alimentaire','','text',50,'fr_FR','2017-01-12 00:00:00','2017-01-12 00:00:00'),
(557,1,'FCS_APP_ADDRESS','Adresse de la coopérative<br /><div class=\"small\">Utilisé dans le pied de page de la page d'accueil et des courriels, la politique de confidentialité et les conditions d'utilisation.</div>','','textarea',60,'fr_FR','2017-01-12 00:00:00','2017-01-12 00:00:00'),
(558,1,'FCS_APP_EMAIL','E-mail de la coopérative<br /><div class=\"small\"></div>','','text',70,'fr_FR','2017-01-12 00:00:00','2017-01-12 00:00:00'),
(559,1,'FCS_PLATFORM_OWNER','Opérateur de la plate-forme<br /><div class=\"small\">Pour la politique de confidentialité et les conditions d'utilisation, veuillez également ajouter l'adresse. Peut être laissé vide si le food-coop lui-même est opérateur.</div>','','textarea',90,'fr_FR','2017-01-12 00:00:00','2017-01-12 00:00:00'),
(564,1,'FCS_ORDER_COMMENT_ENABLED','Afficher le champ de commentaires lors de la passation d'une commande?<br /><div class=\"small\">Affiché dans la zone d'administration sous\"Commandes\".</div>','1','boolean',130,'fr_FR','2017-07-09 00:00:00','2017-07-09 00:00:00'),
(565,1,'FCS_USE_VARIABLE_MEMBER_FEE','Utiliser la cotisation variable des membres?<br /><div class=\"small\">Réduire la cotisation variable des membres du fabricant\'s factures? Il faut donc augmenter les prix.</div>','0','readonly',400,'fr_FR','2017-08-02 00:00:00','2017-08-02 00:00:00'),
(566,1,'FCS_DEFAULT_VARIABLE_MEMBER_FEE_PERCENTAGE','Valeur par défaut pour la cotisation variable des membres<br /><div class=\"small\">Le pourcentage peut être modifié dans les paramètres du fabricant.</div>','0','readonly',500,'fr_FR','2017-08-02 00:00:00','2017-08-02 00:00:00'),
(567,1,'FCS_NETWORK_PLUGIN_ENABLED','Le module réseau est activé?<br /><div class=\"small\"><a href=\"https://foodcoopshop.github.io/en/network-module\" target=\"_blank\">Infos sur le module réseau</a></div>','0','readonly',500,'fr_FR','2017-09-14 00:00:00','2017-09-14 00:00:00'),
(568,1,'FCS_TIMEBASED_CURRENCY_ENABLED','Module de paiement à terme activé?<br /><div class=\"small\"><a href=\"https://foodcoopshop.github.io/fr/module de paiement à terme\" target=\"_page blanche\">Infos sur le module de paiement à terme</a></div>','0','boolean',2000,'fr_FR','2018-03-16 15:23:34','2018-03-16 15:23:34'),
(569,1,'FCS_TIMEBASED_CURRENCY_NAME','Payer avec le temps : Nom de l'unité<br /><div class=\"small\">max. 10 characters</div>','heures','text',2100,'fr_FR','2018-03-16 15:23:34','2018-03-16 15:23:34'),
(570,1,'FCS_TIMEBASED_CURRENCY_SHORTCODE','Payer avec le terms : Abréviation<br /><div class=\"small\">max. 3 characters</div>','h','text',2200,'fr_FR','2018-03-16 15:23:34','2018-03-16 15:23:34'),
(571,1,'FCS_TIMEBASED_CURRENCY_EXCHANGE_RATE','Payer avec le temps : Taux de change<br /><div class=\"small\">in €, 2 decimals</div>','10.00','number',2300,'fr_FR','2018-03-16 15:23:34','2018-03-16 15:23:34'),
(572,1,'FCS_TIMEBASED_CURRENCY_MAX_CREDIT_BALANCE_CUSTOMER','Payer avec le terms : Cadre de découvert pour les membres<br /><div class=\"small\">Combien de tentatives sont autorisées au maximum pour les membres?</div>','10','nombre',2400,'fr_FR','2018-03-16 15:23:34','2018-03-16 15:23:34'),
(573,1,'FCS_TIMEBASED_CURRENCY_MAX_CREDIT_BALANCE_MANUFACTURER','Payer à temps : Cadre de découvert pour les fabricants<br /><div class=\"small\">Combien de tantatives sont autorisées au maximum pour les fabricants?</div>','100','nombre',2500,'fr_FR','2018-03-16 15:23:34','2018-03-16 15:23:34'),
(574,1,'FCS_SHOW_PRODUCT_PRICE_FOR_GUESTS','Prix du produit pour les clients?','0','boolean',210,'fr_FR','2018-05-28 18:05:54','2018-05-28 18:05:54'),
(575,1,'FCS_CURRENCY_SYMBOL','Symbole de la devise','$','lecture seule',520,'fr_FR','2018-06-13 19:53:14','2018-06-13 19:53:14'),
(576,1,'FCS_DEFAULT_LOCALE','Langue','fr_FR','lecture seule',550,'fr_FR','2018-06-26 10:18:55','2018-06-26 10:18:55'),
(577,1,'FCS_FOODCOOPS_MAP_ENABLED','Montrer la carte avec d'autres foodcoops?','1','boolean',1280,'fr_FR','2019-02-11 22:25:36','2019-02-11 22:25:36'),
(578,1,'FCS_WEEKLY_PICKUP_DAY','Jour de ramassage hebdomadaire','5','lecture seule',600,'fr_FR','2019-02-18 12:38:00','2019-02-18 12:38:00'),
(579,1,'FCS_DEFAULT_SEND_ORDER_LISTS_DAY_DELTA','Envoi des listes de commandes: x jours avant le jour du ramassage','2','lecture seule',650,'fr_FR','2019-02-18 12:38:00','2019-02-18 12:38:00'),
(580,1,'FCS_ORDER_POSSIBLE_FOR_STOCK_PRODUCTS_IN_ORDERS_WITH_DELIVERY_RHYTHM','Autoriser les commandes hebdomadaires pour les produits en stock?','1','boolean',750,'fr_FR','2019-02-18 12:38:00','2019-02-18 12:38:00'),
(581,1,'FCS_SHOW_NON_STOCK_PRODUCTS_IN_INSTANT_ORDERS','Afficher uniquement les produits en stock dans les commandes instantanées?','0','boolean',760,'fr_FR','2019-02-18 12:38:00','2019-02-18 12:38:00'),
(582,1,'FCS_INCLUDE_STOCK_PRODUCTS_IN_INVOICES','Inclure les produits en stock dans les factures?','1','lecture seule',600,'fr_FR','2019-02-18 12:38:00','2019-02-18 12:38:00'),
(583,1,'FCS_REGISTRATION_NOTIFICATION_EMAILS','Qui doit être informé des nouveaux enregistrements?<br /><div class=\"small\">Veuillez séparer plusieurs adresses électroniques avec , (aucun espace).</div>','','text',550,'fr_FR','2019-03-05 20:01:59','2019-03-05 20:01:59'),
(584,1,'FCS_SELF_SERVICE_MODE_FOR_STOCK_PRODUCTS_ENABLED','Utiliser le mode libre-service pour les produits en stock?<br /><div class=\"small\"><a href=\"https://foodcoopshop.github.io/en/self-service-mode\" target=\"_Page blanche\">Documentation en ligne</a></div>','0','boolean',3000,'fr_FR','2019-04-17 20:01:59','2019-04-17 20:01:59'),
(585,1,'FCS_APP_ADDITIONAL_DATA','Informations supplémentaires sur la coopérative','','textarea',80,'fr_FR','2019-08-03 20:07:08','2019-08-03 20:07:08'),
(586,1,'FCS_SELF_SERVICE_MODE_TEST_MODE_ENABLED','Run self-service mode in test mode?<br /><div class=\"small\">N'ajoute pas de liens vers le menu principal et vers les produits en stock.</div>','0','boolean',3100,'fr_FR','2019-12-09 13:46:32','2019-12-09 13:46:32'),
(587,1,'FCS_CASHLESS_PAYMENT_ADD_TYPE','Type d'ajout des paiements<br /><div class=\"small\">Comment les ajouts de paiement entrent-ils dans FoodCoopShop ?</div>','manuel','menu déroulant',1450,'fr_FR','2020-02-11 10:13:01','2020-02-11 10:13:01'),
(588,1,'FCS_SHOW_NEW_PRODUCTS_ON_HOME','Montrer les nouveaux produits sur la page d'accueil?','1','boolean',220,'fr_FR','2020-04-15 09:41:58','2020-04-15 09:41:58'),
(589,1,'FCS_FEEDBACK_TO_PRODUCTS_ENABLED','Les membres sont-ils autorisés à écrire des commentaires sur les produits?','1','boolean',3200,'fr_FR','2020-06-19 09:02:50','2020-06-19 09:02:50'),
(590,1,'FCS_CUSTOMER_CAN_SELECT_PICKUP_DAY','Le jour de ramassage peut être choisi par le membre lors de la confirmation de la commande.','0','lecture seule',590,'fr_FR','2020-07-06 10:34:39','2020-07-06 10:34:39'),
(591,1,'FCS_SEND_INVOICES_TO_CUSTOMERS','Mode vente au détail activé?.','0','lecture seule',580,'fr_FR','2020-10-29 10:06:39','2020-10-29 10:06:39'),
(592,1,'FCS_DEPOSIT_TAX_RATE','TVA pour le dépôt','20.00','lecture seule',581,'fr_FR','2020-11-03 15:24:01','2020-11-03 15:24:01'),
(593,1,'FCS_INVOICE_HEADER_TEXT','Texte d'en-tête pour les factures adressées aux membres','','lecture seule',582,'fr_FR','2020-11-03 15:24:01','2020-11-03 15:24:01'),
(594,1,'FCS_MEMBER_FEE_PRODUCTS','Quels produits sont utilisés comme produit de cotisation des membres?<div class=\"small\">Les produits sélectionnés sont la base de la colonne Cotisation des membres dans l'administration des membres et ne figurent pas dans les statistiques du chiffre d'affaires.</div>','','plusieurs_listes_déroulantes',3300,'fr_FR','2020-12-20 19:26:16','2020-12-20 19:26:16'),
(595,1,'FCS_CHECK_CREDIT_BALANCE_LIMIT','Montant du solde de crédit lors de l'envoi de l'email de rappel.','50','nombre',1450,'fr_FR','2021-01-19 11:23:39','2021-01-19 11:23:39');
/*!40000 ALTER TABLE `fcs_configuration` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_cronjob_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_cronjob_logs` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_cronjobs` DISABLE KEYS */;
INSERT INTO `fcs_cronjobs` VALUES
(1,'BackupDatabase','Jour',NULL,NULL,'04:00:00',1),
(2,'CheckCreditBalance','Semaine',NULL,'Vendredi','22:30:00',1),
(3,'EmailOrderReminder','Semaine',NULL,'Lundi','18:00:00',1),
(4,'PickupReminder','Semaine',NULL,'Lundi','09:00:00',1),
(5,'SendInvoicesToManufacturers','Mois',11,NULL,'10:30:00',1),
(6,'SendOrderLists','Jour',NULL,NULL,'04:30:00',1),
(7,'SendInvoicesToCustomers','Semaine',NULL,'Samedi','10:00:00',0);
/*!40000 ALTER TABLE `fcs_cronjobs` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_customer` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_deposits` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_images` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_invoice_taxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_invoice_taxes` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_invoices` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_manufacturer` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_order_detail` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_order_detail_feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_order_detail_feedbacks` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_order_detail_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_order_detail_tax` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_order_detail_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_order_detail_units` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_pages` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_payments` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_pickup_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_pickup_days` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_product` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_product_attribute` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_product_attribute_combination` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_product_attribute_combination` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_sliders` DISABLE KEYS */;
INSERT INTO `fcs_sliders` VALUES
(6,'demo-slider.jpg',NULL,0,0,1);
/*!40000 ALTER TABLE `fcs_sliders` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_stock_available` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_stock_available` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_sync_domains` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_sync_domains` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_sync_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_sync_products` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_tax` DISABLE KEYS */;
INSERT INTO `fcs_tax` VALUES
(1,20.000,1,0),
(2,10.000,1,0),
(3,13.000,1,0);
/*!40000 ALTER TABLE `fcs_tax` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_timebased_currency_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_timebased_currency_order_detail` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_timebased_currency_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_timebased_currency_payments` ENABLE KEYS */;

/*!40000 ALTER TABLE `fcs_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `fcs_units` ENABLE KEYS */;

/*!40000 ALTER TABLE `phinxlog` DISABLE KEYS */;
INSERT INTO `phinxlog` VALUES
(20200404145856,'RemoveV2Migrations','2020-04-04 15:01:08','2020-04-04 15:01:08',0),
(20200415073329,'ShowNewProductsOnHome','2020-04-15 07:41:58','2020-04-15 07:41:58',0),
(20200501192722,'EnableCashlessPaymentAddTypeConfiguration','2020-05-01 19:30:13','2020-05-01 19:30:13',0),
(20200618063024,'AddProductFeedback','2020-06-19 07:02:50','2020-06-19 07:02:50',0),
(20200703072605,'CustomerCanSelectPickupDay','2020-07-06 08:34:39','2020-07-06 08:34:39',0),
(20200831142250,'RemoveEmailLogTable','2020-08-31 15:10:25','2020-08-31 15:10:25',0),
(20200910091755,'AddMemberSettingUseCameraForMobileBarcodeScanning','2020-09-10 09:20:55','2020-09-10 09:20:55',0),
(20200925073919,'GermanIbanFix','2020-09-25 08:12:42','2020-09-25 08:12:42',0),
(20201017182431,'AdaptMinimalCreditBalance','2020-10-17 18:38:00','2020-10-17 18:38:00',0),
(20201029084931,'AddRetailMode','2020-10-29 09:06:39','2020-10-29 09:06:39',0),
(20201118084516,'AddRetailMode2','2020-11-18 08:47:37','2020-11-18 08:47:37',0),
(20201213120713,'AddRetailMode3','2020-12-13 12:14:01','2020-12-13 12:14:01',0),
(20201217101514,'SliderWithLink','2020-12-17 10:26:36','2020-12-17 10:26:37',0),
(20201220182015,'ImproveMemberFeeAdministration','2020-12-20 18:26:16','2020-12-20 18:26:16',0),
(20210119101923,'CheckCreditBalanceLimit','2021-01-19 10:23:39','2021-01-19 10:23:39',0);
/*!40000 ALTER TABLE `phinxlog` ENABLE KEYS */;

/*!40000 ALTER TABLE `queue_phinxlog` DISABLE KEYS */;
INSERT INTO `queue_phinxlog` VALUES
(20150425180802,'Init','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20150511062806,'Fixmissing','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20150911132343,'ImprovementsForMysql','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20161319000000,'IncreaseDataSize','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20161319000001,'Priority','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20161319000002,'Rename','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20161319000003,'Processes','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20171013131845,'AlterQueuedJobs','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20171013133145,'Utf8mb4Fix','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20171019083500,'ColumnLength','2020-09-17 07:23:25','2020-09-17 07:23:25',0),
(20171019083501,'MigrationQueueNull','2020-09-17 07:23:25','2020-09-17 07:23:26',0),
(20171019083502,'MigrationQueueStatus','2020-09-17 07:23:26','2020-09-17 07:23:26',0),
(20171019083503,'MigrationQueueProcesses','2020-09-17 07:23:26','2020-09-17 07:23:26',0),
(20171019083505,'MigrationQueueProcessesIndex','2020-09-17 07:23:26','2020-09-17 07:23:26',0),
(20171019083506,'MigrationQueueProcessesKey','2020-09-17 07:23:26','2020-09-17 07:23:26',0);
/*!40000 ALTER TABLE `queue_phinxlog` ENABLE KEYS */;

/*!40000 ALTER TABLE `queue_processes` DISABLE KEYS */;
/*!40000 ALTER TABLE `queue_processes` ENABLE KEYS */;

/*!40000 ALTER TABLE `queued_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_jobs` ENABLE KEYS */;

/*!40000 ALTER TABLE `queued_tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `queued_tasks` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

