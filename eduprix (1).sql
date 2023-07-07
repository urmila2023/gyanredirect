-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2023 at 11:26 AM
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
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`) VALUES
(1, 'keerti.sharma0201@gmail.com', 'Naukri@12345', 'admin'),
(2, 'Admin@gmail.com', '12345', 'admin');

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
(4, 'Marketing', 1),
(6, '', 1);

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
(1, 1, 'HTML Intrtoduction', 'HTML stands for Hypertext Markup Language. It is the standard  markup language used for creating web pages and structuring their content. HTML plays a fundamental role in web development by providing a way to define the structure and presentation of web documents.\n\nThe primary purpose of HTML is to organize the content of a web page in a structured manner. It uses a hierarchical structure where elements are nested within one another to create a logical layout. HTML tags are used to mark up different parts of the content, such as headings, paragraphs, images, links, tables, and forms.\n\nHTML serves as the backbone of a web page, defining the basic structure and layout. It provides a way to divide content into sections, define headings and paragraphs, create lists, insert images and multimedia elements, and create forms for user input. By using HTML, web developers can specify how the content should be structured and presented to the user.\n\nHTML also plays a crucial role in enabling navigation and interactivity on the web. It allows the creation of hyperlinks that connect different web pages or sections within a page, enabling users to navigate between them. Additionally, HTML forms facilitate user input and interaction, allowing users to submit data and interact with web applications.\n\nWhile HTML defines the structure and content of a web page, its presentation and styling are typically handled using Cascading Style Sheets (CSS). CSS allows developers to control the visual appearance of HTML elements, including properties such as colors, fonts, layout, and responsiveness.\n\nIn summary, HTML is the foundation of web development, providing the structure and organization for web pages. It enables developers to define the content, layout, and interactivity of a website, forming the basis for creating engaging and interactive web experiences.HTML stands for Hypertext Markup Language. It is the standard  markup language used for creating web pages and structuring their content. HTML plays a fundamental role in web development by providing a way to define the structure and presentation of web documents.\n\nThe primary purpose of HTML is to organize the content of a web page in a structured manner. It uses a hierarchical structure where elements are nested within one another to create a logical layout. HTML tags are used to mark up different parts of the content, such as headings, paragraphs, images, links, tables, and forms.\n\nHTML serves as the backbone of a web page, defining the basic structure and layout. It provides a way to divide content into sections, define headings and paragraphs, create lists, insert images and multimedia elements, and create forms for user input. By using HTML, web developers can specify how the content should be structured and presented to the user.\n\nHTML also plays a crucial role in enabling navigation and interactivity on the web. It allows the creation of hyperlinks that connect different web pages or sections within a page, enabling users to navigate between them. Additionally, HTML forms facilitate user input and interaction, allowing users to submit data and interact with web applications.\n\nWhile HTML defines the structure and content of a web page, its presentation and styling are typically handled using Cascading Style Sheets (CSS). CSS allows developers to control the visual appearance of HTML elements, including properties such as colors, fonts, layout, and responsiveness.\n\nIn summary, HTML is the foundation of web development, providing the structure and organization for web pages. It enables developers to define the content, layout, and interactivity of a website, forming the basis for creating engaging and interactive web experiences.HTML stands for Hypertext Markup Language. It is the standard  markup language used for creating web pages and structuring their content. HTML plays a fundamental role in web development by providing a way to define the structure and presentation of web documents.\n\nThe primary purpose of HTML is to organize the content of a web page in a structured manner. It uses a hierarchical structure where elements are nested within one another to create a logical layout. HTML tags are used to mark up different parts of the content, such as headings, paragraphs, images, links, tables, and forms.\n\nHTML serves as the backbone of a web page, defining the basic structure and layout. It provides a way to divide content into sections, define headings and paragraphs, create lists, insert images and multimedia elements, and create forms for user input. By using HTML, web developers can specify how the content should be structured and presented to the user.\n\nHTML also plays a crucial role in enabling navigation and interactivity on the web. It allows the creation of hyperlinks that connect different web pages or sections within a page, enabling users to navigate between them. Additionally, HTML forms facilitate user input and interaction, allowing users to submit data and interact with web applications.\n\nWhile HTML defines the structure and content of a web page, its presentation and styling are typically handled using Cascading Style Sheets (CSS). CSS allows developers to control the visual appearance of HTML elements, including properties such as colors, fonts, layout, and responsiveness.\n\nIn summary, HTML is the foundation of web development, providing the structure and organization for web pages. It enables developers to define the content, layout, and interactivity of a website, forming the basis for creating engaging and interactive web experiences.'),
(2, 1, 'HTML Editor', 'There are several HTML editors available that provide a convenient environment for writing and editing HTML code. Here are some popular HTML editors:\r\n\r\nVisual Studio Code: Visual Studio Code is a free source code editor that offers robust support for HTML editing. It provides syntax highlighting, code completion, and integrated debugging capabilities.\r\n\r\nSublime Text: Sublime Text is a powerful and lightweight text editor that supports HTML editing. It offers a clean and intuitive interface, customizable keybindings, and a wide range of plugins to enhance productivity.\r\n\r\nAtom: Atom is a customizable and open-source text editor developed by GitHub. It offers a rich set of features for HTML editing, including a built-in package manager, multiple panes for simultaneous editing, and a vibrant community contributing various plugins.\r\n\r\nAdobe Dreamweaver: Dreamweaver is a professional web development tool that combines visual design capabilities with code editing. It provides a visual interface for building HTML layouts and supports advanced features like live preview, code suggestion, and integration with other Adobe Creative Cloud applications.\r\n\r\nBrackets: Brackets is an open-source code editor specifically designed for web development. It offers a lightweight and streamlined environment with features like inline editing, live preview, and quick editing of CSS and JavaScript files associated with HTML.\r\n\r\nNotepad++: Notepad++ is a popular free text editor for Windows that supports HTML editing. It provides syntax highlighting, auto-completion, and a wide range of plugins to extend functionality.\r\n\r\nThese are just a few examples of HTML editors available. Each editor has its own set of features and interface, so it\'s worth trying out a few to find the one that suits your preferences and workflow.\r\n\r\n\r\n\r\n\r\n\r\n\r\n'),
(3, 1, 'HTML Basic', 'A HTML heading or HTML h tag can be defined as a title or a subtitle which you want to display on the webpage. When you place the text within the heading tags <h1>.........</h1>, it is displayed on the browser in the bold format and size of the text depends on the number of heading.\n\nThere are six different HTML headings which are defined with the <h1> to <h6> tags, from highest level h1 (main heading) to the least level h6 (least important heading).'),
(4, 1, 'HTML Heading', 'HTML defines six levels of headings. A heading element implies all the font changes, paragraph breaks before and after, and any white space necessary to render the heading. The heading elements are H1, H2, H3, H4, H5, and H6 with H1 being the highest (or most important) level and H6 the least.'),
(5, 1, 'HTML Form', 'HTML Form is a document that stores information of a user on a web server using interactive controls. An HTML form contains different kinds of information such as username, password, contact number, email id, etc. The elements used in an HTML form are the check box, input box, radio buttons, submit buttons, etc.'),
(6, 2, 'Finance Introduction', 'Finance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.\n\nThere are several key areas within finance that are worth exploring:\n\nPersonal Finance: Personal finance focuses on managing an individual\'s financial resources, such as budgeting, saving, investing, and retirement planning. It involves making informed decisions about income, expenses, debt management, and financial goals.\n\nCorporate Finance: Corporate finance involves managing the financial activities of companies. It includes financial planning, capital budgeting, analyzing investment opportunities, raising capital, and managing risk. Corporate finance aims to maximize shareholder value and ensure the financial stability and growth of a company.\n\nInvestment Management: Investment management is the professional management of various investment instruments, such as stocks, bonds, real estate, and mutual funds, on behalf of individuals or institutions. Investment managers analyze market trends, conduct research, and make investment decisions to achieve optimal returns while considering the risk tolerance of their clients.\n\nFinancial Markets: Financial markets are platforms where buyers and sellers trade financial assets. These include stock markets, bond markets, commodity markets, and currency markets. Financial market participants, such as investors, traders, and financial institutions, engage in buying and selling securities to meet their investment and liquidity needs.\n\nBanking and Financial Institutions: Banks and other financial institutions provide a range of services, including deposit accounts, loans, credit cards, and investment products. They facilitate financial transactions, offer financial advice, and play a crucial role in the economy by channeling funds between savers and borrowers.\n\nRisk Management: Risk management involves identifying, analyzing, and mitigating potential risks that may impact financial outcomes. It is essential for individuals and businesses to assess and manage various risks, such as market risk, credit risk, operational risk, and liquidity risk. Risk management strategies include insurance, diversification, hedging, and contingency planning.\n\nFinance professionals, such as financial analysts, investment bankers, financial planners, and risk managers, play a vital role in these areas by providing expertise and guidance in making financial decisions. They utilize financial tools, quantitative analysis, and economic principles to evaluate investment opportunities, assess financial performance, and develop strategies to achieve financial goals.'),
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
(1, 1, 'Introduce to HTML', 'Biggner', 'Table,Span, Division,List Item, Ordered List, Unordered List, Image,Anchor,Paragraph,Heading', '<p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\"><strong>HTML</strong> (Hypertext Markup Language) is the standard markup language used for creating web pages and structuring their content. It provides a set of tags and attributes that define the structure and presentation of a web document. HTML uses a hierarchical structure, where elements are nested within one another to form a logical and organized layout.</span></p><p><br><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">HTML (Hypertext Markup Language) has several key features that make it a powerful language for creating web pages. Here are some of the notable features of HTML:</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">1.Structure and Semantics</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">2.Tags and Attributes</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">3.Hyperlinks</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">4.Multimedia Support</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">5.Forms and Input</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">6.Accessibility</span></p>', 'commercial.jpg', '07 Jul 2023'),
(2, 2, 'Introduce to Finance', 'Begginner', 'Financial Decisions,Financial Analysis,Investments,Budgeting,Risk Management,Personal Finance', '\r\nFinance is a field that deals with the management of money, investments, and other financial assets. It encompasses a wide range of activities, including banking, investing, budgeting, saving, and lending. Finance plays a crucial role in individuals\' lives, businesses of all sizes, and the overall economy.', 'commercial.jpg', NULL),
(3, 3, 'Importance Of Investment', 'Advanced', 'fedwfde', '<p>fswfswfswwwwwwerererer</p>', 'commercial.jpg', '07 Jul 2023'),
(4, 4, 'Importance of Marketing', 'Biggner', 'Stock Market,Diversification,Return on Investment (ROI),Asset Allocation,Portfolio Management,Invest', '<h3>Introduce to HTML</h3><p>&nbsp;</p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\"><strong>HTML</strong> (Hypertext Markup Language) is the standard markup language used for creating web pages and structuring their content. It provides a set of tags and attributes that define the structure and presentation of a web document. HTML uses a hierarchical structure, where elements are nested within one another to form a logical and organized layout.</span></p><p><br><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">HTML (Hypertext Markup Language) has several key features that make it a powerful language for creating web pages. Here are some of the notable features of HTML:</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">1.Structure and Semantics</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">2.Tags and Attributes</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">3.Hyperlinks</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">4.Multimedia Support</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">5.Forms and Input</span></p><p><span style=\"background-color:rgb(247,247,248);color:rgb(55,65,81);\">6.Accessibility</span></p>', 'commercial.jpg', '07 Jul 2023');

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
