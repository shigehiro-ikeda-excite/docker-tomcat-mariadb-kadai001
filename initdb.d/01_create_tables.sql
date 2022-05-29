USE excite_study;

SET CHARACTER_SET_CLIENT = utf8mb4;
SET CHARACTER_SET_CONNECTION = utf8mb4;

-- 契約先マスタ
CREATE TABLE `contractors` (
  `cd` INT COMMENT '契約先コード',
  `start_date` DATE COMMENT '適用開始日',
  `end_date` DATE COMMENT '適用終了日',
  `name` VARCHAR(100) NOT NULL COMMENT '契約先名',
  `address` VARCHAR(500) COMMENT '契約先住所',
  `phone_number` VARCHAR(20) COMMENT '契約先代表電話番号',
  `credit_limit` INT NOT NULL COMMENT '与信限度額',
  PRIMARY KEY ( `cd`, `start_date` )
);
-- 請求先マスタ
CREATE TABLE `billing_recipients` (
	`cd` INT COMMENT '請求先コード',
	`start_date` DATE COMMENT '適用開始日',
	`end_date` DATE COMMENT '適用終了日',
	`contractor_cd` INT NOT NULL COMMENT '上位契約先コード',
	`phone_number` VARCHAR(20) COMMENT '請求先代表電話番号',
	`closing_date` INT NOT NULL COMMENT '請求締日',
	PRIMARY KEY ( `cd`, `start_date` )
);-- 納入先マスタ
CREATE TABLE `delivery_destinations` (
  `cd` INT COMMENT '納入先コード',
  `start_date` DATE COMMENT '適用開始日',
  `end_date` DATE COMMENT '適用終了日',
  `billing_recipient_cd` INT NOT NULL COMMENT '上位請求先コード',
  `phone_number` VARCHAR(20) COMMENT '納入先代表電話番号',
  PRIMARY KEY ( `cd`, `start_date` )
);
-- 消費税マスタ
CREATE TABLE `consumption_tax` (
  `start_date` DATE COMMENT '適用開始日',
  `end_date` DATE COMMENT '適用終了日',
  `tax_rates` INT COMMENT '消費税率',
  PRIMARY KEY ( `start_date` )
);
-- 商品マスタ
CREATE TABLE `merchandises` (
  `cd` INT COMMENT '商品コード',
  `name` VARCHAR(200) NOT NULL COMMENT '商品名',
  `short_name` VARCHAR(100) NOT NULL COMMENT '商品名（略称）',
  `vintage` INT NOT NULL COMMENT 'ビンテージ（年）',
  `capacity` INT NOT NULL COMMENT '容量（ml）',
  `color_cd` INT NOT NULL COMMENT '色コード',
  `variety_cd` INT NOT NULL COMMENT 'ブドウ品種コード',
  PRIMARY KEY ( `cd` )
);
-- 色マスタ
CREATE TABLE `colors` (
  `cd` INT COMMENT '色コード',
  `name` VARCHAR(20) NOT NULL COMMENT '色',
  PRIMARY KEY ( `cd` )
);
-- ブドウ品種マスタ
CREATE TABLE `varieties` (
  `cd` INT COMMENT 'ブドウ品種コード',
  `name` VARCHAR(100) NOT NULL COMMENT '名称',
  PRIMARY KEY ( `cd` )
);
-- 生産者マスタ
CREATE TABLE `producers` (
  `cd` INT COMMENT '生産者コード',
  `name` VARCHAR(200) NOT NULL COMMENT '生産者名',
  `start_date` DATE NOT NULL COMMENT '適用開始日',
  `end_date` DATE COMMENT '適用終了日',
  `country_cd` INT NOT NULL COMMENT '国コード',
  `region_cd` INT NOT NULL COMMENT '産地コード',
  `area_cd` INT NOT NULL COMMENT '地域コード',
  PRIMARY KEY ( `cd` )
);
-- 国マスタ
CREATE TABLE `countries` (
  `cd` INT COMMENT '国コード',
  `name` VARCHAR(20) NOT NULL COMMENT '国名',
  PRIMARY KEY ( `cd` )
);
-- 産地マスタ
CREATE TABLE `regions` (
	`cd` INT COMMENT '産地コード',
	`country_cd` INT NOT NULL COMMENT '国コード',
	`name` VARCHAR(100) NOT NULL COMMENT '産地名',
	PRIMARY KEY ( `cd` )
);
-- 地域マスタ
CREATE TABLE `areas` (
  `cd` INT COMMENT '地域コード',
  `name` VARCHAR(100) NOT NULL COMMENT '地域名',
  PRIMARY KEY ( `cd` )
);
-- 単価マスタ
CREATE TABLE `unit_prices` (
  `delivery_destinations_cd` INT COMMENT '納入先コード',
  `merchandis_cd` INT COMMENT '商品コード',
  `start_date` DATE COMMENT '適用開始日',
  `end_date` DATE COMMENT '適用終了日',
  `unit_price` INT NOT NULL COMMENT '単価',
  PRIMARY KEY ( `delivery_destinations_cd`, `merchandis_cd`, `start_date` )
);
-- 売上伝票ヘッダ
CREATE TABLE `sales_slip_headers` (
	`voucher_number` INT COMMENT '伝票番号',
	`voucher_branch_number` INT COMMENT '伝票番号枝番',
  `delivery_destination_cd` INT COMMENT '納入先コード',
	`recipient_number` INT COMMENT '請求番号',
	`order_date` DATE NOT NULL COMMENT '受注日',
	`shipment_date` DATE COMMENT '出荷日',
	`sales_posting_date` DATE COMMENT '売上計上日',
	`total_amount` INT COMMENT '合計金額',
	`total_amount_consumption_tax` INT COMMENT '合計金額消費税',
	`created_by` VARCHAR(32) NOT NULL COMMENT '作成ユーザー',
	`created_datetime` DATETIME NOT NULL COMMENT '作成日時',
	`updated_by` VARCHAR(32) COMMENT '更新ユーザー',
	`updated_datetime` DATETIME COMMENT '更新日時',
	PRIMARY KEY ( `voucher_number`, `voucher_branch_number` )
);

-- 売上伝票明細
CREATE TABLE `sales_slip_details` (	
	`voucher_number` INT COMMENT '伝票番号',
	`voucher_branch_number` INT COMMENT '伝票番号枝番',
	`voucher_item_number` INT COMMENT '伝票明細番号',
	`merchandise_cd` INT NOT NULL COMMENT '商品コード',
	`number_of_bottles` INT NOT NULL COMMENT '本数',
	`unit_price` INT NOT NULL COMMENT '単価',
	`amount` INT NOT NULL COMMENT '金額',
	`consumption_tax_amount` INT NOT NULL COMMENT '消費税額',
	`created_by` VARCHAR(32) NOT NULL COMMENT '作成ユーザー',
	`created_datetime` DATETIME NOT NULL COMMENT '作成日時',
	`updated_by` VARCHAR(32) COMMENT '更新ユーザー',
	`updated_datetime` DATETIME COMMENT '更新日時',
	PRIMARY KEY ( `voucher_number`, `voucher_branch_number`, `voucher_item_number` )
);
