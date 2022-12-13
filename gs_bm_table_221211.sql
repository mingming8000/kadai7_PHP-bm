-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2022-12-11 14:07:35
-- サーバのバージョン： 10.4.25-MariaDB
-- PHP のバージョン: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table_221211`
--

CREATE TABLE `gs_bm_table_221211` (
  `id` int(12) NOT NULL,
  `book_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `book_URL` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `gs_bm_table_221211`
--

INSERT INTO `gs_bm_table_221211` (`id`, `book_name`, `book_URL`, `comment`, `indate`) VALUES
(1, '本', '本', '本', '2022-12-11 21:16:23'),
(3, '本の登録できた', '', 'どうだろう？', '2022-12-11 21:19:15'),
(4, '地球の歩き方 JOJO ジョジョの奇妙な冒険', 'https://www.amazon.co.jp/%E5%9C%B0%E7%90%83%E3%81%AE%E6%AD%A9%E3%81%8D%E6%96%B9-JOJO-%E3%82%B8%E3%83%A7%E3%82%B8%E3%83%A7%E3%81%AE%E5%A5%87%E5%A6%99%E3%81%AA%E5%86%92%E9%99%BA-%E5%9C%B0%E7%90%83%E3%81%AE%E6%AD%A9%E3%81%8D%E6%96%B9%E7%B7%A8%E9%9B%86%E5%AE%A4/dp/4058018038/ref=sr_1_11?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&crid=35RH3M2K8SQ92&keywords=%E5%9C%B0%E7%90%83%E3%81%AE%E6%AD%A9%E3%81%8D%E6%96%B9&qid=1670761247&s=books&sprefix=%E5%9C%B0%E7%90%83%E3%81%AE%E6%AD%A9%E3%81%8D%E6%96%B9%2Cstripbooks%2C217&sr=1-11', 'じょじょー', '2022-12-11 21:21:26'),
(5, '地球の歩き方 ムー-異世界(パラレルワールド)の歩き方ー超古代文明 オーパーツ 聖地 UFO UMA', 'https://www.amazon.co.jp/%E5%9C%B0%E7%90%83%E3%81%AE%E6%AD%A9%E3%81%8D%E6%96%B9-%E3%83%A0%E3%83%BC-%E7%95%B0%E4%B8%96%E7%95%8C-%E3%83%91%E3%83%A9%E3%83%AC%E3%83%AB%E3%83%AF%E3%83%BC%E3%83%AB%E3%83%89-%E3%81%AE%E6%AD%A9%E3%81%8D%E6%96%B9%E3%83%BC%E8%B6%85%E5%8F%A4%E4%BB%A3%E6%96%87%E6%98%8E-%E3%82%AA%E3%83%BC%E3%83%91%E3%83%BC%E3%83%84/dp/4058017163/ref=pd_bxgy_img_sccl_1/358-7171444-3890748?pd_rd_w=78pm3&content-id=amzn1.sym.918446e7-72f4-48c7-a672-af3b6ace2b19&pf_rd_p=918446e7-72f4-48c7-a672-af3b6ace2b19&pf_rd_r=FZ65KCQH350RMYD6XE2P&pd_rd_wg=eEMZy&pd_rd_r=be04a058-ba44-4e78-9433-830013fdbb94&pd_rd_i=4058017163&psc=1', 'ムー', '2022-12-11 22:03:03'),
(6, 'W07 世界のグルメ図鑑 116の国と地域の名物料理を食の雑学とともに解説-本場の味を日本で体験できるレストランガイド付き! (', 'https://www.amazon.co.jp/W07-%E4%B8%96%E7%95%8C%E3%81%AE%E3%82%B0%E3%83%AB%E3%83%A1%E5%9B%B3%E9%91%91-116%E3%81%AE%E5%9B%BD%E3%81%A8%E5%9C%B0%E5%9F%9F%E3%81%AE%E5%90%8D%E7%89%A9%E6%96%99%E7%90%86%E3%82%92%E9%A3%9F%E3%81%AE%E9%9B%91%E5%AD%A6%E3%81%A8%E3%81%A8%E3%82%82%E3%81%AB%E8%A7%A3%E8%AA%AC-%E6%9C%AC%E5%A0%B4%E3%81%AE%E5%91%B3%E3%82%92%E6%97%A5%E6%9C%AC%E3%81%A7%E4%BD%93%E9%A8%93%E3%81%A7%E3%81%8D%E3%82%8B%E3%83%AC%E3%82%B9%E3%83%88%E3%83%A9%E3%83%B3%E3%82%AC%E3%82%A4%E3%83%89%E4%BB%98%E3%81%8D-%E5%9C%B0%E7%90%83%E3%81%AE%E6%AD%A9%E3%81%8D%E6%96%B9W-%E5%9C%B0%E7%90%83%E3%81%AE%E6%AD%A9%E3%81%8D%E6%96%B9%E7%B7%A8%E9%9B%86%E5%AE%A4/dp/4058016590/ref=pd_bxgy_img_sccl_2/358-7171444-3890748?pd_rd_w=6Enic&content-id=amzn1.sym.918446e7-72f4-48c7-a672-af3b6ace2b19&pf_rd_p=918446e7-72f4-48c7-a672-af3b6ace2b19&pf_rd_r=DBZJABRXAEFFT8QYD021&pd_rd_wg=hIviQ&pd_rd_r=18b0c8ec-c2da-4adc-9cf0-e51f01e81c05&pd_rd_i=4058016590&psc=1', '世界のグルメ', '2022-12-11 22:04:13');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table_221211`
--
ALTER TABLE `gs_bm_table_221211`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table_221211`
--
ALTER TABLE `gs_bm_table_221211`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
