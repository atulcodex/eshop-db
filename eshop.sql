-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2018 at 12:38 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'atulkprajapati2000@gmail.com', 'atul321');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(10) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Raymond'),
(2, 'Louis Philippe'),
(3, 'Van-Heusen'),
(4, 'Arrow'),
(5, 'Allen Solly'),
(6, 'Peter England'),
(7, 'Blackberry’s');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(4, '::1', 0),
(6, '::1', 0),
(12, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Navy Blue Velvet Blazer'),
(2, 'Simple Black Blazer'),
(3, 'Mens Party Wear Blazer'),
(4, 'Stylish Black And White Blazzer'),
(5, 'Double Colour Blazer'),
(6, 'Designer Blazer For Wedding'),
(7, 'Fancy Wedding Suits');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `c_id` int(10) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_password` varchar(100) NOT NULL,
  `c_country` text NOT NULL,
  `c_city` text NOT NULL,
  `c_contact` int(11) NOT NULL,
  `c_address` varchar(200) NOT NULL,
  `c_img` varchar(100) NOT NULL,
  `c_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `c_name`, `c_email`, `c_password`, `c_country`, `c_city`, `c_contact`, `c_address`, `c_img`, `c_ip`) VALUES
(12, 'bharat malviya', 'bharatmalya123@gmail.com', 'bharat', 'india', 'mumbai', 12345, 'This is my first blog website project which is completely designed and developed by me.', 'customer_img/IMG_20171031_223706.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `c_order`
--

CREATE TABLE `c_order` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `total_products` int(100) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `date` date NOT NULL,
  `product_qty` int(10) NOT NULL,
  `payment_mode` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `invoice_no`, `amount`, `date`, `product_qty`, `payment_mode`) VALUES
(13, 1944736338, 6300, '2018-07-31', 1, 'Paytm'),
(14, 1287375539, 24100, '2018-07-31', 5, 'Visa Card'),
(15, 1845370674, 15000, '2018-07-31', 2, 'Cash On Delivery'),
(16, 1798039404, 3450, '2018-01-08', 1, 'PayPal'),
(17, 1273119636, 6000, '2018-08-04', 1, 'Cash On Delivery'),
(18, 1368838768, 10700, '2018-08-04', 2, 'Cash On Delivery'),
(19, 470212827, 5000, '2018-08-04', 1, 'Cash On Delivery'),
(20, 1478864762, 7500, '2018-08-04', 1, 'Visa Card'),
(21, 561148627, 6200, '2018-08-04', 1, 'PayPal'),
(22, 1227151062, 5600, '2018-08-04', 1, 'Cash On Delivery'),
(23, 1227151062, 5600, '2018-08-04', 1, 'Visa Card'),
(24, 864325192, 11200, '2018-08-04', 2, 'Visa Card'),
(25, 1578880967, 1120, '2018-08-04', 2, 'PayPal'),
(26, 1578880967, 1120, '2018-08-04', 2, 'PayPal'),
(27, 1533771097, 5400, '2018-08-04', 1, 'Visa Card'),
(28, 891652710, 4820, '2018-08-04', 1, 'Cash On Delivery'),
(29, 904208096, 4650, '2018-08-04', 1, 'Paytm'),
(30, 1597798730, 5600, '2018-08-05', 1, 'Cash On Delivery'),
(32, 1042595195, 8200, '2018-08-05', 2, 'Cash On Delivery'),
(33, 680709579, 7000, '2018-08-05', 1, 'Cash On Delivery'),
(34, 1678857562, 5600, '2018-08-05', 1, 'Visa Card'),
(35, 2063547918, 14000, '2018-06-08', 2, 'Cash On Delivery'),
(36, 290916357, 2000, '2018-08-06', 1, 'Cash On Delivery'),
(37, 1127209531, 6100, '2018-06-08', 1, 'PayPal'),
(38, 190789698, 4820, '2018-08-06', 1, 'Paytm'),
(39, 2099333038, 3000, '2018-08-06', 1, 'Paytm');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_img1` varchar(255) NOT NULL,
  `product_img2` varchar(255) NOT NULL,
  `product_img3` varchar(255) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` varchar(700) NOT NULL,
  `keyword` varchar(700) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `cat_id`, `brand_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_desc`, `keyword`, `status`) VALUES
(1, 1, 1, '2018-07-22 10:11:54', 'Blue Slim Fit Suit', 'img/10b8e83852ee9e225475d2865a632ad8.jpg', 'img/948cfe200af61d9576063b51189e0c87.jpg', 'img/d9df90df9bab6a55c6176bb37217d982.jpg', 2000, '<p>This utility jacket offers a sleek and stylish take on tailoring, Beautifuly made from a polywool blend in slim fit. This jacket is single breasted with 2 button with peak label.</p>', '<p>ployster blend, raymond</p>', 'on'),
(3, 3, 5, '2018-07-22 10:20:19', 'Blue Super Slim Fit Jacket', 'img/8954f58b7262688e475069a1074a7145.jpg', 'img/dd8f809b3ad3eac8904c3abde11318fa.jpg', 'img/094e799f2312d4eaee75b636ebcacabd.jpg', 3000, '<p><strong>Park Avenue presents this dark blue blazer that will lend you a crisp. smart fromal look. Fashioned from a blend of 82% rayon, this super slim fit blazer is finished with full sleeves. lapel collar and self design for evergreen appeal. just wear it over a shirt with trousers and dress shoes to get complimented!</strong></p>', '<p>rayon, park avenue, blue, super slim fit, solid</p>', 'on'),
(4, 4, 6, '2018-07-22 17:00:01', 'Medium Grey Regular Jacket', 'img/1c688a3e21e2614b53f9f3035e94271d.jpg', 'img/526105b1007b89d104ad137ca00d7738.jpg', 'img/da7267ce00336cd1f88f2859bf4b4f0d.jpg', 6000, '<p><strong>Tailored in slim-fit. This Medium grey single blreaslet jacket from park Avenue is perfect while dressing up for a business confrence. Made from polyster-wood blend. The zero gravity jacket sports two button closure at the front and peak lapel Pair it with oxfords and formal trosers and white shirts for an elegent look.</strong></p>', '<p>colord, party wear, slim-fit, medium-grey, polyster-wood, oxford, formal trousers.</p>', 'on'),
(5, 6, 3, '2018-07-22 10:42:54', 'Black Slim Fit Jacket', 'img/ef6a56deea2366b1775b9b45c7046cf4.jpg', 'img/2c7763cd4ba3bb3dba09e2ff2712688e.jpg', 'img/6fc428f1ddd225ca151e3b86b4e2a5b5.jpg', 4820, '<p><strong>Perfect for a business trip. this black slim-fit jacket from the fashion house of park avenue will lend you smart and comfortable look. Fashion using polysetr-wood blend the single breasted jacket features two notches and half lined utility pockets. Pair it with oxford. white shirt and formal trousers for a impressive look.</strong></p>', '<p>perfect, business trip, black, slim, polyser-wood</p>', 'on'),
(6, 3, 5, '2018-08-02 15:49:08', 'Dark blue fit suits', 'img/7bcf8f3b152f5df6eba28bec42035b47.jpg', 'img/05f449758f6022a085a6d82729c07002.jpg', 'img/59ab8d3f001eee08954916dee95ead1f.jpg', 5000, '<p><strong>This dark blue blazer featuring a solid design from park avenue makes for a perfect office wear. Fashion from a blend of 80% terry and 20% rayon fabric this&nbsp; blazer is finished with a lapel collar and exhibits a smooth finish. wear this blazer over a white shirt with black trousers and less shoes. blend of 80% terry and 20% rayon fabric full sleeves lapel collar 3 pocket styling inner pocket solid design. designer suit.</strong></p>', '<p>terry, park avenue, dark blue, regular fit, solid suits for men</p>', 'on'),
(7, 6, 3, '2018-07-22 17:00:01', 'Park Avenue Purple Slim Suit', 'img/8c6f1bcb37c84a9ce8670cb77e419c38.jpg', 'img/02852b1dbb74fdd77cab474bb9f2c751.jpg', 'img/e8f1cd8947215692f360eea3bd6ea414.jpg', 6200, '<p><strong>This dark blue blazer featuring a solid design from park avenue makes for a perfect office wear. Fashion from a blend of 80% terry and 20% rayon fabric. this blazer is finished with a lapel colar and exhibits a smooth finish. Wear this blazer over a white shrt with black trousers and dress shoes.</strong></p>', '<p>terry raion, dark blue , solid</p>', 'on'),
(8, 3, 6, '2018-07-22 19:18:21', 'paerk grey slim jacket', 'img/367c2dc0444cf549935a340a3cd35e65 (1).jpg', 'img/367c2dc0444cf549935a340a3cd35e65.jpg', 'img/641b5e1eba766fb06322edd14f51ccdd.jpg', 6100, '<p><strong>Designed for all suave men . this dark blazer from park avenue boasts of its smart silhouette and classic designing. Fashion from a blend of 80% terry and 20% rayon fabric. This blazer will ensure a perfect fit just team it over a white shirt with black trousers and dress shoes 80% terrey and 20% rayon make super slim fit double breasted style lapel collar full sleeves with button detailing on the cuffs. check pattern concealed pocket on the chest 2 inner pocket 2 front pocket.</strong></p>', '<p>rayon, park avenue, blue, super slim fit, checked</p>', 'on'),
(9, 5, 6, '2018-08-02 11:10:53', 'Blue Contentporary fit suit', 'img/3f2771e21284b4625e33af6cb5ccd8b5.jpg', 'img/70a4ec7ff6984bf0d52e84b6c6effdba.jpg', 'img/a351d78c4b9b0b77ed4456e8523a7638.jpg', 3450, '<p><strong>A perfect blend of style and comfort this dark blue suit for man by raymond is amust buy fashion from ablend of 80% terry and 20% rayon. This suit will keep you at ease all day long. Finished with a jacquard design this suit when teamed with&nbsp; a white shirt and blazerlook. belt loops annd extends button tab.</strong></p>', '<p>rayon, raymond, dark blue, jackuard</p>', 'on'),
(10, 5, 2, '2018-07-22 19:36:54', 'Colour Plus Dark blue', 'img/09a32a1052491e559eca8941169a5029.jpg', 'img/812c280de4f8b9b7592e43bc7ab1ffc7.jpg', 'img/2330e3444ede45abbc3c64529c3820cf.jpg', 7000, '<p><strong>A perfect blend of style and comfort . this dark blue suit for men by raymond is amust buy. Fashioned from a blend of 80% terry and 20% rayon. this suit will keep you at sase all day long. Finished with a jacquard design. this suit when teamed with a white shirt and black dress will lend you a dapper look. Blend of 80% terry and 20% rayon fabric. Contemporary fit Blazer with full sleeeves shawl.</strong></p>', '<p>rayon raymond jacqurd</p>', 'on'),
(11, 7, 3, '2018-07-22 19:46:32', 'Beige Contemporary Blazer', 'img/2955e44abe3e2476b1a5f8bf883f6b88.jpg', 'img/5523319e9f864440c56dd58d1341d156.jpg', 'img/c3af3c880bf3fdb343f8dfb18edc0615.jpg', 5600, '<p><strong>A style peek for smart men. This 5 button front fastening bundi. Features all over pipping detail in a contemporary fit. Beautifully crafted soft rayon fabric . It can be worn to perfect both formal and casual outfits.</strong></p>', '<p>trylene blend, raymond, biege, solid</p>', 'on'),
(12, 2, 4, '2018-07-23 16:37:05', 'Casual Suit Jacket', 'img/8a01eb883181e1d103487223314c1c3f.jpg', 'img/ea0528201202eb5b38aabd0852ccdc8f.jpg', 'img/f64630bed955c709baea8c950c7f7ea6.jpg', 7100, '<div class=\"pdp-productDescriptors\" style=\"box-sizing: inherit; border: 0px; font-family: Whitney; font-size: medium;\">\r\n<div class=\"pdp-productDescriptorsContainer\" style=\"box-sizing: inherit; padding: 0px 20px;\">\r\n<div style=\"box-sizing: inherit;\">\r\n<p class=\"pdp-product-description-content\" style=\"box-sizing: inherit; color: #696e79; line-height: 1.4; font-size: 15px; margin-top: 15px;\"><a class=\"seolink\" style=\"box-sizing: inherit; background-color: transparent; text-decoration-line: none; color: #282c3f;\" href=\"https://www.myntra.com/black?src=pd\">Black</a>&nbsp;<a class=\"seolink\" style=\"box-sizing: inherit; background-color: transparent; text-decoration-line: none; color: #282c3f;\" hre', '<p>fit, slim, plen, color</p>', 'on'),
(13, 2, 3, '2018-07-23 19:08:16', 'Van Heusen Blue', 'img/10b0fb491d9ac141bf2fe10348779ba0.jpg', 'img/98252a6b9839c3a45ec13d7ecd559ecc.jpg', 'img/e692954691e233d576d216676248e4fc.jpg', 5400, '<p><strong><span style=\"color: #444444; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 13px;\">Exude style and sophistication effortlessly in this blue three piece suit from V Dot by Van Heusen. Crafted from a poly-viscose blend, this skinny fit set features a single breasted blazer with 2-button closure,a waistcoat and a pair of trousers. You can don it with a blue shirt, a patterned tie, and Derbies for a party appeal.</span></strong></p>', '<p><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">Brand</span><span style=\"font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;: Van Heusen</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\" /><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, san', 'on'),
(14, 3, 4, '2018-07-23 19:10:21', 'Van Heusen Navy', 'img/2c2b4eeebab362e2895d2ed00804059d.jpg', 'img/85d2f58a27397a54e38585804b16e843.jpg', 'img/9852f75d9bbe350c3090ce802a558784.jpg', 4650, '<p><strong><span style=\"color: #444444; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 13px;\">Look your dapper best with this three-piece black suit from Van Heusen. Made from a terelyne rayon blend, the suit features a slim-fit single-breasted blazer with a stylised lapel, complementing trousers and a waistcoat to give you a sophisticated look. Layer it over a crisp white shirt for a debonair look that is perfect for your next ceremonial evening.</span></strong></p>', '<p><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">Brand</span><span style=\"font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;: Van Heusen</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\" /><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, san', 'on'),
(15, 3, 4, '2018-07-23 19:12:23', 'Van Heusen Purple', 'img/0eea6deaaa8fe7218ddb44385f71276a.jpg', 'img/35b3bbeaf6bcf45cd0c3007512df5791.jpg', 'img/87bbc853f8ad497d65d2538754489739.jpg', 7000, '<p><strong><span style=\"color: #444444; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 13px;\">For a sharp and stylish look, wear this purple three piece suit from Van Heusen. Crafted from a tery-rayon blend, this ultra slim fit set features a pair of trousers and a waistcoat. This design is also detailed with a welt pocket and a single breasted one-button closure. Team it with a grey shirt, a solid red tie, brogues, and a red pocket square to make heads turn at a party with friends.</span></strong></p>', '<p><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">Brand</span><span style=\"font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;: Van Heusen</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\" /><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, san', 'on'),
(16, 4, 5, '2018-07-23 19:14:06', 'Van Heusen Black', 'img/5b3825ff4c442bfa032f97e4f263edd1.jpg', 'img/6c67e00f5da6fc86aa22239a5020557b.jpg', 'img/173afef018b13736df187755db00bb91.jpg', 5300, '<p><strong><span style=\"color: #444444; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 13px;\">Sharpen up your ceremonial style with this three piece suit from Van Heusen. Made from a terylene rayon blend, the slim fit suit features a single breasted blazer with a textured waistcoat and trousers. Perfect for weddings or parties, the suit can be partnered with a crisp shirt and polished derby shoes for a dapper look.</span></strong></p>', '<p><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">SuitFront</span><span style=\"font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;: Single Breasted - 2 button</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\" /><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, A', 'on'),
(17, 5, 5, '2018-07-23 19:16:34', 'Heusen Black Three', 'img/9b1e8d19be1cc6b33edab58cf3ba2b82.jpg', 'img/98e7112c557c9153ebf56fb9882af195.jpg', 'img/547dd3d8662bc4f0c1ccaf30a73706eb.jpg', 6300, '<p><strong><span style=\"color: #444444; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 13px;\">Sharpen up your ceremonial style with this three piece suit from Van Heusen. Made from a terylene rayon blend, the slim fit suit features a single breasted blazer with a textured waistcoat and trousers. Perfect for weddings or parties, the suit can be partnered with a crisp shirt and polished derby shoes for a dapper look.</span></strong></p>', '<p><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">Brand</span><span style=\"font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;: Van Heusen</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\" /><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, san', 'on'),
(18, 5, 6, '2018-07-23 19:26:10', 'Latest Simple Styel', 'img/5c1a186ff244d8778bbeef9493b6d971.jpg', 'img/6d3b8c4507f6a85ae718d10e235e9d07.jpg', 'img/ef6a25132adff830a8a84958e52c5eea.jpg', 4600, '<p><strong><span style=\"color: #444444; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 13px;\">Sharpen up your ceremonial style with this three piece suit from Van Heusen. Made from a terylene rayon blend, the slim fit suit features a single breasted blazer with a textured waistcoat and trousers. Perfect for weddings or parties, the suit can be partnered with a crisp shirt and polished derby shoes for a dapper look.</span></strong></p>', '<p><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">Brand</span><span style=\"font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\">&nbsp;: Van Heusen</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 12px;\" /><span class=\"strong\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; font-weight: bold; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, san', 'on'),
(19, 5, 6, '2018-07-23 19:29:52', 'Solid Single Breasted', 'img/7e7e4456ec219e43bc7b760e341fdea5.jpg', 'img/e84a9cb0e803594d54919a8976bfffa1.jpg', 'img/c3fe97aacaf551a528362d40ba8997e5.jpg', 7500, '<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif;\">SIZE GUIDE : Blazer Size should be \"6\" Inch Over Your Jeans Waist Size (For Eg : If you Wear a \"30\" size Jeans your blazer size should be \"36\") - Note : Blazer Sleeve length and Waist area are alterable.</span></p>\r\n<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif;\">\r\n<li class=\"_3_6Uyw row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; width: 731px; display: flex; flex-flow: row wrap;\">\r\n<div class=\"_3-wDH3 col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; display: inline-block; v', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif;\">\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Fabric: Poly-Viscose</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Pattern: Solid</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Type: Single Breasted</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; posi', 'on'),
(20, 6, 6, '2018-07-23 19:37:20', 'Oshano Solid Single', 'img/a.jpg', 'img/b.jpg', 'img/c.jpg', 5700, '<p><strong><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif;\">Suit up the Oshano with this solid, slim fit,Poly Cotton formal suits. This stylish piece boasts of exquisite craftsmanship and superior quality.</span><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif;\">Suit up the Oshano with this solid, slim fit,Poly Cotton formal suits. This stylish piece boasts of exquisite craftsmanship and superior quality.</span><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif;\">Suit up the Oshano with this solid, slim fit,Poly Cotton formal suits. This stylish piece boasts of exquisite craftsmanship and superior quality.</span><span style=\"color: #21', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif;\">\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Fabric: Poly Cotton</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Pattern: Solid</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Type: Single Breasted</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; posit', 'on'),
(21, 7, 7, '2018-07-23 19:39:17', 'Jack & Jones Solid', 'img/d.jpg', 'img/e.jpg', 'img/f.jpg', 6210, '<p><span style=\"color: #444444; font-family: open_sansregular, AvenirNextLTPro, Arial, Helvetica, sans-serif; font-size: 13px;\">Sharpen up your ceremonial style with this three piece suit from Van Heusen. Made from a terylene rayon blend, the slim fit suit features a single breasted blazer with a textured waistcoat and trousers. Perfect for weddings or parties, the suit can be partnered with a crisp shirt and polished derby shoes for a dapper look.</span></p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif;\">\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Fabric: 75%Polyester23%Viscose2%Elastane</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Pattern: Solid</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Type: Single Breasted</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; li', 'on'),
(22, 7, 7, '2018-07-23 19:41:20', 'Rajniti Solid Single ', 'img/j.jpg', 'img/i.jpg', 'img/h.jpg', 7100, '<p>&nbsp;</p>\r\n<p><span style=\"color: #212121; font-family: Roboto, Arial, sans-serif;\">Rajniti Slim Fit Cotton Party Wear Blazer For Men This lightweight most stylish Casual and Formal Blazer for style up your look. revolt against decade-old conventions.it changes the way corporate India dresses and looks. Recommended Wear- This blazer is a preferable wear for parties, and weddings. For Indian weddings, this is a perfect wear combining the elegance of the western styled blazers and the Indian styled Jodhpuris.</span></p>', '<ul style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif;\">\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Fabric: Cotton</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Pattern: Solid</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Type: Single Breasted</li>\r\n<li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: ', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `c_order`
--
ALTER TABLE `c_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `c_order`
--
ALTER TABLE `c_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
