USE excite_study;

SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

-- 色マスタ
INSERT INTO `colors` VALUES(1, '灰色');
INSERT INTO `colors` VALUES(2, '橙色');
INSERT INTO `colors` VALUES(3, '赤');
INSERT INTO `colors` VALUES(4, 'ロゼ');
INSERT INTO `colors` VALUES(5, '黄褐色');
INSERT INTO `colors` VALUES(6, '白');
INSERT INTO `colors` VALUES(7, '黄色');
INSERT INTO `colors` VALUES(8, 'ワインレッド');
INSERT INTO `colors` VALUES(9, 'サングリア');
INSERT INTO `colors` VALUES(10, 'オックスブラッド');

-- ブドウ品種マスタ
INSERT INTO `varieties` VALUES(1, 'カベルネ・ソーヴィニヨン');
INSERT INTO `varieties` VALUES(2, 'ピノ・ノワール');
INSERT INTO `varieties` VALUES(3, 'シラー');
INSERT INTO `varieties` VALUES(4, 'メルロー');
INSERT INTO `varieties` VALUES(5, 'ガメ');
INSERT INTO `varieties` VALUES(6, 'マスカット・ベーリーA');
INSERT INTO `varieties` VALUES(7, 'サンジョヴェーゼ');
INSERT INTO `varieties` VALUES(8, 'テンプラニーリョ');
INSERT INTO `varieties` VALUES(9, 'グルナッシュ');
INSERT INTO `varieties` VALUES(10, 'マルベック');
INSERT INTO `varieties` VALUES(11, 'カルメネール');
INSERT INTO `varieties` VALUES(12, 'カベルネ・フラン');
INSERT INTO `varieties` VALUES(13, 'シャルドネ');
INSERT INTO `varieties` VALUES(14, 'リースリング');
INSERT INTO `varieties` VALUES(15, 'ソーヴィニヨン・ブラン');
INSERT INTO `varieties` VALUES(16, '甲州');
INSERT INTO `varieties` VALUES(17, 'ヴィオニエ');
INSERT INTO `varieties` VALUES(18, 'セミヨン');
INSERT INTO `varieties` VALUES(19, 'アルバリーニョ');
INSERT INTO `varieties` VALUES(20, 'トロンテス');
INSERT INTO `varieties` VALUES(21, 'モスカート');
INSERT INTO `varieties` VALUES(22, 'ピノ・グリ');
INSERT INTO `varieties` VALUES(99, 'その他');

-- 国マスタ
INSERT INTO `countries` VALUES(1, 'フランス');
INSERT INTO `countries` VALUES(2, 'ドイツ');
INSERT INTO `countries` VALUES(3, 'イタリア');
INSERT INTO `countries` VALUES(4, 'スペイン');
INSERT INTO `countries` VALUES(5, 'ポルトガル');
INSERT INTO `countries` VALUES(6, 'アメリカ');
INSERT INTO `countries` VALUES(7, 'チリ');
INSERT INTO `countries` VALUES(8, 'アルゼンチン');
INSERT INTO `countries` VALUES(9, 'オーストラリア');
INSERT INTO `countries` VALUES(10, 'ニュージーランド');
INSERT INTO `countries` VALUES(11, '南アフリカ');
INSERT INTO `countries` VALUES(12, '中国');
INSERT INTO `countries` VALUES(13, '日本');

-- 産地マスタ
INSERT INTO `regions` VALUES(1, 1, 'ボルドー地方');
INSERT INTO `regions` VALUES(2, 1, 'ブルゴーニュ地方');
INSERT INTO `regions` VALUES(3, 1, 'コート・デュ・ローヌ地方');
INSERT INTO `regions` VALUES(4, 1, 'ロワール渓谷地方');
INSERT INTO `regions` VALUES(5, 1, 'プロヴァンス地方');
INSERT INTO `regions` VALUES(6, 1, 'ラングドック・ルーシヨン地方');
INSERT INTO `regions` VALUES(7, 1, 'アルザス地方');
INSERT INTO `regions` VALUES(8, 1, 'シャンパーニュ地方');
INSERT INTO `regions` VALUES(9, 2, 'ラインヘッセン地方');
INSERT INTO `regions` VALUES(10, 2, 'モーゼル地方');
INSERT INTO `regions` VALUES(11, 2, 'ラインガウ地方');
INSERT INTO `regions` VALUES(12, 3, '北部イタリア');
INSERT INTO `regions` VALUES(13, 3, '中部イタリア');
INSERT INTO `regions` VALUES(14, 3, '南部イタリア');
INSERT INTO `regions` VALUES(15, 4, 'スペイン');
INSERT INTO `regions` VALUES(16, 5, 'ポルトガル');
INSERT INTO `regions` VALUES(17, 6, 'カリフォルニア');
INSERT INTO `regions` VALUES(18, 7, 'チリ');
INSERT INTO `regions` VALUES(19, 8, 'アルゼンチン');
INSERT INTO `regions` VALUES(20, 9, 'オーストラリア');
INSERT INTO `regions` VALUES(21, 10, 'ニュージーランド');
INSERT INTO `regions` VALUES(22, 11, '南アフリカ');
INSERT INTO `regions` VALUES(23, 12, '中国');
INSERT INTO `regions` VALUES(24, 13, '北海道');
INSERT INTO `regions` VALUES(25, 13, '山形県');
INSERT INTO `regions` VALUES(26, 13, '長野県');
INSERT INTO `regions` VALUES(27, 13, '山梨県');

-- 消費税マスタ
INSERT INTO `consumption_tax` VALUES(STR_TO_DATE('1989-04-01', '%Y-%m-%d'), STR_TO_DATE('1997-03-31', '%Y-%m-%d'), 3);
INSERT INTO `consumption_tax` VALUES(STR_TO_DATE('1997-04-01', '%Y-%m-%d'), STR_TO_DATE('2014-03-31', '%Y-%m-%d'), 5);
INSERT INTO `consumption_tax` VALUES(STR_TO_DATE('2014-04-01', '%Y-%m-%d'), STR_TO_DATE('2019-09-30', '%Y-%m-%d'), 8);
INSERT INTO `consumption_tax` VALUES(STR_TO_DATE('2019-10-01', '%Y-%m-%d'), null, 10);

-- 商品マスタ
INSERT INTO `merchandises` VALUES(1, 'シャトーラグランジュ', 'ラグランジュ', 2015, 750, 3, 1);
INSERT INTO `merchandises` VALUES(2, 'バロン ド レスタック ボルドー ルージュ', 'バロン ド レスタック', 2019, 750, 3, 1);
INSERT INTO `merchandises` VALUES(3, 'ウィリアム フェーブル シャブリ', 'ウィリアム フェーブル シャブリ', 2017, 750, 6, 13);
INSERT INTO `merchandises` VALUES(4, 'マドンナ Ｒ ロゼ', 'マドンナ Ｒ ロゼ', 2018, 750, 4, 99);
INSERT INTO `merchandises` VALUES(5, 'サンジョヴェーゼ ロマーニャ', 'サンジョヴェーゼ', 2019, 750, 3, 7);
INSERT INTO `merchandises` VALUES(6, 'フレシネ ミーア', 'フレシネ ミーア', 2018, 750, 3, 8);
INSERT INTO `merchandises` VALUES(7, 'カーニヴォ', 'カーニヴォ', 2017, 750, 3, 1);
INSERT INTO `merchandises` VALUES(8, 'サンタ カロリーナ カベルネ ソーヴィニヨン', 'サンタ カロリーナ', 2020, 750, 3, 1);
INSERT INTO `merchandises` VALUES(9, 'カロ アルマ マルベック', 'カロ アルマ', 2019, 750, 3, 10);
INSERT INTO `merchandises` VALUES(10, '登美の丘', '登美の丘', 2018, 750, 3, 4);

-- 契約先マスタ
INSERT INTO `contractors` VALUES(1, STR_TO_DATE('2016-04-01', '%Y-%m-%d'), null, '株式会社 やまま', '宮城県仙台市宮城野区榴岡', '022-999-9999', 999999999);
INSERT INTO `contractors` VALUES(2, STR_TO_DATE('2022-01-01', '%Y-%m-%d'), null, 'リカーショップ ワイエム', '宮城県仙台市太白区富沢', '022-999-8888', 99999999);

-- 請求先マスタ
INSERT INTO `billing_recipients` VALUES(1, STR_TO_DATE('2016-04-01', '%Y-%m-%d'), null, 1, '022-999-9999', 31);
INSERT INTO `billing_recipients` VALUES(2, STR_TO_DATE('2022-01-01', '%Y-%m-%d'), null, 2, '022-999-8888', 25);

-- 納入先マスタ
INSERT INTO `delivery_destinations` VALUES(1, STR_TO_DATE('2016-04-01', '%Y-%m-%d'), null, 1, '022-999-9999');
INSERT INTO `delivery_destinations` VALUES(2, STR_TO_DATE('2022-01-01', '%Y-%m-%d'), null, 2, '022-999-8888');
INSERT INTO `delivery_destinations` VALUES(3, STR_TO_DATE('2017-10-01', '%Y-%m-%d'), null, 1, '022-999-9998');
INSERT INTO `delivery_destinations` VALUES(4, STR_TO_DATE('2018-05-01', '%Y-%m-%d'), null, 1, '022-999-9996');
INSERT INTO `delivery_destinations` VALUES(5, STR_TO_DATE('2017-04-01', '%Y-%m-%d'), STR_TO_DATE('2020-10-31', '%Y-%m-%d'), 1, '022-999-9997');

-- 単価マスタ
INSERT INTO `unit_prices` VALUES(1, '1', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1980);
INSERT INTO `unit_prices` VALUES(1, '2', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2500);
INSERT INTO `unit_prices` VALUES(1, '3', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1230);
INSERT INTO `unit_prices` VALUES(1, '4', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 980);
INSERT INTO `unit_prices` VALUES(1, '5', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 2130);
INSERT INTO `unit_prices` VALUES(1, '6', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2100);
INSERT INTO `unit_prices` VALUES(1, '7', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1760);
INSERT INTO `unit_prices` VALUES(1, '8', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1540);
INSERT INTO `unit_prices` VALUES(1, '9', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1000);
INSERT INTO `unit_prices` VALUES(1, '10', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(1, '1', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2130);
INSERT INTO `unit_prices` VALUES(1, '3', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 1480);
INSERT INTO `unit_prices` VALUES(1, '5', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(2, '1', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1980);
INSERT INTO `unit_prices` VALUES(2, '2', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2500);
INSERT INTO `unit_prices` VALUES(2, '3', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1230);
INSERT INTO `unit_prices` VALUES(2, '4', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 980);
INSERT INTO `unit_prices` VALUES(2, '5', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 2130);
INSERT INTO `unit_prices` VALUES(2, '6', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2100);
INSERT INTO `unit_prices` VALUES(2, '7', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1760);
INSERT INTO `unit_prices` VALUES(2, '8', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1540);
INSERT INTO `unit_prices` VALUES(2, '9', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1000);
INSERT INTO `unit_prices` VALUES(2, '10', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(2, '1', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2130);
INSERT INTO `unit_prices` VALUES(2, '3', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 1480);
INSERT INTO `unit_prices` VALUES(2, '5', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(3, '1', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1980);
INSERT INTO `unit_prices` VALUES(3, '2', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2500);
INSERT INTO `unit_prices` VALUES(3, '3', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1230);
INSERT INTO `unit_prices` VALUES(3, '4', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 980);
INSERT INTO `unit_prices` VALUES(3, '5', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 2130);
INSERT INTO `unit_prices` VALUES(3, '6', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2100);
INSERT INTO `unit_prices` VALUES(3, '7', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1760);
INSERT INTO `unit_prices` VALUES(3, '8', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1540);
INSERT INTO `unit_prices` VALUES(3, '9', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1000);
INSERT INTO `unit_prices` VALUES(3, '10', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(3, '1', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2130);
INSERT INTO `unit_prices` VALUES(3, '3', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 1480);
INSERT INTO `unit_prices` VALUES(3, '5', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(4, '1', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1980);
INSERT INTO `unit_prices` VALUES(4, '2', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 2500);
INSERT INTO `unit_prices` VALUES(4, '3', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1230);
INSERT INTO `unit_prices` VALUES(4, '4', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 980);
INSERT INTO `unit_prices` VALUES(4, '5', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2130);
INSERT INTO `unit_prices` VALUES(4, '6', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2100);
INSERT INTO `unit_prices` VALUES(4, '7', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1760);
INSERT INTO `unit_prices` VALUES(4, '8', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1540);
INSERT INTO `unit_prices` VALUES(4, '9', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1000);
INSERT INTO `unit_prices` VALUES(4, '10', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(4, '1', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2130);
INSERT INTO `unit_prices` VALUES(4, '2', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 1480);
INSERT INTO `unit_prices` VALUES(4, '3', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(5, '1', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1980);
INSERT INTO `unit_prices` VALUES(5, '2', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2500);
INSERT INTO `unit_prices` VALUES(5, '3', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 1230);
INSERT INTO `unit_prices` VALUES(5, '4', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 980);
INSERT INTO `unit_prices` VALUES(5, '5', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2130);
INSERT INTO `unit_prices` VALUES(5, '6', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), STR_TO_DATE('2022-03-31', '%Y-%m-%d'), 2100);
INSERT INTO `unit_prices` VALUES(5, '7', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1760);
INSERT INTO `unit_prices` VALUES(5, '8', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1540);
INSERT INTO `unit_prices` VALUES(5, '9', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 1000);
INSERT INTO `unit_prices` VALUES(5, '10', STR_TO_DATE('1900-01-01', '%Y-%m-%d'), null, 2000);
INSERT INTO `unit_prices` VALUES(5, '1', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2130);
INSERT INTO `unit_prices` VALUES(5, '3', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 1480);
INSERT INTO `unit_prices` VALUES(5, '6', STR_TO_DATE('2022-04-01', '%Y-%m-%d'), null, 2000);

-- 売上伝票ヘッダ
INSERT INTO `sales_slip_headers` VALUES(1, 1, 1, 12345, STR_TO_DATE('2022-05-19', '%Y-%m-%d'), STR_TO_DATE('2022-05-20', '%Y-%m-%d'), STR_TO_DATE('2022-05-21', '%Y-%m-%d'), 12345, 13579, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_headers` VALUES(2, 1, 1, 12346, STR_TO_DATE('2022-05-19', '%Y-%m-%d'), STR_TO_DATE('2022-05-22', '%Y-%m-%d'), STR_TO_DATE('2022-05-23', '%Y-%m-%d'), 12345, 13579, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_headers` VALUES(2, 2, 1, 12347, STR_TO_DATE('2022-05-20', '%Y-%m-%d'), STR_TO_DATE('2022-05-25', '%Y-%m-%d'), STR_TO_DATE('2022-05-26', '%Y-%m-%d'), 12345, 13579, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_headers` VALUES(3, 1, 1, 12348, STR_TO_DATE('2022-05-23', '%Y-%m-%d'), STR_TO_DATE('2022-05-25', '%Y-%m-%d'), STR_TO_DATE('2022-05-26', '%Y-%m-%d'), 12345, 13579, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_headers` VALUES(4, 1, 2, 12349, STR_TO_DATE('2022-05-25', '%Y-%m-%d'), STR_TO_DATE('2022-05-29', '%Y-%m-%d'), STR_TO_DATE('2022-05-30', '%Y-%m-%d'), 12345, 13579, 'test_data', NOW(), null, null);

-- 売上伝票詳細
INSERT INTO `sales_slip_details` VALUES(1, 1, 1, 1, 50, 2130, 106500, 117150, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(1, 1, 2, 2, 50, 2500, 125000, 137500, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(1, 1, 3, 3, 50, 1480, 74000, 81400, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(2, 1, 1, 2, 20, 2500, 50000, 55000, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(2, 1, 2, 4, 20, 980, 19600, 21560, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(2, 2, 1, 2, 40, 2500, 100000, 110000, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(2, 2, 2, 6, 40, 2100, 84000, 92400, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(2, 2, 3, 8, 40, 1540, 61600, 67760, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(3, 1, 1, 6, 10, 2000, 20000, 22000, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(4, 1, 1, 2, 5, 1480, 7400, 8140, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(4, 1, 2, 4, 5, 980, 4900, 5390, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(4, 1, 3, 6, 5, 2100, 10500, 11550, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(4, 1, 4, 8, 5, 1540, 7700, 8470, 'test_data', NOW(), null, null);
INSERT INTO `sales_slip_details` VALUES(4, 1, 5, 1, 5, 2130, 10650, 11715, 'test_data', NOW(), null, null);
