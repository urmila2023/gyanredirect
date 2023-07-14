-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2023 at 07:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eduprix`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`, `firstname`, `lastname`) VALUES
(1, 'keerti.sharma0201@gmail.com', 'Naukri@12345', 'admin', NULL, NULL),
(2, 'Admin@gmail.com', '12345', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(1, 'Finance', 1),
(2, 'Development', 1),
(3, 'Investment', 1),
(4, 'Marketing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `curicullum`
--

CREATE TABLE `curicullum` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `answer` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curicullum`
--

INSERT INTO `curicullum` (`id`, `post_id`, `question`, `answer`) VALUES
(1, 1, 'HTML Intrtoduction', '\nFinance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.'),
(2, 1, 'HTML Editor', 'There are several HTML editors available that p<br>rovide a conv<br>enient environment for writing and editing HTML code. Here <br>are some popular HTML editors:\n\nVisual Studio<br> Code: Visual Studio Code is a free source code ed<br>itor that offers robust support for HTML editing. It provides synt<br>ax highlighting, code completion, and integrated debugging capabilities.\n<b r>\nSublime Text: Sublime Text is a powerful and lightw<br>eight text editor that supports HTML editing. It offers a clean a<br>nd intuitive interfac<br>e, customizable keybindings, and a wide<br> range of plugins to enhance productivity.\n\nAtom: Atom is a customizable and open-source text editor developed by GitHub. It offers a rich s<br>et of features for HTML edi<br>ting, including a built-in package manager, multi<br>ple panes for simultaneous editing, and a vibrant community contributing various plugins.\n\nAdobe Dreamweaver: Dreamweaver is a professional web development tool that combines visual design capabilities with code editing. <br>It provides a visual interface for building HTML layouts and supports advanced features like live prev<br>iew, code suggestion, and integration with other Adobe Creative Cloud applications.\n\nBrackets: Brackets is an open-source code editor specifically designed for web developmen<br>t. It offers a lightweight and streamlined environment with features like inline editing, live preview, and qui<br>k editing of CSS and JavaScript files associated with HTML.\n\nNotepad++: Notepad++ is a popular free text editor for Windows that supports HTML editing. It pro<br>vides syntax highlighting, auto-completion, and a wide range of plugins to extend functionality.\n\nThese are just a few examples of HTML editors available. Each editor has its own set of fea<br>tures and interface, so it\'s worth trying out a few to find the one that suits yo<br>ur preferences and workflow.\n\n\n\n\n\n\n'),
(3, 1, 'HTML Basic', 'A HTML heading or HTML h tag can be defined as a title or a subtitle which you want to display on the webpage. When you place the text within the heading tags <h1>.........</h1>, it is displayed on the browser in the bold format and size of the text depends on the number of heading.\n\nThere are six different HTML headings which are defined with the <h1> to <h6> tags, from highest level h1 (main heading) to the least level h6 (least important heading).'),
(4, 1, 'HTML Heading', 'HTML defines six levels of headings. A heading element implies all the font changes, paragraph breaks before and after, and any white space necessary to render the heading. The heading elements are H1, H2, H3, H4, H5, and H6 with H1 being the highest (or most important) level and H6 the least.'),
(5, 1, 'HTML Form', 'HTML Form is a document that stores information of a user on a web server using interactive controls. An HTML form contains different kinds of information such as username, password, contact number, email id, etc. The elements used in an HTML form are the check box, input box, radio buttons, submit buttons, etc.'),
(6, 2, 'Finance Introduction', 'Finance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, <br><br>budgeting, <br>saving, and lending. Finance plays a crucial role in indiv<br>iduals\' lives, businesses of all sizes, and the overall economy.\n\nThere are several key areas within finance that are <br>worth exploring:\n\nPersonal Finance<br> Personal finance focuses on managing an individual\'s financial resources, <br>such as budgeting, saving, investing, and ret<br>irement plann<br>ing. It involves making informed decisions about income, expenses, debt man<br>agement, and financial goals.\n\nCorporate Finance: Corporate finance involves managing the financial activities of companies. It includes financial planning<br>, capital budgeting, analyzing investment opportunities, raising capital, and managing risk<br>. Corporate f<br>inance aims to maximize sha<br>reholder value and ensure the financial stability and growth of a company.\n\nInvestment Management: Investment management is th<br>e professional management of variou<br>s investment instruments, such as stocks, bonds, real estate, and mutual funds, on behalf of individuals or institutions. Investment managers analyze market trends, conduct research, and make <>br>investment decisions to achieve optimal returns while considering the risk tolerance of their clients.\n\nFinancial Markets: Financial markets are platforms where buyers and sellers trade financial assets. These include stock markets, bond markets, commodity markets, and currency markets. Fi<br>nancial market participants, such as investors, traders, and fin<br>ancial institutions, engage in buying and selling se<br>curities to meet their investment and liquidity needs.\n\nBanking and Financial Institutions: Banks and other financial insti<br>tutions provide a range of services, including d<br>eposit accou<br>nts, loans, credit cards, and investment products. They facilitate financial transactions, offer financial advice, and play a crucial role in the economy by channeling funds between savers and borrowers.\n\nRisk Management: Risk management involves identifying, analyzing, and mitigating potential risks that may impact financial outc<br>omes. It is essential for individuals and businesses to assess and manage various risks, such as market risk, credit risk, operational risk, and liquidity risk. R<br>is<br>k management strategies include insurance, diversification, hedging, and contingency planning.\n\nFinance professionals, such as financial analysts,<br> investment bankers, financial planners, and risk managers, play a vital role in these areas by providing expertise and guidance in making financial decisions. They utilize financial tools, quantitative analysis, and economic principles to<br> evaluate investment opportunities, assess financial performance, and develop strategies to achieve financial goals.'),
(7, 2, 'Basic Finance', 'Finance professionals, such as financial analysts, investment bankers, financial planners, and risk managers, play a vital role in these areas by providing expertise and guidance in making financial decisions. They utilize financial tools, quantitative analysis, and economic principles to evaluate investment opportunities, assess financial performance, and develop strategies to achieve financial goals.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `lebal` varchar(200) DEFAULT NULL,
  `tags` varchar(100) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `post_date` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `lebal`, `tags`, `desc`, `image`, `post_date`) VALUES
(1, 1, 'Introduce to HTML', 'Biggner', 'Table,Span, Division,List Item, Ordered List, Unordered List, Image,Anchor,Paragraph,Heading', '\nFinance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.<p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\"><strong>HTML</strong> (Hypertext Markup Language) is the standard markup language used for creating web pages and structuring their content. It pp><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">1.', 'commercial.jpg', '07 Jul 2023'),
(2, 2, 'Introduce to Finance', 'Begginner', 'Financial Decisions,Financial Analysis,Investments,Budgeting,Risk Management,Personal Finance', '\nFinance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.', 'commercial.jpg', NULL),
(3, 3, 'Importance Of Investment', 'Advanced', 'fedwfde', '<p>fswfswfswwwwwwerererer</p>', 'commercial.jpg', '07 Jul 2023'),
(4, 4, 'Importance of Marketing', 'Biggner', 'Stock Market,Diversification,Return on Investment (ROI),Asset Allocation,Portfolio Management,Invest', '<h3>Introduce to HTML</h3><p>&nbsp;</p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\"><strong>HTML</strong> (Hypertext Markup Language) is the standard markup language used for creating web pages and structuring their content. It provides a set of tags and attributes that define the structure and presentation of a web document. HTML uses a hierarchical structure, where elements are nested within one another to form a logical and organized layout.</span></p><p><br><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">HTML (Hypertext Markup Language) has several key features that make it a powerful language for creating web pages. Here are some of the notable features of HTML:</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">1.Structure and Semantics</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">2.Tags and Attributes</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">3.Hyperlinks</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">4.Multimedia Support</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">5.Forms and Input</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">6.Accessibility</span></p>', 'commercial.jpg', '07 Jul 2023');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_options`
--

CREATE TABLE `quiz_options` (
  `option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_text` varchar(200) DEFAULT NULL,
  `is_correct` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_options`
--

INSERT INTO `quiz_options` (`option_id`, `question_id`, `option_text`, `is_correct`) VALUES
(1, 1, 'Hypertext Markup language', 1),
(2, 1, 'h', 0),
(3, 1, 't', 0),
(4, 1, 'm', 0),
(5, 2, 'Cascading Style Sheet ', 1),
(6, 2, 'c', 0),
(7, 2, 's', 0),
(8, 2, 's', 0);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `question_id` int(11) NOT NULL,
  `question_text` varchar(200) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`question_id`, `question_text`) VALUES
(1, 'What is HTML?'),
(2, 'What is CSS?'),
(3, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(100) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(11, 'Urmila', 'Maurya', 'a@gmail.com', '1'),
(12, 'u', 'm', 'm@gmail.com', '2'),
(13, 's', 'm', 'sm@g.c', '3');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state` varchar(30) DEFAULT NULL,
  `code` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `code`) VALUES
(1, 'Jammu and Kashmir', '1'),
(2, 'Himachal Pradesh', '2'),
(3, 'Punjab', '3'),
(4, 'Chandigarh', '4'),
(5, 'Uttarakhand', '5'),
(6, 'Haryana', '6'),
(7, 'Delhi', '7'),
(8, 'Rajasthan', '8'),
(9, 'Uttar Pradesh', '9'),
(10, 'Bihar', '10'),
(11, 'Sikkim', '11'),
(12, 'Arunachal Pradesh', '12'),
(13, 'Nagaland', '13'),
(14, 'Manipur', '14'),
(15, 'Mizoram', '15'),
(16, 'Tripura', '16'),
(17, 'Meghalaya', '17'),
(18, 'Assam', '18'),
(19, 'West Bengal', '19'),
(20, 'Jharkhand', '20'),
(21, 'Odisha', '21'),
(22, 'Chattisgarh', '22'),
(23, 'Madhya Pradesh', '23'),
(24, 'Gujarat', '24'),
(25, 'Daman and Diu', '25'),
(26, 'Dadra and Nagar Haveli', '26'),
(27, 'Maharashtra', '27'),
(28, 'Karnataka', '29'),
(29, 'Goa', '30'),
(30, 'Lakshadweep Islands', '31'),
(31, 'Kerala', '32'),
(32, 'Tamil Nadu', '33'),
(33, 'Pondicherry', '34'),
(34, 'Andaman and Nicobar Islands', '35'),
(35, 'Telangana', '36'),
(36, 'Andhra Pradesh', '37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curicullum`
--
ALTER TABLE `curicullum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `curicullum`
--
ALTER TABLE `curicullum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `quiz_options`
--
ALTER TABLE `quiz_options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
