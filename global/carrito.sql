-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2020 a las 12:39:41
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carrito`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(2, 4, 1, '300.00', 1, 0),
(3, 4, 2, '429.00', 1, 0),
(4, 4, 3, '1005.35', 1, 0),
(5, 5, 1, '300.00', 1, 0),
(6, 5, 2, '429.00', 1, 0),
(7, 5, 3, '1005.35', 1, 0),
(8, 6, 1, '300.00', 1, 0),
(9, 6, 2, '429.00', 1, 0),
(10, 6, 3, '1005.35', 1, 0),
(11, 7, 1, '300.00', 1, 0),
(12, 7, 2, '429.00', 1, 0),
(13, 7, 3, '1005.35', 1, 0),
(14, 8, 1, '300.00', 1, 0),
(15, 8, 2, '429.00', 1, 0),
(16, 8, 3, '1005.35', 1, 0),
(17, 9, 1, '300.00', 1, 0),
(18, 9, 2, '429.00', 1, 0),
(19, 9, 3, '1005.35', 1, 0),
(20, 10, 1, '300.00', 1, 0),
(21, 10, 2, '429.00', 1, 0),
(22, 10, 3, '1005.35', 1, 0),
(23, 11, 1, '300.00', 1, 0),
(24, 11, 2, '429.00', 1, 0),
(25, 11, 3, '1005.35', 1, 0),
(26, 12, 1, '300.00', 1, 0),
(27, 12, 2, '429.00', 1, 0),
(28, 12, 3, '1005.35', 1, 0),
(29, 13, 1, '300.00', 1, 0),
(30, 13, 2, '429.00', 1, 0),
(31, 13, 3, '1005.35', 1, 0),
(32, 14, 1, '300.00', 1, 0),
(33, 14, 2, '429.00', 1, 0),
(34, 14, 3, '1005.35', 1, 0),
(35, 15, 2, '429.00', 1, 0),
(36, 16, 2, '429.00', 1, 0),
(37, 17, 2, '429.00', 1, 0),
(38, 18, 2, '429.00', 1, 0),
(39, 19, 2, '429.00', 1, 0),
(40, 20, 3, '1005.35', 1, 0),
(41, 21, 2, '429.00', 1, 0),
(42, 22, 2, '429.00', 1, 0),
(43, 23, 2, '429.00', 1, 0),
(44, 24, 3, '1005.35', 1, 0),
(45, 25, 3, '1005.35', 1, 0),
(46, 26, 3, '1005.35', 1, 0),
(47, 27, 3, '1005.35', 1, 0),
(48, 28, 3, '1005.35', 1, 0),
(49, 29, 3, '1005.35', 1, 0),
(50, 30, 3, '1005.35', 1, 0),
(51, 31, 3, '1005.35', 1, 0),
(52, 32, 1, '300.00', 1, 0),
(53, 33, 1, '300.00', 1, 0),
(54, 33, 2, '429.00', 1, 0),
(55, 33, 3, '1005.35', 1, 0),
(56, 34, 3, '1005.35', 1, 0),
(57, 35, 3, '1005.35', 1, 0),
(58, 35, 2, '429.00', 1, 0),
(59, 35, 1, '300.00', 1, 0),
(60, 36, 1, '300.00', 1, 0),
(61, 36, 2, '429.00', 1, 1),
(62, 36, 3, '1005.35', 1, 1),
(63, 37, 1, '300.00', 1, 0),
(64, 37, 2, '429.00', 1, 0),
(65, 37, 3, '1005.35', 1, 0),
(66, 38, 1, '300.00', 1, 0),
(67, 38, 2, '429.00', 1, 0),
(68, 38, 3, '1005.35', 1, 0),
(69, 39, 1, '300.00', 1, 0),
(70, 39, 2, '429.00', 1, 0),
(71, 39, 3, '1005.35', 1, 0),
(72, 40, 1, '300.00', 1, 0),
(73, 40, 2, '429.00', 1, 0),
(74, 40, 3, '1005.35', 1, 0),
(75, 41, 1, '300.00', 1, 0),
(76, 41, 2, '429.00', 1, 0),
(77, 41, 3, '1005.35', 1, 0),
(78, 42, 1, '300.00', 1, 0),
(79, 42, 2, '429.00', 1, 0),
(80, 42, 3, '1005.35', 1, 0),
(81, 43, 1, '300.00', 1, 1),
(82, 43, 2, '429.00', 1, 1),
(83, 43, 3, '1005.35', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Learn PHP 7', '300.00', 'This new book on PHP 7 introduces writing solid, secure, object-oriented code in the new PHP 7: you will create a complete three-tier application using a natural process of building and testing modules within each tier. This practical approach teaches you about app development and introduces PHP features when they are actually needed rather than providing you with abstract theory and contrived examples.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/4842/9781484217290.jpg'),
(2, 'Professional ASP.NET MVC 5 ', '429.00', 'MVC 5 is the newest update to the popular Microsoft technology that enables you to build dynamic, data-driven websites. Like previous versions, this guide shows you step-by-step techniques on using MVC to best advantage, with plenty of practical tutorials to illustrate the concepts. It covers controllers, views, and models; forms and HTML helpers; data annotation and validation; membership, authorization, and security.', 'https://images-na.ssl-images-amazon.com/images/I/51u-ERS1W8L._SX396_BO1,204,203,200_.jpg'),
(3, 'Learning Vue.js 2', '1005.35', '* Learn how to propagate DOM changes across the website without writing extensive jQuery callbacks code.\r\n* Learn how to achieve reactivity and easily compose views with Vue.js and understand what it does behind the scenes.\r\n* Explore the core features of Vue.js with small examples, learn how to build dynamic content into preexisting web applications, and build Vue.js applications from scratch.', 'https://d1w7fb2mkkr3kw.cloudfront.net/assets/images/book/lrg/9781/7864/9781786469946.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(1, '12345678910', '', '2020-12-14 16:43:18', 'prueba@gmail.com', '700.00', 'pendiente'),
(2, '12345678910', '', '2020-12-14 16:43:18', 'prueba@gmail.com', '700.00', 'pendiente'),
(3, 'goano38dvroqlbb8hvhuhsvfmb', '', '2020-12-14 17:02:30', 'prueba@gmail.com', '1734.35', 'pendiente'),
(4, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 11:37:28', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(5, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 11:45:09', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(6, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 11:46:06', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(7, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 12:04:42', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(8, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 12:05:15', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(9, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:28:20', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(10, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:32:23', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(11, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:34:34', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(12, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:34:43', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(13, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:34:54', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(14, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:35:00', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(15, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:36:38', 'ejemplo@gmail.com', '429.00', 'pendiente'),
(16, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:39:01', 'ejemplo@gmail.com', '429.00', 'pendiente'),
(17, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:44:14', 'ejemplo@gmail.com', '429.00', 'pendiente'),
(18, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:49:48', 'ejemplo@gmail.com', '429.00', 'pendiente'),
(19, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:52:00', 'ejemplo@gmail.com', '429.00', 'pendiente'),
(20, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 14:57:08', 'ejemplo@gmail.com', '1005.35', 'pendiente'),
(21, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:27:39', 'ejemplo@gmail.com', '429.00', 'pendiente'),
(22, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:32:40', 'ejemplo@gmail.com', '429.00', 'pendiente'),
(23, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:33:16', 'ejemplo@gmail.com', '429.00', 'pendiente'),
(24, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:33:35', 'ejemplo@gmail.com', '1005.35', 'pendiente'),
(25, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:34:01', 'ejemplo@gmail.com', '1005.35', 'pendiente'),
(26, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:34:47', 'ejemplo@gmail.com', '1005.35', 'pendiente'),
(27, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:39:51', 'ejemplo@gmail.com', '1005.35', 'pendiente'),
(28, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:55:38', 'ejemplo@gmail.com', '1005.35', 'pendiente'),
(29, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 15:59:22', 'ejemplo@gmail.com', '1005.35', 'pendiente'),
(30, 'nbc2l0ekact9nf8ods7qmja7v7', '', '2020-12-15 16:13:20', 'ejemplo@gmail.com', '1005.35', 'pendiente'),
(31, 'nbc2l0ekact9nf8ods7qmja7v7', '{\"id\":\"PAYID-L7MNUII9DB439270Y987542X\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"88D53548BB793405G\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-nkauc4092375@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"ACH4GU2DL28SL\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9069301990\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1005.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1005.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"G96SVXQSXU7KQ\",\"email\":\"sb-attt44083684@business.example.com\"},\"description\":\"Compra de productos a Develoteca:$1,005.35\",\"custom\":\"nbc2l0ekact9nf8ods7qmja7v7#MZ1UcF6VqmM7wLFY6TAtqQ==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"9JS38460MP680392P\",\"state\":\"completed\",\"amount\":{\"total\":\"1005.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1005.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"34.53\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L7MNUII9DB439270Y987542X\",\"create_time\":\"2020-12-15T15:46:18Z\",\"update_time\":\"2020-12-15T15:46:18Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/9JS38460MP680392P\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/9JS38460MP680392P/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7MNUII9DB439270Y987542X\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-12-15T15:45:37Z\",\"update_time\":\"2020-12-15T15:46:18Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7MNUII9DB439270Y987542X\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-12-15 16:45:33', 'ejemplo@gmail.com', '1005.35', 'completo'),
(32, 'tlih3k9ai4jjedbu9f0mtjv0hm', '{\"id\":\"PAYID-L7M43MA07490109JY5541914\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"2E760034J4432741N\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-nkauc4092375@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"ACH4GU2DL28SL\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9069301990\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"300.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"300.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"G96SVXQSXU7KQ\",\"email\":\"sb-attt44083684@business.example.com\"},\"description\":\"Compra de productos a Develoteca:$300.00\",\"custom\":\"tlih3k9ai4jjedbu9f0mtjv0hm#q7pYYDkvsu8q+xi+Iz5hkw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"1JB91037CE8210009\",\"state\":\"completed\",\"amount\":{\"total\":\"300.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"300.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"10.55\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L7M43MA07490109JY5541914\",\"create_time\":\"2020-12-16T09:05:52Z\",\"update_time\":\"2020-12-16T09:05:52Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/1JB91037CE8210009\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/1JB91037CE8210009/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M43MA07490109JY5541914\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-12-16T09:04:48Z\",\"update_time\":\"2020-12-16T09:05:52Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M43MA07490109JY5541914\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-12-16 10:04:43', 'ejemplo@gmail.com', '300.00', 'completo'),
(33, 'tlih3k9ai4jjedbu9f0mtjv0hm', '{\"id\":\"PAYID-L7M45EQ6JH40506RE808982T\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"74L87741032292318\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-nkauc4092375@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"ACH4GU2DL28SL\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9069301990\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1734.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1734.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"G96SVXQSXU7KQ\",\"email\":\"sb-attt44083684@business.example.com\"},\"description\":\"Compra de productos a Develoteca:$1,734.35\",\"custom\":\"tlih3k9ai4jjedbu9f0mtjv0hm#ANagmBVc/fMKxkTnKA7hbw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"2S369254920619907\",\"state\":\"completed\",\"amount\":{\"total\":\"1734.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1734.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"59.32\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L7M45EQ6JH40506RE808982T\",\"create_time\":\"2020-12-16T09:09:09Z\",\"update_time\":\"2020-12-16T09:09:09Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/2S369254920619907\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/2S369254920619907/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M45EQ6JH40506RE808982T\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-12-16T09:08:34Z\",\"update_time\":\"2020-12-16T09:09:09Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M45EQ6JH40506RE808982T\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-12-16 10:08:30', 'ejemplo@gmail.com', '1734.35', 'completo'),
(34, 'tlih3k9ai4jjedbu9f0mtjv0hm', '{\"id\":\"PAYID-L7M5TXY78T04751FX701791D\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"6S855709YP2066926\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-nkauc4092375@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"ACH4GU2DL28SL\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9069301990\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1005.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1005.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"G96SVXQSXU7KQ\",\"email\":\"sb-attt44083684@business.example.com\"},\"description\":\"Compra de productos a Develoteca:$1,005.35\",\"custom\":\"tlih3k9ai4jjedbu9f0mtjv0hm#4OF9QxptQHa09Az0Zc7WNA==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"7N5081571R612712V\",\"state\":\"completed\",\"amount\":{\"total\":\"1005.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1005.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"34.53\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L7M5TXY78T04751FX701791D\",\"create_time\":\"2020-12-16T09:58:11Z\",\"update_time\":\"2020-12-16T09:58:11Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7N5081571R612712V\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/7N5081571R612712V/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M5TXY78T04751FX701791D\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-12-16T09:56:47Z\",\"update_time\":\"2020-12-16T09:58:11Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M5TXY78T04751FX701791D\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-12-16 10:56:43', 'ejemplo@gmail.com', '1005.35', 'completo'),
(35, 'tlih3k9ai4jjedbu9f0mtjv0hm', '{\"id\":\"PAYID-L7M5WOY32241197C0447604D\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"00412086DD7727804\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-nkauc4092375@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"ACH4GU2DL28SL\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9069301990\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1734.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1734.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"G96SVXQSXU7KQ\",\"email\":\"sb-attt44083684@business.example.com\"},\"description\":\"Compra de productos a Develoteca:$1,734.35\",\"custom\":\"tlih3k9ai4jjedbu9f0mtjv0hm#sygS+UEAxfHrb54zS0fleg==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"8FL25395JK8381612\",\"state\":\"completed\",\"amount\":{\"total\":\"1734.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1734.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"59.32\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L7M5WOY32241197C0447604D\",\"create_time\":\"2020-12-16T10:02:50Z\",\"update_time\":\"2020-12-16T10:02:50Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8FL25395JK8381612\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8FL25395JK8381612/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M5WOY32241197C0447604D\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-12-16T10:02:35Z\",\"update_time\":\"2020-12-16T10:02:50Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M5WOY32241197C0447604D\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-12-16 11:01:45', 'ejemplo@gmail.com', '1734.35', 'completo'),
(36, 'l5q417al9o6or3j2kd82n5ghc8', '{\"id\":\"PAYID-L7M5ZFI1W26039431442791C\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4DC467493M078345A\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-nkauc4092375@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"ACH4GU2DL28SL\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9069301990\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1734.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1734.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"G96SVXQSXU7KQ\",\"email\":\"sb-attt44083684@business.example.com\"},\"description\":\"Compra de productos a Develoteca:$1,734.35\",\"custom\":\"l5q417al9o6or3j2kd82n5ghc8#cOG6z5ICM9FgF4TATrM2cw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"8VU91154KV083751K\",\"state\":\"completed\",\"amount\":{\"total\":\"1734.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1734.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"59.32\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L7M5ZFI1W26039431442791C\",\"create_time\":\"2020-12-16T10:08:58Z\",\"update_time\":\"2020-12-16T10:08:58Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8VU91154KV083751K\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/8VU91154KV083751K/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M5ZFI1W26039431442791C\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-12-16T10:08:21Z\",\"update_time\":\"2020-12-16T10:08:58Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M5ZFI1W26039431442791C\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-12-16 11:08:15', 'ejemplo@gmail.com', '1734.35', 'completo'),
(37, 'l5q417al9o6or3j2kd82n5ghc8', '', '2020-12-16 12:22:57', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(38, 'l5q417al9o6or3j2kd82n5ghc8', '', '2020-12-16 12:35:55', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(39, 'l5q417al9o6or3j2kd82n5ghc8', '', '2020-12-16 12:36:27', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(40, 'l5q417al9o6or3j2kd82n5ghc8', '', '2020-12-16 12:36:40', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(41, 'l5q417al9o6or3j2kd82n5ghc8', '', '2020-12-16 12:36:52', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(42, 'l5q417al9o6or3j2kd82n5ghc8', '', '2020-12-16 12:37:18', 'ejemplo@gmail.com', '1734.35', 'pendiente'),
(43, 'l5q417al9o6or3j2kd82n5ghc8', '{\"id\":\"PAYID-L7M7DDQ1SG85919FU947232W\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"1T109844RP689122A\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-nkauc4092375@personal.example.com\",\"first_name\":\"John\",\"last_name\":\"Doe\",\"payer_id\":\"ACH4GU2DL28SL\",\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9069301990\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"1734.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1734.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"G96SVXQSXU7KQ\",\"email\":\"sb-attt44083684@business.example.com\"},\"description\":\"Compra de productos a Develoteca:$1,734.35\",\"custom\":\"l5q417al9o6or3j2kd82n5ghc8#JSjaMF0qLXHYMcyvudO2Yg==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"John Doe\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"0CW64497VS715740M\",\"state\":\"completed\",\"amount\":{\"total\":\"1734.35\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"1734.35\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\",\"discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"59.32\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L7M7DDQ1SG85919FU947232W\",\"create_time\":\"2020-12-16T11:38:05Z\",\"update_time\":\"2020-12-16T11:38:05Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/0CW64497VS715740M\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/0CW64497VS715740M/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M7DDQ1SG85919FU947232W\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-12-16T11:37:50Z\",\"update_time\":\"2020-12-16T11:38:05Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L7M7DDQ1SG85919FU947232W\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-12-16 12:37:46', 'ejemplo@gmail.com', '1734.35', 'completo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`),
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblproductos` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
