-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2025 at 09:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deltapos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `debit_amt` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `credit_amt` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `unique_code` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `payment_type_bank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `group_id`, `number`, `name`, `description`, `debit_amt`, `credit_amt`, `unique_code`, `created_by`, `updated_by`, `created_at`, `updated_at`, `is_deletable`, `payment_type_bank_id`, `expense_category_id`, `party_id`) VALUES
(1, 3, NULL, 'Stock-in-Hand', 'Total Current Stock Value', 0.0000, 0.0000, 'STOCK_IN_HAND', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(2, 8, NULL, 'Input CCGT', 'Records Input Tax/GST', 0.0000, 0.0000, 'INPUT_CGST', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(3, 8, NULL, 'Input CCGT', 'Records Input Tax/GST', 0.0000, 0.0000, 'INPUT_SGST', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(4, 8, NULL, 'Input Tax All', 'Records Input Taxes', 0.0000, 0.0000, 'INPUT_TAX_ALL', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(5, 20, NULL, 'Output CCGT', 'Records Output Tax/GST', 0.0000, 0.0000, 'OUTPUT_CGST', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(6, 20, NULL, 'Output CCGT', 'Records Output Tax/GST', 0.0000, 0.0000, 'OUTPUT_SGST', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(7, 20, NULL, 'Output Tax All', 'Records Output Tax All', 0.0000, 0.0000, 'OUTPUT_TAX_ALL', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(8, 5, NULL, 'Cash In Hand', 'Children of Cash Account', 0.0000, 0.0000, 'CASH_IN_HAND', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(9, 17, NULL, 'Unwithdrawn Cheques', 'Children of Other Current Liabilities', 0.0000, 0.0000, 'UNWITHDRAWN_CHEQUES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(10, 14, NULL, 'Net Income(Profit)', 'Children of Reserves & Surplus', 0.0000, 0.0000, 'NET_INCOME_OR_PROFIT', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(11, 13, NULL, 'Opening Stock Balance', 'Children of Opening Balance Equity', 0.0000, 0.0000, 'OPENING_STOCK_BALANCE', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(12, 4, NULL, 'Sundry Debtors List', 'Children of Sundry Debtors', 0.0000, 0.0000, 'SUNDRY_DEBTORS_LIST', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(13, 18, NULL, 'Sundry Creditors List', 'Children of Sundry Creditors', 0.0000, 0.0000, 'SUNDRY_CREDITORS_LIST', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(14, 18, NULL, 'Party Opening Balance', 'Children of Opening Balance Equity', 0.0000, 0.0000, 'PARTY_OPENING_BALANCE', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(15, 9, NULL, 'Advance Paid for Purchase Order', 'Children of Other Current Assets', 0.0000, 0.0000, 'ADVANCE_PAID_FOR_PURCHASE_ORDER', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL),
(16, 22, NULL, 'Purchases', 'Children of Purchase Accounts', 0.0000, 0.0000, 'PURCHASES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_groups`
--

CREATE TABLE `account_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `number` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `balance` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `unique_code` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_groups`
--

INSERT INTO `account_groups` (`id`, `parent_id`, `number`, `name`, `description`, `balance`, `unique_code`, `created_by`, `updated_by`, `created_at`, `updated_at`, `is_deletable`) VALUES
(1, 0, NULL, 'Assets', 'Assets are anything valuable that your company owns, whether it’s equipment, land, buildings, or intellectual property.', 0.0000, 'ASSETS', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(2, 1, NULL, 'Fixed Assets', 'Children of Assets', 0.0000, 'FIXED_ASSETS', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(3, 1, NULL, 'Current Assets', 'Children of Assets', 0.0000, 'CURRENT_ASSETS', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(4, 3, NULL, 'Sundry Debtors', 'Children of Current Assets', 0.0000, 'SUNDRY_DEBTORS', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(5, 3, NULL, 'Cash Account', 'Children of Current Assets', 0.0000, 'CASH_ACCOUNT', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(6, 3, NULL, 'Bank Accounts', 'Children of Current Assets', 0.0000, 'BANK_ACCOUNT', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(7, 3, NULL, 'Input Duties & Taxes', 'Children of Current Assets', 0.0000, 'INPUT_DUTIES_AND_TAXES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(8, 7, NULL, 'Input Tax', 'Children of Current Assets', 0.0000, 'INPUT_TAX', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(9, 3, NULL, 'Other Current Assets', 'Children of Current Assets', 0.0000, 'OTHER_CURRENT_ASSETS', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(10, 0, NULL, 'Equities & Liabilities', 'Your liabilities are any debts your company has, whether it’s bank loans, mortgages, unpaid bills, IOUs, or any other sum of money that you owe someone else. If you’ve promised to pay someone in the future, and haven’t paid them yet, that’s a liability.', 0.0000, 'EQUITIES_AND_LIABILITIES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(11, 10, NULL, 'Capital Account', 'Child of Equities & Liabilities', 0.0000, 'CAPITAL_ACCOUNT', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(12, 11, NULL, 'Owner\'s Equity', 'Child of Capital Account', 0.0000, 'OWNERS_EQUITY', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(13, 12, NULL, 'Opening Balance Equity', 'Owner\'s Equity', 0.0000, 'OPENING_BALANCE_EQUITY', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(14, 11, NULL, 'Reserves & Surplus', 'Child of Capital Account', 0.0000, 'RESERVES_AND_SURPLUS', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(15, 10, NULL, 'Long-term Liabilities', 'Child of Equities & Liabilities', 0.0000, 'LONG_TERM_EQUITIES_AND_LIABILITIES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(16, 10, NULL, 'Current Liabilities', 'Child of Equities & Liabilities', 0.0000, 'CURRENT_LIABILITIES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(17, 16, NULL, 'Other Current Liabilities', 'Child of Equities & Liabilities', 0.0000, 'OTHER_CURRENT_LIABILITIES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(18, 16, NULL, 'Sundry Creditors', 'Child of Equities & Liabilities', 0.0000, 'SUNDRY_CREDITORS', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(19, 16, NULL, 'Outward Duties & Taxes', 'Child of Equities & Liabilities', 0.0000, 'OUTWARD_DUTIES_AND_TAXES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(20, 19, NULL, 'Output Tax', 'Child of Outward Duties & Taxes', 0.0000, 'OUTPUT_TAX', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(21, 0, NULL, 'Expenses', '', 0.0000, 'EXPENSES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(22, 21, NULL, 'Purchase Accounts', '', 0.0000, 'PURCHASE_ACCOUNTS', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(23, 21, NULL, 'Direct Expenses', '', 0.0000, 'DIRECT_EXPENSES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0),
(24, 21, NULL, 'Indirect Expenses', '', 0.0000, 'INDIRECT_EXPENSES', NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `debit_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `credit_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_name` varchar(255) NOT NULL,
  `footer_text` varchar(255) NOT NULL,
  `colored_logo` varchar(255) DEFAULT NULL,
  `light_logo` varchar(255) DEFAULT NULL,
  `active_sms_api` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fevicon` varchar(255) DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `application_name`, `footer_text`, `colored_logo`, `light_logo`, `active_sms_api`, `created_at`, `updated_at`, `fevicon`, `language_id`) VALUES
(1, 'DeltaApp', 'Copyright© DeltaApp - 2024', NULL, NULL, NULL, '2025-04-26 06:20:25', '2025-04-26 06:20:25', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

CREATE TABLE `carriers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_adjustments`
--

CREATE TABLE `cash_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adjustment_date` date NOT NULL,
  `adjustment_type` varchar(255) NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cheque_transactions`
--

CREATE TABLE `cheque_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `transfer_date` date DEFAULT NULL,
  `cheque_no` varchar(255) DEFAULT NULL,
  `payment_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `transfer_to_payment_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `close_cash`
--

CREATE TABLE `close_cash` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opening_balance` decimal(15,2) NOT NULL,
  `today_income` decimal(15,2) NOT NULL,
  `total_income` decimal(15,2) NOT NULL,
  `today_expenses` decimal(15,2) NOT NULL,
  `balance` decimal(15,2) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_details` text DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `colored_logo` varchar(255) DEFAULT NULL,
  `light_logo` varchar(255) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `language_code` varchar(255) DEFAULT NULL,
  `language_name` varchar(255) DEFAULT NULL,
  `active_sms_api` varchar(255) DEFAULT NULL,
  `number_precision` int(11) NOT NULL DEFAULT 2,
  `quantity_precision` int(11) NOT NULL DEFAULT 2,
  `show_hsn` tinyint(1) NOT NULL DEFAULT 1,
  `show_sku` int(11) NOT NULL DEFAULT 1,
  `show_mrp` int(11) NOT NULL DEFAULT 1,
  `restrict_to_sell_above_mrp` tinyint(1) NOT NULL DEFAULT 0,
  `restrict_to_sell_below_msp` tinyint(1) NOT NULL DEFAULT 0,
  `auto_update_sale_price` tinyint(1) NOT NULL DEFAULT 0,
  `auto_update_purchase_price` tinyint(1) NOT NULL DEFAULT 0,
  `auto_update_average_purchase_price` tinyint(1) NOT NULL DEFAULT 0,
  `enable_serial_tracking` int(11) NOT NULL DEFAULT 1,
  `enable_batch_tracking` int(11) NOT NULL DEFAULT 2,
  `is_batch_compulsory` tinyint(1) NOT NULL DEFAULT 0,
  `enable_mfg_date` int(11) NOT NULL DEFAULT 1,
  `enable_exp_date` int(11) NOT NULL DEFAULT 1,
  `enable_model` int(11) NOT NULL DEFAULT 0,
  `enable_color` int(11) NOT NULL DEFAULT 0,
  `enable_size` int(11) NOT NULL DEFAULT 0,
  `show_tax_summary` int(11) NOT NULL DEFAULT 1,
  `tax_type` varchar(255) NOT NULL DEFAULT 'tax',
  `show_signature_on_invoice` int(11) NOT NULL DEFAULT 1,
  `show_terms_and_conditions_on_invoice` int(11) NOT NULL DEFAULT 1,
  `terms_and_conditions` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `date_format` varchar(255) DEFAULT NULL,
  `time_format` varchar(255) DEFAULT NULL,
  `is_enable_crm` tinyint(1) NOT NULL DEFAULT 0,
  `is_enable_carrier` tinyint(1) NOT NULL DEFAULT 1,
  `is_enable_carrier_charge` tinyint(1) NOT NULL DEFAULT 1,
  `show_party_due_payment` tinyint(1) NOT NULL DEFAULT 1,
  `show_discount` tinyint(1) NOT NULL DEFAULT 1,
  `allow_negative_stock_billing` tinyint(1) NOT NULL DEFAULT 1,
  `is_enable_secondary_currency` tinyint(1) NOT NULL DEFAULT 1,
  `is_item_name_unique` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `mobile`, `email`, `address`, `state_id`, `bank_details`, `tax_number`, `colored_logo`, `light_logo`, `signature`, `language_code`, `language_name`, `active_sms_api`, `number_precision`, `quantity_precision`, `show_hsn`, `show_sku`, `show_mrp`, `restrict_to_sell_above_mrp`, `restrict_to_sell_below_msp`, `auto_update_sale_price`, `auto_update_purchase_price`, `auto_update_average_purchase_price`, `enable_serial_tracking`, `enable_batch_tracking`, `is_batch_compulsory`, `enable_mfg_date`, `enable_exp_date`, `enable_model`, `enable_color`, `enable_size`, `show_tax_summary`, `tax_type`, `show_signature_on_invoice`, `show_terms_and_conditions_on_invoice`, `terms_and_conditions`, `created_at`, `updated_at`, `timezone`, `date_format`, `time_format`, `is_enable_crm`, `is_enable_carrier`, `is_enable_carrier_charge`, `show_party_due_payment`, `show_discount`, `allow_negative_stock_billing`, `is_enable_secondary_currency`, `is_item_name_unique`) VALUES
(1, 'The Quick Shop', '9999999999', 'company@example.com', 'Ap: Bangalore, India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 2, 0, 1, 1, 0, 0, 0, 1, 'tax', 1, 1, NULL, '2025-04-26 06:20:25', '2025-04-26 06:20:25', 'Asia/Kolkata', 'Y-m-d', '24', 0, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `code` varchar(3) NOT NULL,
  `exchange_rate` decimal(15,6) NOT NULL DEFAULT 1.000000,
  `is_company_currency` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `exchange_rate`, `is_company_currency`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', '$', 'USD', 1.000000, 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customizations`
--

CREATE TABLE `customizations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customizations`
--

INSERT INTO `customizations` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'toggle_switch', 'not_active', NULL, NULL),
(2, 'card_header_color', '#ff0000', NULL, NULL),
(3, 'card_border_color', '#ffffff', NULL, NULL),
(4, 'heading_color', '#000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `tenant_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `keys` text DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `content`, `keys`, `delete_flag`, `created_at`, `updated_at`) VALUES
(1, 'SALE INVOICE', 'Invoice #[Invoice Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the invoice for your recent sale.\n\nInvoice Details:\n\n   Invoice Number: [Invoice Number]\n   Sale Date: [Sale Date]\n   Due Date: [Due Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Invoice Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Invoice Number]\n\n[Customer Name]\n\n[Sale Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(2, 'SALE ORDER', 'Sale Order #[Order Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of sale order.\n\nOrder Details:\n\n    Order Number: [Order Number]\n\n    Order Date: [Order Date]\n\n    Due Date: [Due Date]\n\n    Total: [Total Amount]\n\n    Paid Amount: [Paid Amount]\n\n    Invoice Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(3, 'SALE RETURN', 'Sale Return/Credit Note #[Return Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of sale return/credit note.\n\nSale Return Details:\n\n    Return Number: [Return Number]\n\n    Return Date: [Return Date]\n\n    Total: [Total Amount]\n\n    Return Amount: [Return Amount]\n\n    Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Return Number]\n\n[Customer Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(4, 'PURCHASE BILL', 'Purchase Bill #[Bill Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the bill for your recent purchase.\n\nBill Details:\n\n   Bill Number: [Bill Number]\n   Purchase Date: [Purchase Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Bill Number]\n\n[Supplier Name]\n\n[Purchase Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(5, 'PURCHASE ORDER', 'Purchase Order #[Order Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the details of purchase order.\n\nPurchase Order Details:\n\n    Order Number: [Order Number]\n\n    Order Date: [Order Date]\n\n    Due Date: [Due Date]\n\n    Total: [Total Amount]\n\n    Paid Amount: [Paid Amount]\n\n    Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(6, 'PURCHASE RETURN', 'Purchase Return/Debit Note #[Return Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the details of purchase return/credit note.\n\nPurchase Return Details:\n\n    Return Number: [Return Number]\n\n    Return Date: [Return Date]\n\n    Total: [Total Amount]\n\n    Return Amount: [Return Amount]\n\n    Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Return Number]\n\n[Supplier Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(7, 'QUOTATION', 'Quotation #[Quotation Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of Quotation.\n\nQuotation Details:\n\n    Quotation Number: [Quotation Number]\n\n    Quotation Date: [Quotation Date]\n\n    Total: [Total Amount]\n\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Quotation Number]\n\n[Customer Name]\n\n[Quotation Date]\n\n[Total Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `expense_code` varchar(255) DEFAULT NULL,
  `expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `expense_subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `account_group_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_items`
--

CREATE TABLE `expense_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_id` bigint(20) UNSIGNED NOT NULL,
  `expense_item_master_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `unit_price` decimal(20,4) NOT NULL DEFAULT 0.0000 COMMENT 'original price(without tax)',
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(255) DEFAULT NULL COMMENT 'fixed or percentage',
  `discount_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item_master`
--

CREATE TABLE `expense_item_master` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `unit_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_subcategories`
--

CREATE TABLE `expense_subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `hsn` text DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `is_service` tinyint(1) NOT NULL DEFAULT 0,
  `item_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `base_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `secondary_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `conversion_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `sale_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_sale_price_with_tax` tinyint(1) NOT NULL,
  `sale_price_discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `sale_price_discount_type` varchar(255) NOT NULL,
  `wholesale_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_wholesale_price_with_tax` tinyint(1) NOT NULL DEFAULT 0,
  `purchase_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_purchase_price_with_tax` tinyint(1) NOT NULL,
  `profit_margin` decimal(20,4) NOT NULL DEFAULT 0.0000 COMMENT 'In % Percentage',
  `mrp` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `msp` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tracking_type` varchar(255) NOT NULL,
  `item_location` varchar(255) DEFAULT NULL,
  `min_stock` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `current_stock` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `image_path` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_masters`
--

CREATE TABLE `item_batch_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `mrp` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_quantities`
--

CREATE TABLE `item_batch_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_batch_master_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_transactions`
--

CREATE TABLE `item_batch_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `item_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `item_batch_master_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `name`, `description`, `created_by`, `updated_by`, `status`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 'General', NULL, NULL, NULL, 1, 0, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `item_general_quantities`
--

CREATE TABLE `item_general_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_masters`
--

CREATE TABLE `item_serial_masters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `serial_code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_quantities`
--

CREATE TABLE `item_serial_quantities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_serial_master_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_transactions`
--

CREATE TABLE `item_serial_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `item_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `item_serial_master_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock_transfers`
--

CREATE TABLE `item_stock_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stock_transfer_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `from_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `to_warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `from_item_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `to_item_transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_transactions`
--

CREATE TABLE `item_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) NOT NULL,
  `transaction_date` date NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `tracking_type` varchar(255) NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `mrp` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `quantity` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `unit_price` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(255) NOT NULL DEFAULT 'percentage',
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `charge_type` varchar(255) DEFAULT NULL,
  `charge_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `charge_tax_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(20,4) NOT NULL DEFAULT 0.0000 COMMENT 'Including (Discount) - (with or without Tax) ',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL,
  `emoji` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `direction`, `emoji`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'ltr', 'flag-icon-us', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(2, 'hi', 'Hindi', 'ltr', 'flag-icon-in', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(3, 'ar', 'Arabic', 'rtl', 'flag-icon-ae', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_15_000010_create_tenants_table', 1),
(5, '2019_09_15_000020_create_domains_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_06_07_063838_create_app_settings', 1),
(8, '2023_06_20_085616_create_languages_table', 1),
(9, '2023_06_27_103949_create_smtp_settings_table', 1),
(10, '2023_07_04_105425_create_permission_tables', 1),
(11, '2023_07_05_103719_create_permission_groups_table', 1),
(12, '2023_08_08_115948_add_permission_group_id_to_permissions_table', 1),
(13, '2023_10_15_100300_add_new_column_status_to_permissions_table', 1),
(14, '2023_10_16_122132_add_new_column_status_to_roles_table', 1),
(15, '2023_10_17_125940_add_new_column_display_name_to_permissions_table', 1),
(16, '2023_11_08_053851_create_customers_table', 1),
(17, '2023_11_10_050850_create_taxes_table', 1),
(18, '2023_11_10_112628_create_services_table', 1),
(19, '2023_11_20_061004_create_payment_types_table', 1),
(20, '2023_11_21_130336_create_jobs_table', 1),
(21, '2023_11_23_045845_create_twilio_table', 1),
(22, '2023_11_23_045911_create_vonage_table', 1),
(23, '2023_11_25_142413_create_sms_templates_table', 1),
(24, '2023_11_26_130942_create_company_table', 1),
(25, '2023_11_28_053051_add_column_fevicon_to_app_settings_table', 1),
(26, '2023_11_29_112601_add_columns_in_company_table', 1),
(27, '2023_12_03_122051_create_email_templates_table', 1),
(28, '2023_12_07_123729_create_orders_table', 1),
(29, '2023_12_07_132219_create_ordered_products', 1),
(30, '2023_12_12_155820_create_prefix_table', 1),
(31, '2023_12_15_120404_create_payment_order_table', 1),
(32, '2023_12_26_163249_add_new_column_assigned_user_id_to_ordered_products_table', 1),
(33, '2023_12_26_193440_add_new_column_assigned_user_note_to_ordered_products_table', 1),
(34, '2023_12_26_194110_add_new_column_schedule_note_to_orders_table', 1),
(35, '2023_12_27_193837_add_new_column_job_code_in_ordered_products_table', 1),
(36, '2023_12_29_172040_add_new_columns_in_oredered_products_table', 1),
(37, '2024_01_18_113646_add_new_column_in_app_settings_table', 1),
(38, '2024_03_10_111342_add_foreign_key_to_permissions_table', 1),
(39, '2024_03_10_120003_remove_cascade_delete_from_roles_has_permissions_table', 1),
(40, '2024_03_10_121727_add_foreign_key_to_users_table', 1),
(41, '2024_03_20_112949_add_created_by_in_users_table', 1),
(42, '2024_03_20_115740_add_created_by_in_roles_table', 1),
(43, '2024_05_16_150510_create_account_groups_table', 1),
(44, '2024_05_16_150540_create_accounts_table', 1),
(45, '2024_05_16_154445_create_account_transactions_table', 1),
(46, '2024_05_20_154231_create_expense_category_table', 1),
(47, '2024_05_24_100846_create_expense_items_master', 1),
(48, '2024_05_28_151159_create_expenses_table', 1),
(49, '2024_05_28_151236_create_expense_items_table', 1),
(50, '2024_06_02_063350_add_column_in_accounts_table', 1),
(51, '2024_06_08_103256_create_warehouses_table', 1),
(52, '2024_06_08_140347_create_item_categories_table', 1),
(53, '2024_06_08_141334_create_units_table', 1),
(54, '2024_06_08_141335_create_items_table', 1),
(55, '2024_06_12_144322_create_item_transactions_table', 1),
(56, '2024_06_21_092617_create_item_serial_master_table', 1),
(57, '2024_06_24_165212_create_item_batch_masters_table', 1),
(58, '2024_06_24_165213_create_item_batche_transactions_table', 1),
(59, '2024_07_01_101046_create_states_table', 1),
(60, '2024_07_01_101047_create_parties_table', 1),
(61, '2024_07_02_165531_create_party_transactions_table', 1),
(62, '2024_07_05_161301_create_purchase_orders_table', 1),
(63, '2024_07_12_144039_create_payment_transaction_table', 1),
(64, '2024_07_16_141128_create_item_batch_quantities_table', 1),
(65, '2024_07_20_173042_add_column_in_company_table', 1),
(66, '2024_07_26_173727_create_purchases_table', 1),
(67, '2024_07_27_205617_add_column_in_accounts_table', 1),
(68, '2024_08_04_111055_create_purchase_return_table', 1),
(69, '2024_08_08_101324_create_item_serial_transactions', 1),
(70, '2024_08_09_150618_create_item_serial_quantities_table', 1),
(71, '2024_08_10_120309_create_item_general_quantities_table', 1),
(72, '2024_08_13_140243_create_sale_order_table', 1),
(73, '2024_08_13_140401_create_sale_table', 1),
(74, '2024_08_13_140447_create_sale_return_table', 1),
(75, '2024_09_03_150952_create_cash_adjustment_table', 1),
(76, '2024_09_05_105556_create_cheque_transaction_table', 1),
(77, '2024_09_10_172119_create_stock_transfers_table', 1),
(78, '2024_09_13_130621_create_item_stock_transfers_table', 1),
(79, '2024_10_09_165405_create_party_payments_table', 1),
(80, '2024_10_09_165406_create_party_payment_allocations_table', 1),
(81, '2024_10_15_122748_update_users_table', 1),
(82, '2024_11_16_145822_update_users_table', 1),
(83, '2024_11_16_165039_create_user_warehouses_table', 1),
(84, '2024_11_17_161743_update_party_table', 1),
(85, '2024_11_18_170736_update_items_table', 1),
(86, '2024_11_23_151907_update_orders_table', 1),
(87, '2024_11_24_112425_create_version_table', 1),
(88, '2024_11_25_130715_update_company_table', 1),
(89, '2024_11_30_141029_update_orders_table', 1),
(90, '2024_12_02_094930_update_items_table', 1),
(91, '2024_12_10_110456_update_company_table', 1),
(92, '2024_12_10_150019_update_parties_table', 1),
(93, '2024_12_17_103659_update_company_table', 1),
(94, '2024_12_22_101427_update_company_table', 1),
(95, '2024_12_24_174820_update_parties_table', 1),
(96, '2024_12_28_134822_create_party_balance_after_adjustments_table', 1),
(97, '2024_12_29_180251_update_company_table', 1),
(98, '2025_01_05_132053_update_company_table', 1),
(99, '2025_01_14_133616_create_brands_table', 1),
(100, '2025_01_14_143954_update_items_table', 1),
(101, '2025_01_18_111043_update_sale_orders_table', 1),
(102, '2025_01_19_090301_create_table_status_histories_table', 1),
(103, '2025_01_29_131743_create_quotations_table', 1),
(104, '2025_01_30_115453_update_sales_table', 1),
(105, '2025_01_30_120506_update_prefix_table', 1),
(106, '2025_01_31_091629_create_currencies_table', 1),
(107, '2025_01_31_122114_update_company_table', 1),
(108, '2025_01_31_131239_udpate_party_table', 1),
(109, '2025_01_31_161036_update_sales_table', 1),
(110, '2025_01_31_172510_update_sale_orders_table', 1),
(111, '2025_01_31_172558_update_sale_return_table', 1),
(112, '2025_01_31_172643_update_purchases_table', 1),
(113, '2025_01_31_172658_update_purchase_orders_table', 1),
(114, '2025_01_31_172704_update_purchase_return_table', 1),
(115, '2025_01_31_173200_update_quotations_table', 1),
(116, '2025_02_03_103555_update_purchase_orders_table', 1),
(117, '2025_02_07_125321_update_company_table', 1),
(118, '2025_02_09_121634_update_company_table', 1),
(119, '2025_02_12_173548_create_expense_subcategories_table', 1),
(120, '2025_02_12_175839_update_expenses_table', 1),
(121, '2025_02_16_174545_update_items_table', 1),
(122, '2025_02_16_183222_update_company_table', 1),
(123, '2025_03_04_125219_create_carriers_table', 1),
(124, '2025_03_04_151219_update_company_table', 1),
(125, '2025_03_08_110515_update_purchase_table', 1),
(126, '2025_03_08_113522_update_item_transactions_table', 1),
(127, '2025_03_17_095035_update_item_transactions_table', 1),
(128, '2025_03_19_120336_update_items_table', 1),
(129, '2023_10_16_000000_create_customizations_table', 2),
(130, '2025_04_18_005707_add_pos_sorting_preference_to_users_table', 2),
(131, '2025_04_18_175100_add_pos_manual_order_to_users_table', 2),
(133, '2025_04_18_215957_add_pos_manual_order_to_users_table', 3),
(134, '2025_04_19_212738_create_customizations_table', 3),
(135, '2025_04_24_004112_add_invoice_status_to_sales_table', 3),
(136, '2025_05_09_144512_create_close_cash_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date DEFAULT NULL COMMENT 'Event start date',
  `start_time` time DEFAULT NULL COMMENT 'Event start time',
  `end_date` date DEFAULT NULL COMMENT 'Event End date',
  `end_time` time DEFAULT NULL COMMENT 'Event End time',
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT 'original price(without tax)',
  `quantity` decimal(10,0) NOT NULL DEFAULT 0,
  `total_price` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '(original price * quantity)',
  `tax_id` bigint(20) UNSIGNED NOT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(255) DEFAULT NULL COMMENT 'fixed or percentage',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_price_with_tax` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assigned_user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `assigned_user_note` text DEFAULT NULL,
  `job_code` varchar(255) DEFAULT NULL,
  `staff_status` varchar(255) DEFAULT NULL,
  `staff_status_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `paid_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_status` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule_note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_date` date NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'If Online Payments',
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `party_code` varchar(255) DEFAULT NULL,
  `party_type` varchar(255) DEFAULT NULL,
  `is_wholesale_customer` tinyint(1) NOT NULL DEFAULT 0,
  `default_party` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `tax_number` varchar(255) DEFAULT NULL,
  `tax_type` varchar(255) DEFAULT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_pay` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `to_receive` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_set_credit_limit` tinyint(1) NOT NULL DEFAULT 0,
  `credit_limit` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_balance_after_adjustments`
--

CREATE TABLE `party_balance_after_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_transaction_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_payments`
--

CREATE TABLE `party_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `payment_direction` enum('receive','pay') NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `reference_no` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_payment_allocations`
--

CREATE TABLE `party_payment_allocations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_payment_id` bigint(20) UNSIGNED NOT NULL,
  `payment_transaction_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_transactions`
--

CREATE TABLE `party_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `to_pay` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `to_receive` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `transaction_type` varchar(255) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_date` date NOT NULL,
  `payment_type_id` bigint(20) UNSIGNED NOT NULL,
  `transfer_to_payment_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `reference_no` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `payment_from_unique_code` varchar(255) DEFAULT NULL COMMENT 'Identify from which form payment done',
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `bank_code` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `print_bit` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `unique_code`, `name`, `account_number`, `bank_code`, `description`, `user_id`, `print_bit`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CASH', 'Cash', NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(2, 'CHEQUE', 'Cheque', NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `display_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `permission_group_id`, `status`, `display_name`) VALUES
(1, 'customer.create', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 1, 1, 'Create'),
(2, 'customer.edit', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 1, 1, 'Edit'),
(3, 'customer.view', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 1, 1, 'View'),
(4, 'customer.delete', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 1, 1, 'Delete'),
(5, 'tax.create', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 2, 1, 'Create'),
(6, 'tax.edit', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 2, 1, 'Edit'),
(7, 'tax.view', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 2, 1, 'View'),
(8, 'tax.delete', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 2, 1, 'Delete'),
(9, 'user.create', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 3, 1, 'Create'),
(10, 'user.edit', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 3, 1, 'Edit'),
(11, 'user.view', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 3, 1, 'View'),
(12, 'user.delete', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 3, 1, 'Delete'),
(13, 'role.create', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 4, 1, 'Create'),
(14, 'role.edit', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 4, 1, 'Edit'),
(15, 'role.view', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 4, 1, 'View'),
(16, 'role.delete', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 4, 1, 'Delete'),
(17, 'profile.edit', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 5, 1, 'Edit'),
(18, 'app.settings.edit', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 6, 1, 'Edit'),
(19, 'payment.type.create', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 7, 1, 'Create'),
(20, 'payment.type.edit', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 7, 1, 'Edit'),
(21, 'payment.type.view', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 7, 1, 'View'),
(22, 'payment.type.delete', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 7, 1, 'Delete'),
(23, 'company.edit', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 8, 1, 'Edit'),
(24, 'sms.create', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 9, 1, 'Create'),
(25, 'sms.template.create', 'web', '2025-04-26 06:20:23', '2025-04-26 06:20:23', 10, 1, 'Create'),
(26, 'sms.template.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 10, 1, 'Edit'),
(27, 'sms.template.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 10, 1, 'View'),
(28, 'sms.template.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 10, 1, 'Delete'),
(29, 'email.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 11, 1, 'Create'),
(30, 'email.template.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 12, 1, 'Create'),
(31, 'email.template.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 12, 1, 'Edit'),
(32, 'email.template.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 12, 1, 'View'),
(33, 'email.template.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 12, 1, 'Delete'),
(34, 'language.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 13, 1, 'Create'),
(35, 'language.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 13, 1, 'Edit'),
(36, 'language.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 13, 1, 'View'),
(37, 'language.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 13, 1, 'Delete'),
(38, 'report.profit_and_loss', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Profit and Loss'),
(39, 'report.item.transaction.batch', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Batch Wise Item Transaction Report'),
(40, 'report.item.transaction.serial', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Serial/IMEI Item Transaction Report'),
(41, 'report.item.transaction.general', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'General Item Transaction Report'),
(42, 'report.purchase', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Purchase Report'),
(43, 'report.purchase.item', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Item Purchase Report'),
(44, 'report.purchase.payment', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Purchase Payment Report'),
(45, 'report.sale', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Sale Report'),
(46, 'report.sale.item', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Item Sale Report'),
(47, 'report.sale.payment', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Sale Payment Report'),
(48, 'report.expired.item', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Expired Item Report'),
(49, 'report.reorder.item', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Reorder Item Report'),
(50, 'report.expense', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Expense Report'),
(51, 'report.expense.item', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Item Expense Report'),
(52, 'report.expense.payment', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Expense Payment Report'),
(53, 'report.gstr-1', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'GSTR-1'),
(54, 'report.gstr-2', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'GSTR-2'),
(55, 'report.stock_transfer', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Stock Transfer Report'),
(56, 'report.stock_transfer.item', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 14, 1, 'Item Stock Transfer Report'),
(57, 'expense.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 15, 1, 'Create'),
(58, 'expense.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 15, 1, 'Edit'),
(59, 'expense.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 15, 1, 'View'),
(60, 'expense.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 15, 1, 'Delete'),
(61, 'expense.category.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 15, 1, 'Category Create'),
(62, 'expense.category.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 15, 1, 'Category Edit'),
(63, 'expense.category.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 15, 1, 'Category View'),
(64, 'expense.category.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 15, 1, 'Category Delete'),
(65, 'warehouse.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 16, 1, 'Create'),
(66, 'warehouse.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 16, 1, 'Edit'),
(67, 'warehouse.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 16, 1, 'View'),
(68, 'warehouse.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 16, 1, 'Delete'),
(69, 'stock_transfer.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 17, 1, 'Create'),
(70, 'stock_transfer.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 17, 1, 'Edit'),
(71, 'stock_transfer.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 17, 1, 'View'),
(72, 'stock_transfer.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 17, 1, 'Delete'),
(73, 'item.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 18, 1, 'Create'),
(74, 'item.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 18, 1, 'Edit'),
(75, 'item.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 18, 1, 'View'),
(76, 'item.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 18, 1, 'Delete'),
(77, 'item.category.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 18, 1, 'Category Create'),
(78, 'item.category.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 18, 1, 'Category Edit'),
(79, 'item.category.view', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 18, 1, 'Category View'),
(80, 'item.category.delete', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 18, 1, 'Category Delete'),
(81, 'unit.create', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 19, 1, 'Create'),
(82, 'unit.edit', 'web', '2025-04-26 06:20:24', '2025-04-26 06:20:24', 19, 1, 'Edit'),
(83, 'unit.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 19, 1, 'View'),
(84, 'unit.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 19, 1, 'Delete'),
(85, 'supplier.create', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 20, 1, 'Create'),
(86, 'supplier.edit', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 20, 1, 'Edit'),
(87, 'supplier.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 20, 1, 'View'),
(88, 'supplier.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 20, 1, 'Delete'),
(89, 'import.item', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 21, 1, 'Import Items & Services'),
(90, 'import.party', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 21, 1, 'Import Customers & Suppliers'),
(91, 'generate.barcode', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 21, 1, 'Generate Barcode'),
(92, 'purchase.order.create', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 22, 1, 'Create'),
(93, 'purchase.order.edit', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 22, 1, 'Edit'),
(94, 'purchase.order.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 22, 1, 'View'),
(95, 'purchase.order.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 22, 1, 'Delete'),
(96, 'purchase.bill.create', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 23, 1, 'Create'),
(97, 'purchase.bill.edit', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 23, 1, 'Edit'),
(98, 'purchase.bill.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 23, 1, 'View'),
(99, 'purchase.bill.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 23, 1, 'Delete'),
(100, 'purchase.return.create', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 24, 1, 'Create'),
(101, 'purchase.return.edit', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 24, 1, 'Edit'),
(102, 'purchase.return.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 24, 1, 'View'),
(103, 'purchase.return.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 24, 1, 'Delete'),
(104, 'sale.order.create', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 25, 1, 'Create'),
(105, 'sale.order.edit', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 25, 1, 'Edit'),
(106, 'sale.order.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 25, 1, 'View'),
(107, 'sale.order.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 25, 1, 'Delete'),
(108, 'sale.invoice.create', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 26, 1, 'Create'),
(109, 'sale.invoice.edit', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 26, 1, 'Edit'),
(110, 'sale.invoice.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 26, 1, 'View'),
(111, 'sale.invoice.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 26, 1, 'Delete'),
(112, 'sale.return.create', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 27, 1, 'Create'),
(113, 'sale.return.edit', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 27, 1, 'Edit'),
(114, 'sale.return.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 27, 1, 'View'),
(115, 'sale.return.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 27, 1, 'Delete'),
(116, 'transaction.cash.add', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 28, 1, 'Cash Transaction Create'),
(117, 'transaction.cash.edit', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 28, 1, 'Cash Transaction Edit'),
(118, 'transaction.cash.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 28, 1, 'Cash Transaction View'),
(119, 'transaction.cash.delete', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 28, 1, 'Cash Transaction Delete'),
(120, 'transaction.bank.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 28, 1, 'Bank Transaction View'),
(121, 'transaction.cheque.view', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 28, 1, 'Cheque Transaction View'),
(122, 'report.customer.due.payment', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 14, 1, 'Customer Payments Due Report'),
(123, 'report.supplier.due.payment', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 14, 1, 'Supplier Payments Due Report'),
(124, 'report.stock_report.item.batch', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 14, 1, 'Batch Wise Item Stock Report'),
(125, 'report.stock_report.item.serial', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 14, 1, 'Serial Wise Item Stock Report'),
(126, 'report.stock_report.item.general', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 14, 1, 'General Item Stock Report'),
(127, 'general.allow.to.view.item.purchase.price', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 29, 1, 'Allow User to View Item Purchase Price in Item Search(Invoice/Bill)'),
(128, 'general.permission.to.apply.discount.to.sale', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 29, 1, 'Permission to Apply Discounts on Invoices'),
(129, 'general.permission.to.apply.discount.to.purchase', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 29, 1, 'Permission to Apply Discounts on Purchases'),
(130, 'sale.invoice.can.view.other.users.sale.invoices', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 26, 1, 'Allow User to View All Sale Invoices Created By Other Users'),
(131, 'sale.order.can.view.other.users.sale.orders', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 25, 1, 'Allow User to View All Sale Orders Created By Other Users'),
(132, 'sale.return.can.view.other.users.sale.returns', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 27, 1, 'Allow User to View All Sale Returns Created By Other Users'),
(133, 'purchase.bill.can.view.other.users.purchase.bills', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 23, 1, 'Allow User to View All Purchase Bills Created By Other Users'),
(134, 'purchase.order.can.view.other.users.purchase.orders', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 22, 1, 'Allow User to View All Purchase Orders Created By Other Users'),
(135, 'purchase.return.can.view.other.users.purchase.returns', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 24, 1, 'Allow User to View All Purchase Returns Created By Other Users'),
(136, 'expense.can.view.other.users.expenses', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 15, 1, 'Allow User to View All Expenses Created By Other Users'),
(137, 'stock_transfer.can.view.other.users.stock.transfers', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 17, 1, 'Allow User to View All Stock Transfer Created By Other Users'),
(138, 'dashboard.can.view.widget.cards', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 30, 1, 'Allow User to View Dashboard Widget Cards'),
(139, 'dashboard.can.view.sale.vs.purchase.bar.chart', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 30, 1, 'Allow User to View Sale Vs. Purchase Bar Chart on Dashboard'),
(140, 'dashboard.can.view.trending.items.pie.chart', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 30, 1, 'Allow User to View Trending Items Pie Chart on Dashboard'),
(141, 'dashboard.can.view.recent.invoices.table', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 30, 1, 'Allow User to View Recent Invoices Table on Dashboard'),
(142, 'dashboard.can.view.self.dashboard.details.only', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 30, 1, 'Allow User to View Only Their Own Dashboard Details'),
(143, 'item.brand.create', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 18, 1, 'Brand Create'),
(144, 'item.brand.edit', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 18, 1, 'Brand Edit'),
(145, 'item.brand.view', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 18, 1, 'Brand View'),
(146, 'item.brand.delete', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 18, 1, 'Brand Delete'),
(147, 'sale.quotation.create', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 31, 1, 'Create'),
(148, 'sale.quotation.edit', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 31, 1, 'Edit'),
(149, 'sale.quotation.view', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 31, 1, 'View'),
(150, 'sale.quotation.delete', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 31, 1, 'Delete'),
(151, 'sale.quotation.can.view.other.users.sale.quotations', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 31, 1, 'Allow User to View All Quotations Created By Other Users'),
(152, 'currency.create', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 32, 1, 'Create'),
(153, 'currency.edit', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 32, 1, 'Edit'),
(154, 'currency.view', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 32, 1, 'View'),
(155, 'currency.delete', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 32, 1, 'Delete'),
(156, 'expense.subcategory.create', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 15, 1, 'Expense Subcategory Create'),
(157, 'expense.subcategory.edit', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 15, 1, 'Expense Subcategory Edit'),
(158, 'expense.subcategory.view', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 15, 1, 'Expense Subcategory View'),
(159, 'expense.subcategory.delete', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 15, 1, 'Expense Subcategory Delete'),
(160, 'carrier.create', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 33, 1, 'Carrier Create'),
(161, 'carrier.edit', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 33, 1, 'Carrier Edit'),
(162, 'carrier.view', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 33, 1, 'Carrier View'),
(163, 'carrier.delete', 'web', '2025-04-26 06:20:26', '2025-04-26 06:20:26', 33, 1, 'Carrier Delete');

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Customers', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(2, 'Tax', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(3, 'Users', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(4, 'Roles', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(5, 'Profile', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(6, 'App Settings', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(7, 'Bank Account', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(8, 'Company Details', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(9, 'Create & Send Manual SMS', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(10, 'SMS Template', 1, '2025-04-26 06:20:23', '2025-04-26 06:20:23'),
(11, 'Create & Send Manual Email', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(12, 'Email Template', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(13, 'Languages', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(14, 'Reports', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(15, 'Expense', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(16, 'Warehouses', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(17, 'Stock Transfer', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(18, 'Items', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(19, 'Units', 1, '2025-04-26 06:20:24', '2025-04-26 06:20:24'),
(20, 'Suppliers', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(21, 'Utilities', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(22, 'Purchase Order', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(23, 'Purchase Bill', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(24, 'Purchase Return', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(25, 'Sale Order', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(26, 'Sale Bill', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(27, 'Sale Return', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(28, 'Cash & Bank Transaction', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(29, 'General', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(30, 'Dashboard', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(31, 'Quotation', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(32, 'Currency', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(33, 'Carrier', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prefix`
--

CREATE TABLE `prefix` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `order` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `job_code` varchar(255) DEFAULT NULL,
  `service_master` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `expense` varchar(255) DEFAULT NULL,
  `purchase_order` varchar(255) DEFAULT NULL,
  `purchase_bill` varchar(255) DEFAULT NULL,
  `purchase_return` varchar(255) DEFAULT NULL,
  `sale_order` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `sale_return` varchar(255) DEFAULT NULL,
  `stock_transfer` varchar(255) DEFAULT NULL,
  `quotation` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prefix`
--

INSERT INTO `prefix` (`id`, `company_id`, `order`, `service`, `job_code`, `service_master`, `customer`, `expense`, `purchase_order`, `purchase_bill`, `purchase_return`, `sale_order`, `sale`, `sale_return`, `stock_transfer`, `quotation`, `created_at`, `updated_at`) VALUES
(1, 1, 'ORD/', NULL, 'JOB/', NULL, NULL, 'EXP/', 'PO/', 'PB/', 'PR/', 'SO/', 'SL/', 'SR/', 'ST/', 'QT/', '2025-04-26 06:20:25', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `purchase_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `carrier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `shipping_charge` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `is_shipping_charge_distributed` tinyint(1) NOT NULL DEFAULT 0,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

CREATE TABLE `purchase_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

CREATE TABLE `purchase_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `return_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quotation_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `quotation_code` varchar(255) DEFAULT NULL,
  `quotation_status` varchar(255) NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Admin', 'web', '2025-04-26 06:20:25', '2025-04-26 06:20:25', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `sale_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `sale_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quotation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `invoice_status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_orders`
--

CREATE TABLE `sale_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `order_code` varchar(255) DEFAULT NULL,
  `order_status` varchar(255) NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return`
--

CREATE TABLE `sale_return` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_date` date NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `return_code` varchar(255) DEFAULT NULL,
  `reference_no` varchar(255) DEFAULT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED DEFAULT NULL,
  `note` text DEFAULT NULL,
  `round_off` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `grand_total` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `paid_amount` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `currency_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT 0.0000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `service_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `unit_price` decimal(20,2) NOT NULL DEFAULT 0.00,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) NOT NULL DEFAULT 'inclusive',
  `image_path` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `keys` text DEFAULT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `content`, `keys`, `delete_flag`, `created_at`, `updated_at`) VALUES
(1, 'SALE INVOICE', 'Dear [Customer Name],\n\nYour invoice for [Invoice Number] is attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Invoice Number]\n\n[Customer Name]\n\n[Sale Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(2, 'SALE ORDER', 'Dear [Customer Name],\n\nYour sale order details for [Order Number] are attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(3, 'SALE RETURN', 'Dear [Customer Name],\n\nYour sale return details for [Return Number] are attached.\n\nTotal: [Total Amount]\nReturned: [Return Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Return Number]\n\n[Customer Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(4, 'PURCHASE BILL', 'Dear [Supplier Name],\n\nPlease find attached the invoice for your recent purchase.\n\nBill Details:\n\n   Bill Number: [Bill Number]\n   Purchase Date: [Purchase Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Bill Number]\n\n[Supplier Name]\n\n[Purchase Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(5, 'PURCHASE ORDER', 'Dear [Supplier Name],\n\nYour Purchase order details for [Order Number] are attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(6, 'PURCHASE RETURN', 'Dear [Supplier Name],\n\nYour purchase return details for [Return Number] are attached.\n\nTotal: [Total Amount]\nReturned: [Return Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Return Number]\n\n[Supplier Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:25', '2025-04-26 06:20:25'),
(7, 'QUOTATION', 'Dear [Customer Name],\n\nYour Quotation details for [Quotation Number] are attached.\n\nTotal: [Total Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Quotation Number]\n\n[Customer Name]\n\n[Quotation Date]\n\n[Total Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `encryption` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(2, 'Arunachal Pradesh', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(3, 'Assam', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(4, 'Bihar', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(5, 'Chhattisgarh', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(6, 'Goa', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(7, 'Gujarat', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(8, 'Haryana', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(9, 'Himachal Pradesh', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(10, 'Jharkhand', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(11, 'Karnataka', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(12, 'Kerala', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(13, 'Madhya Pradesh', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(14, 'Maharashtra', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(15, 'Manipur', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(16, 'Meghalaya', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(17, 'Mizoram', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(18, 'Nagaland', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(19, 'Odisha', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(20, 'Punjab', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(21, 'Rajasthan', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(22, 'Sikkim', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(23, 'Tamil Nadu', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(24, 'Telangana', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(25, 'Tripura', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(26, 'Uttar Pradesh', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(27, 'Uttarakhand', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(28, 'West Bengal', 1, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `status_histories`
--

CREATE TABLE `status_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `statusable_type` varchar(255) NOT NULL,
  `statusable_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfers`
--

CREATE TABLE `stock_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prefix_code` varchar(255) DEFAULT NULL,
  `count_id` varchar(255) DEFAULT NULL,
  `transfer_code` varchar(255) DEFAULT NULL,
  `transfer_date` date NOT NULL,
  `note` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'None', 0.00, 1, 0, NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `twilio`
--

CREATE TABLE `twilio` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sid` text DEFAULT NULL,
  `auth_token` text DEFAULT NULL,
  `twilio_number` text DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_code` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `short_code`, `description`, `user_id`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'None', 'None', NULL, NULL, 1, 0, NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(2, 'Box', 'Box', NULL, NULL, 1, 1, NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(3, 'Pieces', 'Pcs', NULL, NULL, 1, 1, NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(4, 'Bag', 'Bgs', NULL, NULL, 1, 1, NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(5, 'Bottles', 'Btl', NULL, NULL, 1, 1, NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(6, 'Kilogram', 'Kgs', NULL, NULL, 1, 1, NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(7, 'Grams', 'Gms', NULL, NULL, 1, 1, NULL, NULL, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `pos_sorting_preference` varchar(255) NOT NULL DEFAULT 'a_to_z',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `is_allowed_all_warehouses` tinyint(1) NOT NULL DEFAULT 1,
  `pos_manual_order` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`pos_manual_order`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `role_id`, `avatar`, `status`, `remember_token`, `pos_sorting_preference`, `created_at`, `updated_at`, `created_by`, `updated_by`, `mobile`, `is_allowed_all_warehouses`, `pos_manual_order`) VALUES
(1, 'admin', 'Super', 'Human', 'admin@example.com', NULL, '$2y$10$IMyZJiv4URihT38Xc4wxXeP2S8MGJijIDn70TLuMB8YlpDEh4YRqa', 1, NULL, 1, NULL, 'a_to_z', '2025-04-26 06:20:23', '2025-04-26 06:20:25', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouses`
--

CREATE TABLE `user_warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `version`, `created_at`, `updated_at`) VALUES
(1, '1.0', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(2, '1.1', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(3, '1.1.1', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(4, '1.2', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(5, '1.3', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(6, '1.3.1', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(7, '1.3.2', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(8, '1.3.3', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(9, '1.3.4', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(10, '1.4', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(11, '1.4.1', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(12, '1.4.2', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(13, '1.4.3', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(14, '1.4.4', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(15, '1.4.5', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(16, '1.4.6', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(17, '1.4.7', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(18, '1.4.8', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(19, '1.4.9', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(20, '1.5', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(21, '2.0', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(22, '2.1', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(23, '2.2', '2025-04-26 06:20:26', '2025-04-26 06:20:26'),
(24, '2.3', '2025-04-26 06:20:26', '2025-04-26 06:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `vonage`
--

CREATE TABLE `vonage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text DEFAULT NULL,
  `api_secret` text DEFAULT NULL,
  `tenant_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `description`, `created_by`, `updated_by`, `status`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 'Main', NULL, NULL, NULL, 1, 0, '2025-04-26 06:20:26', '2025-04-26 06:20:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_group_id_foreign` (`group_id`),
  ADD KEY `accounts_created_by_foreign` (`created_by`),
  ADD KEY `accounts_updated_by_foreign` (`updated_by`),
  ADD KEY `accounts_payment_type_bank_id_foreign` (`payment_type_bank_id`),
  ADD KEY `accounts_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `accounts_party_id_foreign` (`party_id`);

--
-- Indexes for table `account_groups`
--
ALTER TABLE `account_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_groups_created_by_foreign` (`created_by`),
  ADD KEY `account_groups_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  ADD KEY `account_transactions_account_id_foreign` (`account_id`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_settings_language_id_foreign` (`language_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_created_by_foreign` (`created_by`),
  ADD KEY `brands_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `carriers`
--
ALTER TABLE `carriers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carriers_created_by_foreign` (`created_by`),
  ADD KEY `carriers_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `cash_adjustments`
--
ALTER TABLE `cash_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_adjustments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `cash_adjustments_created_by_foreign` (`created_by`),
  ADD KEY `cash_adjustments_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `cheque_transactions`
--
ALTER TABLE `cheque_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cheque_transactions_payment_transaction_id_foreign` (`payment_transaction_id`),
  ADD KEY `cheque_transactions_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `cheque_transactions_transfer_to_payment_type_id_foreign` (`transfer_to_payment_type_id`),
  ADD KEY `cheque_transactions_created_by_foreign` (`created_by`),
  ADD KEY `cheque_transactions_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `close_cash`
--
ALTER TABLE `close_cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_state_id_foreign` (`state_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_unique` (`name`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD KEY `customers_created_by_foreign` (`created_by`),
  ADD KEY `customers_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `customizations`
--
ALTER TABLE `customizations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customizations_key_unique` (`key`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  ADD KEY `expenses_created_by_foreign` (`created_by`),
  ADD KEY `expenses_updated_by_foreign` (`updated_by`),
  ADD KEY `expenses_expense_subcategory_id_foreign` (`expense_subcategory_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_account_group_id_foreign` (`account_group_id`),
  ADD KEY `expense_categories_created_by_foreign` (`created_by`),
  ADD KEY `expense_categories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `expense_items`
--
ALTER TABLE `expense_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_items_expense_id_foreign` (`expense_id`),
  ADD KEY `expense_items_expense_item_master_id_foreign` (`expense_item_master_id`),
  ADD KEY `expense_items_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `expense_item_master`
--
ALTER TABLE `expense_item_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_item_master_tax_id_foreign` (`tax_id`),
  ADD KEY `expense_item_master_created_by_foreign` (`created_by`),
  ADD KEY `expense_item_master_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `expense_subcategories`
--
ALTER TABLE `expense_subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_subcategories_created_by_foreign` (`created_by`),
  ADD KEY `expense_subcategories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_item_category_id_foreign` (`item_category_id`),
  ADD KEY `items_base_unit_id_foreign` (`base_unit_id`),
  ADD KEY `items_secondary_unit_id_foreign` (`secondary_unit_id`),
  ADD KEY `items_tax_id_foreign` (`tax_id`),
  ADD KEY `items_created_by_foreign` (`created_by`),
  ADD KEY `items_updated_by_foreign` (`updated_by`),
  ADD KEY `items_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `item_batch_masters`
--
ALTER TABLE `item_batch_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_batch_masters_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_batch_quantities`
--
ALTER TABLE `item_batch_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_batch_quantities_item_id_foreign` (`item_id`),
  ADD KEY `item_batch_quantities_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_batch_quantities_item_batch_master_id_foreign` (`item_batch_master_id`);

--
-- Indexes for table `item_batch_transactions`
--
ALTER TABLE `item_batch_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_batch_transactions_item_transaction_id_foreign` (`item_transaction_id`),
  ADD KEY `item_batch_transactions_item_batch_master_id_foreign` (`item_batch_master_id`),
  ADD KEY `item_batch_transactions_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_batch_transactions_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_categories_created_by_foreign` (`created_by`),
  ADD KEY `item_categories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `item_general_quantities`
--
ALTER TABLE `item_general_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_general_quantities_item_id_foreign` (`item_id`),
  ADD KEY `item_general_quantities_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `item_serial_masters`
--
ALTER TABLE `item_serial_masters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_serial_masters_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_serial_quantities`
--
ALTER TABLE `item_serial_quantities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_serial_quantities_item_id_foreign` (`item_id`),
  ADD KEY `item_serial_quantities_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_serial_quantities_item_serial_master_id_foreign` (`item_serial_master_id`);

--
-- Indexes for table `item_serial_transactions`
--
ALTER TABLE `item_serial_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_serial_transactions_item_transaction_id_foreign` (`item_transaction_id`),
  ADD KEY `item_serial_transactions_item_serial_master_id_foreign` (`item_serial_master_id`),
  ADD KEY `item_serial_transactions_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_serial_transactions_item_id_foreign` (`item_id`);

--
-- Indexes for table `item_stock_transfers`
--
ALTER TABLE `item_stock_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_stock_transfers_stock_transfer_id_foreign` (`stock_transfer_id`),
  ADD KEY `item_stock_transfers_item_id_foreign` (`item_id`),
  ADD KEY `item_stock_transfers_from_warehouse_id_foreign` (`from_warehouse_id`),
  ADD KEY `item_stock_transfers_to_warehouse_id_foreign` (`to_warehouse_id`),
  ADD KEY `item_stock_transfers_from_item_transaction_id_foreign` (`from_item_transaction_id`),
  ADD KEY `item_stock_transfers_to_item_transaction_id_foreign` (`to_item_transaction_id`);

--
-- Indexes for table `item_transactions`
--
ALTER TABLE `item_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  ADD KEY `item_transactions_warehouse_id_foreign` (`warehouse_id`),
  ADD KEY `item_transactions_item_id_foreign` (`item_id`),
  ADD KEY `item_transactions_unit_id_foreign` (`unit_id`),
  ADD KEY `item_transactions_tax_id_foreign` (`tax_id`),
  ADD KEY `item_transactions_created_by_foreign` (`created_by`),
  ADD KEY `item_transactions_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordered_products_order_id_foreign` (`order_id`),
  ADD KEY `ordered_products_service_id_foreign` (`service_id`),
  ADD KEY `ordered_products_tax_id_foreign` (`tax_id`),
  ADD KEY `ordered_products_assigned_user_id_foreign` (`assigned_user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_created_by_foreign` (`created_by`),
  ADD KEY `orders_updated_by_foreign` (`updated_by`),
  ADD KEY `orders_party_id_foreign` (`party_id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payments_order_id_foreign` (`order_id`),
  ADD KEY `order_payments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `order_payments_created_by_foreign` (`created_by`),
  ADD KEY `order_payments_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parties_state_id_foreign` (`state_id`),
  ADD KEY `parties_created_by_foreign` (`created_by`),
  ADD KEY `parties_updated_by_foreign` (`updated_by`),
  ADD KEY `parties_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `party_balance_after_adjustments`
--
ALTER TABLE `party_balance_after_adjustments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_balance_after_adjustments_party_payment_id_foreign` (`party_payment_id`),
  ADD KEY `party_balance_after_adjustments_payment_transaction_id_foreign` (`payment_transaction_id`);

--
-- Indexes for table `party_payments`
--
ALTER TABLE `party_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_payments_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `party_payments_party_id_foreign` (`party_id`),
  ADD KEY `party_payments_created_by_foreign` (`created_by`),
  ADD KEY `party_payments_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `party_payment_allocations`
--
ALTER TABLE `party_payment_allocations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_payment_allocations_party_payment_id_foreign` (`party_payment_id`),
  ADD KEY `party_payment_allocations_payment_transaction_id_foreign` (`payment_transaction_id`);

--
-- Indexes for table `party_transactions`
--
ALTER TABLE `party_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_transactions_party_id_foreign` (`party_id`),
  ADD KEY `party_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  ADD KEY `party_transactions_created_by_foreign` (`created_by`),
  ADD KEY `party_transactions_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_transactions_payment_type_id_foreign` (`payment_type_id`),
  ADD KEY `payment_transactions_transfer_to_payment_type_id_foreign` (`transfer_to_payment_type_id`),
  ADD KEY `payment_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  ADD KEY `payment_transactions_created_by_foreign` (`created_by`),
  ADD KEY `payment_transactions_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_types_user_id_foreign` (`user_id`),
  ADD KEY `payment_types_created_by_foreign` (`created_by`),
  ADD KEY `payment_types_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `permissions_permission_group_id_foreign` (`permission_group_id`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `prefix`
--
ALTER TABLE `prefix`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prefix_company_id_foreign` (`company_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_purchase_order_id_foreign` (`purchase_order_id`),
  ADD KEY `purchases_party_id_foreign` (`party_id`),
  ADD KEY `purchases_state_id_foreign` (`state_id`),
  ADD KEY `purchases_created_by_foreign` (`created_by`),
  ADD KEY `purchases_updated_by_foreign` (`updated_by`),
  ADD KEY `purchases_currency_id_foreign` (`currency_id`),
  ADD KEY `purchases_carrier_id_foreign` (`carrier_id`);

--
-- Indexes for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_orders_party_id_foreign` (`party_id`),
  ADD KEY `purchase_orders_state_id_foreign` (`state_id`),
  ADD KEY `purchase_orders_created_by_foreign` (`created_by`),
  ADD KEY `purchase_orders_updated_by_foreign` (`updated_by`),
  ADD KEY `purchase_orders_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_return_party_id_foreign` (`party_id`),
  ADD KEY `purchase_return_state_id_foreign` (`state_id`),
  ADD KEY `purchase_return_created_by_foreign` (`created_by`),
  ADD KEY `purchase_return_updated_by_foreign` (`updated_by`),
  ADD KEY `purchase_return_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quotations_party_id_foreign` (`party_id`),
  ADD KEY `quotations_state_id_foreign` (`state_id`),
  ADD KEY `quotations_created_by_foreign` (`created_by`),
  ADD KEY `quotations_updated_by_foreign` (`updated_by`),
  ADD KEY `quotations_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  ADD KEY `roles_created_by_foreign` (`created_by`),
  ADD KEY `roles_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_sale_order_id_foreign` (`sale_order_id`),
  ADD KEY `sales_party_id_foreign` (`party_id`),
  ADD KEY `sales_state_id_foreign` (`state_id`),
  ADD KEY `sales_created_by_foreign` (`created_by`),
  ADD KEY `sales_updated_by_foreign` (`updated_by`),
  ADD KEY `sales_quotation_id_foreign` (`quotation_id`),
  ADD KEY `sales_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_orders_party_id_foreign` (`party_id`),
  ADD KEY `sale_orders_state_id_foreign` (`state_id`),
  ADD KEY `sale_orders_created_by_foreign` (`created_by`),
  ADD KEY `sale_orders_updated_by_foreign` (`updated_by`),
  ADD KEY `sale_orders_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `sale_return`
--
ALTER TABLE `sale_return`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_return_party_id_foreign` (`party_id`),
  ADD KEY `sale_return_state_id_foreign` (`state_id`),
  ADD KEY `sale_return_created_by_foreign` (`created_by`),
  ADD KEY `sale_return_updated_by_foreign` (`updated_by`),
  ADD KEY `sale_return_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_tax_id_foreign` (`tax_id`),
  ADD KEY `services_created_by_foreign` (`created_by`),
  ADD KEY `services_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_histories`
--
ALTER TABLE `status_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_histories_statusable_type_statusable_id_index` (`statusable_type`,`statusable_id`),
  ADD KEY `status_histories_created_by_foreign` (`created_by`),
  ADD KEY `status_histories_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_transfers_created_by_foreign` (`created_by`),
  ADD KEY `stock_transfers_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `taxes_created_by_foreign` (`created_by`),
  ADD KEY `taxes_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio`
--
ALTER TABLE `twilio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_user_id_foreign` (`user_id`),
  ADD KEY `units_created_by_foreign` (`created_by`),
  ADD KEY `units_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_created_by_foreign` (`created_by`),
  ADD KEY `users_updated_by_foreign` (`updated_by`);

--
-- Indexes for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_warehouses_user_id_foreign` (`user_id`),
  ADD KEY `user_warehouses_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vonage`
--
ALTER TABLE `vonage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_created_by_foreign` (`created_by`),
  ADD KEY `warehouses_updated_by_foreign` (`updated_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `account_groups`
--
ALTER TABLE `account_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carriers`
--
ALTER TABLE `carriers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_adjustments`
--
ALTER TABLE `cash_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cheque_transactions`
--
ALTER TABLE `cheque_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `close_cash`
--
ALTER TABLE `close_cash`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customizations`
--
ALTER TABLE `customizations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_items`
--
ALTER TABLE `expense_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_item_master`
--
ALTER TABLE `expense_item_master`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_subcategories`
--
ALTER TABLE `expense_subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_batch_masters`
--
ALTER TABLE `item_batch_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_batch_quantities`
--
ALTER TABLE `item_batch_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_batch_transactions`
--
ALTER TABLE `item_batch_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_general_quantities`
--
ALTER TABLE `item_general_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_serial_masters`
--
ALTER TABLE `item_serial_masters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_serial_quantities`
--
ALTER TABLE `item_serial_quantities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_serial_transactions`
--
ALTER TABLE `item_serial_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_stock_transfers`
--
ALTER TABLE `item_stock_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_transactions`
--
ALTER TABLE `item_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_balance_after_adjustments`
--
ALTER TABLE `party_balance_after_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_payments`
--
ALTER TABLE `party_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_payment_allocations`
--
ALTER TABLE `party_payment_allocations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `party_transactions`
--
ALTER TABLE `party_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prefix`
--
ALTER TABLE `prefix`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_return`
--
ALTER TABLE `purchase_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_orders`
--
ALTER TABLE `sale_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sale_return`
--
ALTER TABLE `sale_return`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `smtp_settings`
--
ALTER TABLE `smtp_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `status_histories`
--
ALTER TABLE `status_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `twilio`
--
ALTER TABLE `twilio`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vonage`
--
ALTER TABLE `vonage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `accounts_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `account_groups` (`id`),
  ADD CONSTRAINT `accounts_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounts_payment_type_bank_id_foreign` FOREIGN KEY (`payment_type_bank_id`) REFERENCES `payment_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `account_groups`
--
ALTER TABLE `account_groups`
  ADD CONSTRAINT `account_groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `account_groups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD CONSTRAINT `account_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD CONSTRAINT `app_settings_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `brands_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `carriers`
--
ALTER TABLE `carriers`
  ADD CONSTRAINT `carriers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carriers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `cash_adjustments`
--
ALTER TABLE `cash_adjustments`
  ADD CONSTRAINT `cash_adjustments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cash_adjustments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `cash_adjustments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `cheque_transactions`
--
ALTER TABLE `cheque_transactions`
  ADD CONSTRAINT `cheque_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cheque_transactions_payment_transaction_id_foreign` FOREIGN KEY (`payment_transaction_id`) REFERENCES `payment_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cheque_transactions_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `cheque_transactions_transfer_to_payment_type_id_foreign` FOREIGN KEY (`transfer_to_payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `cheque_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`),
  ADD CONSTRAINT `expenses_expense_subcategory_id_foreign` FOREIGN KEY (`expense_subcategory_id`) REFERENCES `expense_subcategories` (`id`),
  ADD CONSTRAINT `expenses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_account_group_id_foreign` FOREIGN KEY (`account_group_id`) REFERENCES `account_groups` (`id`),
  ADD CONSTRAINT `expense_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_items`
--
ALTER TABLE `expense_items`
  ADD CONSTRAINT `expense_items_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_items_expense_item_master_id_foreign` FOREIGN KEY (`expense_item_master_id`) REFERENCES `expense_item_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`);

--
-- Constraints for table `expense_item_master`
--
ALTER TABLE `expense_item_master`
  ADD CONSTRAINT `expense_item_master_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_item_master_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `expense_item_master_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_subcategories`
--
ALTER TABLE `expense_subcategories`
  ADD CONSTRAINT `expense_subcategories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_subcategories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_base_unit_id_foreign` FOREIGN KEY (`base_unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `items_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `items_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`),
  ADD CONSTRAINT `items_secondary_unit_id_foreign` FOREIGN KEY (`secondary_unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `items_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `item_batch_masters`
--
ALTER TABLE `item_batch_masters`
  ADD CONSTRAINT `item_batch_masters_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_batch_quantities`
--
ALTER TABLE `item_batch_quantities`
  ADD CONSTRAINT `item_batch_quantities_item_batch_master_id_foreign` FOREIGN KEY (`item_batch_master_id`) REFERENCES `item_batch_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_batch_quantities_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_batch_quantities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_batch_transactions`
--
ALTER TABLE `item_batch_transactions`
  ADD CONSTRAINT `item_batch_transactions_item_batch_master_id_foreign` FOREIGN KEY (`item_batch_master_id`) REFERENCES `item_batch_masters` (`id`),
  ADD CONSTRAINT `item_batch_transactions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_batch_transactions_item_transaction_id_foreign` FOREIGN KEY (`item_transaction_id`) REFERENCES `item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_batch_transactions_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD CONSTRAINT `item_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `item_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `item_general_quantities`
--
ALTER TABLE `item_general_quantities`
  ADD CONSTRAINT `item_general_quantities_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_general_quantities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_serial_masters`
--
ALTER TABLE `item_serial_masters`
  ADD CONSTRAINT `item_serial_masters_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_serial_quantities`
--
ALTER TABLE `item_serial_quantities`
  ADD CONSTRAINT `item_serial_quantities_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_serial_quantities_item_serial_master_id_foreign` FOREIGN KEY (`item_serial_master_id`) REFERENCES `item_serial_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_serial_quantities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_serial_transactions`
--
ALTER TABLE `item_serial_transactions`
  ADD CONSTRAINT `item_serial_transactions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_serial_transactions_item_serial_master_id_foreign` FOREIGN KEY (`item_serial_master_id`) REFERENCES `item_serial_masters` (`id`),
  ADD CONSTRAINT `item_serial_transactions_item_transaction_id_foreign` FOREIGN KEY (`item_transaction_id`) REFERENCES `item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_serial_transactions_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_stock_transfers`
--
ALTER TABLE `item_stock_transfers`
  ADD CONSTRAINT `item_stock_transfers_from_item_transaction_id_foreign` FOREIGN KEY (`from_item_transaction_id`) REFERENCES `item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_from_warehouse_id_foreign` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_stock_transfer_id_foreign` FOREIGN KEY (`stock_transfer_id`) REFERENCES `stock_transfers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_to_item_transaction_id_foreign` FOREIGN KEY (`to_item_transaction_id`) REFERENCES `item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_to_warehouse_id_foreign` FOREIGN KEY (`to_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_transactions`
--
ALTER TABLE `item_transactions`
  ADD CONSTRAINT `item_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `item_transactions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_transactions_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `item_transactions_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `item_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `item_transactions_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD CONSTRAINT `ordered_products_assigned_user_id_foreign` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ordered_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordered_products_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `ordered_products_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `order_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `parties`
--
ALTER TABLE `parties`
  ADD CONSTRAINT `parties_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `parties_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `parties_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `parties_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `party_balance_after_adjustments`
--
ALTER TABLE `party_balance_after_adjustments`
  ADD CONSTRAINT `party_balance_after_adjustments_party_payment_id_foreign` FOREIGN KEY (`party_payment_id`) REFERENCES `party_payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `party_balance_after_adjustments_payment_transaction_id_foreign` FOREIGN KEY (`payment_transaction_id`) REFERENCES `payment_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `party_payments`
--
ALTER TABLE `party_payments`
  ADD CONSTRAINT `party_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `party_payments_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `party_payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `party_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `party_payment_allocations`
--
ALTER TABLE `party_payment_allocations`
  ADD CONSTRAINT `party_payment_allocations_party_payment_id_foreign` FOREIGN KEY (`party_payment_id`) REFERENCES `party_payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `party_payment_allocations_payment_transaction_id_foreign` FOREIGN KEY (`payment_transaction_id`) REFERENCES `payment_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `party_transactions`
--
ALTER TABLE `party_transactions`
  ADD CONSTRAINT `party_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `party_transactions_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `party_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD CONSTRAINT `payment_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_transactions_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `payment_transactions_transfer_to_payment_type_id_foreign` FOREIGN KEY (`transfer_to_payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `payment_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD CONSTRAINT `payment_types_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_types_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_types_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_permission_group_id_foreign` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_groups` (`id`);

--
-- Constraints for table `prefix`
--
ALTER TABLE `prefix`
  ADD CONSTRAINT `prefix_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_carrier_id_foreign` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`),
  ADD CONSTRAINT `purchases_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchases_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `purchases_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `purchases_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`),
  ADD CONSTRAINT `purchases_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `purchases_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `purchase_orders_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `purchase_orders_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `purchase_orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD CONSTRAINT `purchase_return_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_return_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `purchase_return_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `purchase_return_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `purchase_return_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quotations_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `quotations_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `quotations_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `quotations_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `roles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `sales_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `sales_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`),
  ADD CONSTRAINT `sales_sale_order_id_foreign` FOREIGN KEY (`sale_order_id`) REFERENCES `sale_orders` (`id`),
  ADD CONSTRAINT `sales_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `sales_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD CONSTRAINT `sale_orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sale_orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `sale_orders_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `sale_orders_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `sale_orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_return`
--
ALTER TABLE `sale_return`
  ADD CONSTRAINT `sale_return_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sale_return_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `sale_return_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `sale_return_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `sale_return_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `services_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `services_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `status_histories`
--
ALTER TABLE `status_histories`
  ADD CONSTRAINT `status_histories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `status_histories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD CONSTRAINT `stock_transfers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stock_transfers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `taxes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `units_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `units_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  ADD CONSTRAINT `user_warehouses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_warehouses_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `warehouses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
