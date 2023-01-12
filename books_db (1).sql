-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2023 年 1 月 12 日 04:11
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `books_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `books_user_table`
--

CREATE TABLE `books_user_table` (
  `id` int(16) NOT NULL,
  `name` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `manage_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `books_user_table`
--

INSERT INTO `books_user_table` (`id`, `name`, `lid`, `lpw`, `manage_flg`, `life_flg`) VALUES
(1, '管理者', 'test1', 'test1', 1, 0),
(2, 'カツオ', 'test2', 'test2', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `googlebooks_table`
--

CREATE TABLE `googlebooks_table` (
  `No` int(12) NOT NULL,
  `query` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `authors` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `publishedDate` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8_unicode_ci NOT NULL,
  `previewLink` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `memo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `googlebooks_table`
--

INSERT INTO `googlebooks_table` (`No`, `query`, `title`, `authors`, `publishedDate`, `link`, `thumbnail`, `previewLink`, `date`, `memo`) VALUES
(116, '山崎大助', '動かして学ぶ！Laravel開発入門', '山崎 大助', '2021-03-15', 'http://books.google.co.jp/books?id=NfggEAAAQBAJ&dq=%E5%B1%B1%E5%B4%8E%E5%A4%A7%E5%8A%A9&hl=&source=gbs_api', 'http://books.google.com/books/content?id=NfggEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=NfggEAAAQBAJ&printsec=frontcover&dq=%E5%B1%B1%E5%B4%8E%E5%A4%A7%E5%8A%A9&hl=&cd=1&source=gbs_api', '2023-01-12 12:04:46', ''),
(118, '司馬遼太郎', '司馬遼太郎事典', '志村有弘', '2007-10', 'http://books.google.co.jp/books?id=pfIrAQAAIAAJ&dq=%E5%8F%B8%E9%A6%AC%E9%81%BC%E5%A4%AA%E9%83%8E&hl=&source=gbs_api', 'http://books.google.com/books/content?id=pfIrAQAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=pfIrAQAAIAAJ&dq=%E5%8F%B8%E9%A6%AC%E9%81%BC%E5%A4%AA%E9%83%8E&hl=&cd=1&source=gbs_api', '2023-01-11 16:26:11', NULL),
(122, '司馬遼太郎', '司馬遼太郎歴史のなかの邂逅', '司馬遼太郎', '2011-03', 'http://books.google.co.jp/books?id=CoNFtwAACAAJ&dq=%E5%8F%B8%E9%A6%AC%E9%81%BC%E5%A4%AA%E9%83%8E&hl=&source=gbs_api', 'http://books.google.com/books/content?id=CoNFtwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=CoNFtwAACAAJ&dq=%E5%8F%B8%E9%A6%AC%E9%81%BC%E5%A4%AA%E9%83%8E&hl=&cd=5&source=gbs_api', '2023-01-11 16:26:11', NULL),
(125, '道央', '行ってみよう!道央の地形と地質', '前田寿嗣', '2012-10', 'http://books.google.co.jp/books?id=kxv6MgEACAAJ&dq=%E9%81%93%E5%A4%AE&hl=&source=gbs_api', 'http://books.google.com/books/content?id=kxv6MgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=kxv6MgEACAAJ&dq=%E9%81%93%E5%A4%AE&hl=&cd=1&source=gbs_api', '2023-01-12 10:13:38', NULL),
(126, 'web3', 'Ethereum＋Solidity入門 Web3.0を切り拓くブロックチェーンの思想と技術', 'Chris Dannen,ウイリング,ICOVO AG', '2019-03-18', 'https://play.google.com/store/books/details?id=d36ODwAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=d36ODwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=d36ODwAAQBAJ&printsec=frontcover&dq=web3&hl=&cd=1&source=gbs_api', '2023-01-12 10:14:06', NULL),
(127, 'web3', 'Web3新世紀デジタル経済圏の新たなフロンティア', '馬渕邦美,絢斗優,藤本真衣', '2022-07', 'http://books.google.co.jp/books?id=dOpEzwEACAAJ&dq=web3&hl=&source=gbs_api', 'http://books.google.com/books/content?id=dOpEzwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=dOpEzwEACAAJ&dq=web3&hl=&cd=2&source=gbs_api', '2023-01-12 10:14:06', NULL),
(128, 'web3', 'Web3.0の教科書', 'のぶめい', '2023-01-11', 'https://play.google.com/store/books/details?id=2BKkEAAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=2BKkEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=2BKkEAAAQBAJ&printsec=frontcover&dq=web3&hl=&cd=3&source=gbs_api', '2023-01-12 10:14:06', NULL),
(129, 'web3', '３０分でよくわかる！Ｗｅｂ３の稼ぎ方！', '小澤隆博', '2022-09-27', 'https://play.google.com/store/books/details?id=67-UEAAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=67-UEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=67-UEAAAQBAJ&printsec=frontcover&dq=web3&hl=&cd=4&source=gbs_api', '2023-01-12 10:14:06', NULL),
(130, 'web3', 'シリコンバレーのエンジニアはＷｅｂ３の未来に何を見るのか', '中島聡', '2022-12-28', 'https://play.google.com/store/books/details?id=h4-jEAAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=h4-jEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=h4-jEAAAQBAJ&printsec=frontcover&dq=web3&hl=&cd=5&source=gbs_api', '2023-01-12 10:14:06', NULL),
(131, 'web3', 'Web3とは何か', '岡嶋裕史', '2022-12', 'http://books.google.co.jp/books?id=OaOHzwEACAAJ&dq=web3&hl=&source=gbs_api', 'http://books.google.com/books/content?id=OaOHzwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=OaOHzwEACAAJ&dq=web3&hl=&cd=6&source=gbs_api', '2023-01-12 10:14:06', NULL),
(132, 'web3', '図解ポケット 次世代インターネット Web3がよくわかる本', '田中秀弥,松村雄太', '2022-12-12', 'https://play.google.com/store/books/details?id=ohSjEAAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=ohSjEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=ohSjEAAAQBAJ&printsec=frontcover&dq=web3&hl=&cd=7&source=gbs_api', '2023-01-12 10:14:06', NULL),
(133, 'web3', '図解入門ﾋﾞｼﾞﾈｽ最新Web3とﾒﾀﾊﾞｰｽがよ〜くわかる本', '長橋賢吾', '2022-08', 'http://books.google.co.jp/books?id=N52SEAAAQBAJ&dq=web3&hl=&source=gbs_api', 'http://books.google.com/books/content?id=N52SEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=N52SEAAAQBAJ&pg=PA38&dq=web3&hl=&cd=8&source=gbs_api', '2023-01-12 10:14:06', NULL),
(134, 'web3', '入門 Web3とブロックチェーン', '山本康正', '2022-07-20', 'http://books.google.co.jp/books?id=oXwrzwEACAAJ&dq=web3&hl=&source=gbs_api', 'http://books.google.com/books/content?id=oXwrzwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=oXwrzwEACAAJ&dq=web3&hl=&cd=9&source=gbs_api', '2023-01-12 10:14:06', NULL),
(135, 'web3', 'Web3とDAO 誰もが主役になれる「新しい経済」', '亀井聡彦,鈴木雄大,赤澤直樹', '2022-07-06', 'https://play.google.com/store/books/details?id=cAx0EAAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=cAx0EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=cAx0EAAAQBAJ&pg=PT166&dq=web3&hl=&cd=10&source=gbs_api', '2023-01-12 10:14:06', NULL),
(136, '量子力学', '量子力学の哲学', '森田邦久', '2011-09', 'http://books.google.co.jp/books?id=uljZygAACAAJ&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&source=gbs_api', 'http://books.google.com/books/content?id=uljZygAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=uljZygAACAAJ&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=1&source=gbs_api', '2023-01-12 12:04:29', NULL),
(137, '量子力学', 'マンガでわかる量子力学', '石川 憲二', '2009-12-25', 'https://play.google.com/store/books/details?id=unYuDwAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=unYuDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=unYuDwAAQBAJ&printsec=frontcover&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=2&source=gbs_api', '2023-01-12 12:04:29', NULL),
(138, '量子力学', '相対論的量子力学', '川村嘉春', '2012-10-25', 'https://play.google.com/store/books/details?id=fwcHEAAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=fwcHEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=fwcHEAAAQBAJ&printsec=frontcover&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=3&source=gbs_api', '2023-01-12 12:04:29', NULL),
(139, '量子力学', '量子力学で生命の謎を解く', 'ジム・アル=カリーリ,ジョンジョー・マクファデン', '2015-09-15', 'https://play.google.com/store/books/details?id=kQuNCgAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=kQuNCgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=kQuNCgAAQBAJ&printsec=frontcover&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=4&source=gbs_api', '2023-01-12 12:04:29', NULL),
(140, '量子力学', '時間と空間を操る「量子力学的」習慣術', '村松大輔', '2021-04', 'http://books.google.co.jp/books?id=FjZvzgEACAAJ&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&source=gbs_api', 'http://books.google.com/books/content?id=FjZvzgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=FjZvzgEACAAJ&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=5&source=gbs_api', '2023-01-12 12:04:29', NULL),
(141, '量子力学', '量子力学', '江沢洋', '2002-04', 'http://books.google.co.jp/books?id=lptiJwAACAAJ&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&source=gbs_api', 'http://books.google.com/books/content?id=lptiJwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=lptiJwAACAAJ&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=6&source=gbs_api', '2023-01-12 12:04:29', NULL),
(142, '量子力学', '初等量子力学（改訂版）', '原島鮮', '1986-08-10', 'https://play.google.com/store/books/details?id=9EnpDwAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=9EnpDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=9EnpDwAAQBAJ&printsec=frontcover&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=7&source=gbs_api', '2023-01-12 12:04:29', NULL),
(143, '量子力学', '量子力学　～現代的アプローチ～', '牟田泰三,山本一博', '2017-09-30', 'https://play.google.com/store/books/details?id=g5lyDwAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=g5lyDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=g5lyDwAAQBAJ&printsec=frontcover&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=8&source=gbs_api', '2023-01-12 12:04:29', NULL),
(144, '量子力学', '基礎からの量子力学', '上村洸,山本貴博', '2013-11-05', 'https://play.google.com/store/books/details?id=CQ6cCwAAQBAJ&source=gbs_api', 'http://books.google.com/books/content?id=CQ6cCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 'http://books.google.co.jp/books?id=CQ6cCwAAQBAJ&printsec=frontcover&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=9&source=gbs_api', '2023-01-12 12:04:29', NULL),
(145, '量子力学', '量子力学入門', '前野昌弘', '2012-11', 'http://books.google.co.jp/books?id=9GKSi_5JowEC&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&source=gbs_api', 'http://books.google.com/books/content?id=9GKSi_5JowEC&printsec=frontcover&img=1&zoom=1&source=gbs_api', 'http://books.google.co.jp/books?id=9GKSi_5JowEC&dq=%E9%87%8F%E5%AD%90%E5%8A%9B%E5%AD%A6&hl=&cd=10&source=gbs_api', '2023-01-12 12:04:29', NULL);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `No` int(12) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `book_url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`No`, `title`, `book_url`, `comment`, `date`) VALUES
(1, '冷静と情熱のあいだ', 'https://www.amazon.co.jp/%E5%86%B7%E9%9D%99%E3%81%A8%E6%83%85%E7%86%B1%E3%81%AE%E3%81%82%E3%81%84%E3%81%A0%E2%80%95Blu-%E8%A7%92%E5%B7%9D%E6%96%87%E5%BA%AB-%E8%BE%BB-%E4%BB%81%E6%88%90/dp/4043599013', '20年以上前に読んだ本', '2022-12-12 14:32:29'),
(2, 'SHIFT：イノベーションの作法', 'https://www.amazon.co.jp/SHIFT%EF%BC%9A%E3%82%A4%E3%83%8E%E3%83%99%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E4%BD%9C%E6%B3%95-%E6%BF%B1%E5%8F%A3-%E7%A7%80%E5%8F%B8-ebook/dp/B07SRGWGK2/ref=sr_1_1?keywords=shift+%E3%82%A4%E3%83%8E%E3%83%99%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E4%BD%9C%E6%B3%95&qid=1670826956&s=digital-text&sprefix=shift%2Cdigital-text%2C288&sr=1-1', 'まだ読んでません！', '2022-12-12 15:54:55'),
(3, 'テクノロジーが予測する未来　web3、メタバース、NFTで世界はこうなる', 'https://www.amazon.co.jp/%E3%83%86%E3%82%AF%E3%83%8E%E3%83%AD%E3%82%B8%E3%83%BC%E3%81%8C%E4%BA%88%E6%B8%AC%E3%81%99%E3%82%8B%E6%9C%AA%E6%9D%A5-web3%E3%80%81%E3%83%A1%E3%82%BF%E3%83%90%E3%83%BC%E3%82%B9%E3%80%81NFT%E3%81%A7%E4%B8%96%E7%95%8C%E3%81%AF%E3%81%93%E3%81%86%E3%81%AA%E3%82%8B-SB%E6%96%B0%E6%9B%B8-%E4%BC%8A%E8%97%A4-%E7%A9%B0%E4%B8%80-ebook/dp/B09YQVS5KV/ref=tmm_kin_swatch_0?_encoding=UTF8&qid=&sr=', '今、読んでいるところです！', '2022-12-12 22:07:24');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `books_user_table`
--
ALTER TABLE `books_user_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `googlebooks_table`
--
ALTER TABLE `googlebooks_table`
  ADD PRIMARY KEY (`No`);

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`No`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `books_user_table`
--
ALTER TABLE `books_user_table`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `googlebooks_table`
--
ALTER TABLE `googlebooks_table`
  MODIFY `No` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `No` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
