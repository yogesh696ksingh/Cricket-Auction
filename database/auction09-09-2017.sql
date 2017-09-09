-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2017 at 02:03 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket`
--

-- --------------------------------------------------------

--
-- Table structure for table `auction`
--

CREATE TABLE `auction` (
  `id` int(11) NOT NULL,
  `name` varchar(27) DEFAULT NULL,
  `image` varchar(61) DEFAULT NULL,
  `year` varchar(2) DEFAULT NULL,
  `branch` varchar(4) DEFAULT NULL,
  `division` varchar(18) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(14) DEFAULT NULL,
  `player_type` varchar(13) DEFAULT NULL,
  `info_batting` varchar(9) DEFAULT NULL,
  `info_bowling` varchar(14) DEFAULT NULL,
  `achievements` varchar(476) DEFAULT NULL,
  `base_price` int(11) NOT NULL DEFAULT '1000000',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0: default, 1: sold, 2:unsold',
  `manager` int(11) NOT NULL DEFAULT '0' COMMENT '0:no manager, else manager id',
  `sell_price` int(11) NOT NULL DEFAULT '1000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auction`
--

INSERT INTO `auction` (`id`, `name`, `image`, `year`, `branch`, `division`, `email`, `phone`, `player_type`, `info_batting`, `info_bowling`, `achievements`, `base_price`, `status`, `manager`, `sell_price`) VALUES
(1, 'Aditya Patil', 'https://drive.google.com/open?id=0BwV07EElS6oAeWNqTHRNcmNKbmM', 'BE', 'MECH', 'H', 'patil.aditya@siesgst.ac.in', '9892742350', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'part of the  college team which won the inter college tournament', 5000000, 0, 0, 5000000),
(2, 'Krishna Prashanth', 'https://drive.google.com/open?id=0BxvieFnZ-BN5RzkyREZxSWxLVlE', 'BE', 'MECH', 'H', 'prashanth.krishna@siesgst.ac.in', '9833061298', 'All-Rounder', 'Left Arm', 'Right Arm Pace', '', 5000000, 0, 0, 5000000),
(3, 'Yogesh Singh', 'https://drive.google.com/open?id=0BwxyB2AorKMrSmd3VzJqZVJxVjg', 'BE', 'CE', 'D', 'singh.yogesh@siesgst.ac.in', '9004583074', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'College Cricket Team', 5000000, 0, 0, 5000000),
(4, 'Dhiraj Thakur', 'https://drive.google.com/open?id=0B9YqpP4braifX0JZd01QWDZDYk0', 'BE', 'EXTC', 'A', 'thakur.dhiraj14@siesgst.ac.in', '868982898', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Played MCA U-19 2012-2014\nBox Runner-Up for SE-EXTC\nReached Semis in Open Cricket for TE-EXTC\nPlayed under legendary Yogesh K Singh in FE', 4000000, 0, 0, 4000000),
(5, 'Karan Mhatre', 'https://drive.google.com/open?id=0B4qtrGSR6LTPeHZxclRaY3ZuSmM', 'BE', 'EXTC', 'A', 'mhatre.karan@siesgst.ac.in', '9619531216', 'Batsman', 'Right Arm', 'Right Arm Spin', '1-Box cricket runner ups lakshya 2016 \n2-mix cricket winners lakshya 2017', 4000000, 0, 0, 4000000),
(6, 'PRANAY GHOLAP', 'https://drive.google.com/open?id=0B3YG499chsLxczR3cHFuY0hDSkU', 'BE', 'EXTC', 'A', 'Pranay551gholap@gmail.com ', '9975526670', 'Batsman', 'Left Arm', 'Right Arm Pace', 'Box cricket Runner up Sies Management 2017\nBox cricket runner up TML 2016\n Overarm semis TML 2017\n', 4000000, 0, 0, 4000000),
(7, 'SANKET M SADAWARTE', 'https://drive.google.com/open?id=0B6cOniM-wQUMZElKY3FvVm1zZ2c', 'BE', 'IT', 'E', 'sanketsadawarte99@gmail.com', '9029718758', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Played for school, junior college and in lakshya. ', 4000000, 0, 0, 4000000),
(8, 'Srivatsan', 'https://drive.google.com/open?id=0B2dLMnLTMtqmVXduOU54c0FwQUU', 'BE', 'CE', 'C', 'Srivatsan.kothandraman@siesgst.ac.in', '9619099589', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 4000000, 0, 0, 4000000),
(9, 'Gaurang Vibhandik ', 'https://drive.google.com/open?id=0B9XxVGwUkM-GUmhRbmxfT0hLR00', 'TE', 'MECH', 'H', 'gaurang.vibhandik15@siesgst.ac.in ', '9552173699', 'All-Rounder', 'Left Arm', 'Left Arm Pace', 'Members of sies gst college team', 2000000, 0, 0, 2000000),
(10, 'Jaishankar Iyer ', 'https://drive.google.com/open?id=0B-TC5j2jGIHfczQ1emdEWmJHalk', 'TE', 'IT', 'E', 'jaishankar.gurumurthi15@siesgst.ac.in', '9769962957', 'Wicket-Keeper', 'Right Arm', 'Right Arm Spin', 'Played for jr.college, currently playing for Sies GST', 2000000, 0, 0, 2000000),
(11, 'Krishna shenvi', 'https://drive.google.com/open?id=0B-rX7Pb15NHrZC02Sk41WUlCZFU', 'TE', 'CE', 'D', 'krish.shenvi@gmail.com', '8888781736', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'A member of the college cricket team', 2000000, 0, 0, 2000000),
(12, 'Omkar Tawade', 'https://drive.google.com/open?id=0BzfKlhNTSX_aOXZnZ1pQR3dlRE0', 'TE', 'EXTC', 'A', 'omkar.tawade15@siesgst.ac.in', '9820580569', 'Bowler', 'Right Arm', 'Left Arm Spin', 'Representing College Cricket Team.\nRecently Selected to True Premier League.', 2000000, 0, 0, 2000000),
(13, 'Tanmay Kale', 'https://drive.google.com/open?id=0B7KoG1hg1WBVaHh5QUtQMmZwQzA', 'TE', 'EXTC', 'A', 'tanmay.kale15@siesgst.ac ', '9930009576', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '1)  Played for MCA U-14 and U-16.\n2) Represented Dilip Vengsarkar Cricket Academy in various tournaments organised by MCA at U-14 and U-16 level.\n3) Represented Nerul Gymkhana at various cricket tournaments as a bowling allrounder.\n4) I currently represent SIESGST in various cricket tournaments held at university and intercollegiate level.\n5) I represented my school i.e DAV Public School in U-14 DSO cricket tournament.\n6) Represented Jaipuriar school at DSO U-16 level.\n\n\n', 2000000, 0, 0, 2000000),
(14, 'Abhishek Dyavarisetty', 'https://drive.google.com/open?id=0B2nfBema6JjiTk5tVGpyLWZaYm8', 'BE', 'IT', 'E', 'dyavarisetty.abhishek@siesgst.ac.in', '9869818101', 'Batsman', 'Right Arm', '', 'part in TML LAKSHY ', 1000000, 0, 0, 1000000),
(15, 'Abhishek Kannan', 'https://drive.google.com/open?id=0B3KEMOaw52j7ZWpGRGJCb05vWkU', 'BE', 'MECH', 'H', 'abhishek.kannan215@siesgst.ac.in', '9967962669', 'Bowler', 'Right Arm', 'Right Arm Spin', '', 1000000, 0, 0, 1000000),
(16, 'Aditya sargar', 'https://drive.google.com/open?id=0ByU1J4-AcygoOU40ZEloVWpYWUk', 'BE', 'CE', 'D', 'sargaraditya@gmail.com', '9029025678', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Played for school team ', 1000000, 0, 0, 1000000),
(17, 'Advait Gaitonde', 'https://drive.google.com/open?id=0B_w-7CRGXXPFdjJRMGItNWY3OG8', 'TE', 'PPT', 'F2', 'advait3081997@gmail.com', '9867660735', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(18, 'Ajit Jagtap', 'https://drive.google.com/open?id=0B1wVEvbGKT2JampsTXAzM2U0YUE', 'TE', 'IT', 'E', 'ajitjagtap951@gmail.com', '9867361878', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(19, 'Akshay Vadkar', 'https://drive.google.com/open?id=0ByvHimy8PfmVZWVKVDhRZGRwUzg', 'TE', 'EXTC', 'B', 'akshayvadkar5@gmail.com', '9594314760', 'All-Rounder', 'Right Arm', 'Right Arm Spin', 'No but playing gali cricket from childhood ', 1000000, 0, 0, 1000000),
(20, 'Ananya Vyas', 'https://drive.google.com/open?id=0B6udNbWaBvi9eDFFSWF1enQ5aHc', 'BE', 'CE', 'D', 'ananya.vyas@siesgst.ac.in', '8286585088', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Member of SIES GST Cricket team B , Member of the Prashasan academy U-16 team and played interclub tournaments for the same , Member of the school cricket team in the year 2013-14 , member of the TE CE cricket team for the sport event in 2016-17', 1000000, 0, 0, 1000000),
(21, 'Aniket H. Chavan', 'https://drive.google.com/open?id=0B7jFibiWHWuPSDRBWkxKTmF5VU0', 'TE', 'IT', 'E4', 'aniket.chavan097@gmail.com', '9833470830', 'Batsman', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(22, 'Anis', 'https://drive.google.com/open?id=0B48tZ1_2EGMraUVJUVhReGFvdms', 'TE', 'IT', 'E', 'anismohammed97@gmail.com', '9768272406', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(23, 'Anuran', 'https://drive.google.com/open?id=0B55KpcS7rp1nNTZRZlJCWUtVQ1E', 'TE', 'IT', 'E', 'anuram.nadar15@siesgst.ac.in', '8108291246', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Won intra school competition ', 1000000, 0, 0, 1000000),
(24, 'Arvind Thever', 'https://drive.google.com/open?id=0B3UN3V4MQ1maekh1eVpKUkx4cXc', 'TE', 'CE', 'D', 'arvind.thever15@siesgst.ac.in', '9167917988', 'All-Rounder', 'Right Arm', 'Right Arm Spin', '1)Won the Inter college cricket tournament in 2017, playing for SIES GST. 2)Scored 96 runs off 46 balls in the opening match of NMIMS inter college cricket tournament in 2017, and fell just short of  a record for winning with the greatest margin in a T20 match. 3)Playing cricket professionally since 10 years. 4) Was captain of the SIES jr. College cricket team. ', 1000000, 0, 0, 1000000),
(25, 'Bhavin patel', 'https://drive.google.com/open?id=0B4jtZ7qsMpD-NDNCckw4N2tYUjQ', 'BE', 'IT', 'E', 'bhavinpatel578@gmail.com', '9867657373', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Been a part of the junior college team  in which I took 5 wicket haul and played for lion\'s club ', 1000000, 0, 0, 1000000),
(26, 'chethap nadar', 'https://drive.google.com/open?id=0B83VpHswhrJNR21TQmdWVTU4aU0', 'TE', 'IT', 'e', 'abchethap@gmail.com', '9920336459', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(27, 'Chinmay kemkar', 'https://drive.google.com/open?id=0B9u-sYnWolZUN3ZvQUNaMWxGRjA', 'TE', 'IT', 'E', 'chinmaykemkar76@gmail.com', '9819108416', 'Batsman', 'Right Arm', 'Right Arm Pace', 'Played in school team more than once', 1000000, 0, 0, 1000000),
(28, 'Deepak pattem', 'https://drive.google.com/open?id=0B7nEhuuQzKZHM2JsT0pGOU5yams', 'TE', 'IT', 'NA', 'deepakpattem333@gmail.com', '9702798127', 'All-Rounder', 'Right Arm', 'Right Arm Spin', '', 1000000, 0, 0, 1000000),
(29, 'Dharmaraj Ayyappan', 'https://drive.google.com/open?id=0B0BUX7o50B_Jam5fTVRfYmxVRDg', 'TE', 'MECH', 'H', 'dharmaraj97@gmail.com', '8879587715', 'Bowler', 'Right Arm', 'Left Arm Spin', '', 1000000, 0, 0, 1000000),
(30, 'Dhiraj Gulve', 'https://drive.google.com/open?id=0B-pyuqUttg78bjBNZEJvVVdWanc', 'TE', 'MECH', 'H', 'dhirajgulve@gmail.com', '9867503487', 'Bowler', 'Right Arm', 'Right Arm Pace', 'Sies team B ', 1000000, 0, 0, 1000000),
(31, 'Gokulnath Nair', 'https://drive.google.com/open?id=0B5dOXfyzE9llSlM0M05XM1QyVzQ', 'BE', 'EXTC', 'B', 'nair.gokulnath@siesgst.ac.in', '9819500327', 'Batsman', 'Right Arm', 'Right Arm Pace', 'runner up in cage cricket in TML\'17', 1000000, 0, 0, 1000000),
(32, 'Harish Sundaram', 'https://drive.google.com/open?id=0B_sqZbWK23bXblZZN3ZvZXR2T00', 'BE', 'CE', 'BE CE C', 'harikrishnan.sundaram@siesgst.ac.in', '9833255271', 'Wicket-Keeper', 'Right Arm', 'Right Arm Pace', 'Played Inter school under 16 and under 18', 1000000, 0, 0, 1000000),
(33, 'Jayanth Iyer', 'https://drive.google.com/open?id=0Bzra999miYV3WlZNdXJGWU9lTnc', 'TE', 'MECH', 'H', 'srijayanth.iyer15@siesgst.ac.in', '9619621233', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(34, 'Karthik Ashokkumar', 'https://drive.google.com/open?id=0BzVjsDEXROIeQThDUUJtMEZuLWs', 'BE', 'CE', 'D', 'prabhukarthik156@gmail.com', '9004704916', 'Batsman', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(35, 'Karthik Subburaj', 'https://drive.google.com/open?id=0By9xROttpDftdllnYTNmY2JPTkU', 'BE', 'EXTC', 'A', 'karthik.subburaj@gmail.com', '8286245579', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(36, 'Karthikeyan ', 'https://drive.google.com/open?id=0B7GWzo94YyXBWWFKZC1YTFBhU3M', 'BE', 'EXTC', 'A', 'karthik29n@gmail.com ', '8879079739', 'Bowler', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(37, 'Kartik.A', 'https://drive.google.com/open?id=0B74HTCpHr1b6U0dGaWhta1dOSWc', 'BE', 'EXTC', 'A', 'kartik.kartik@siesgst.ac.in', '9769679891', 'Bowler', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(38, 'Kiran kumar', 'https://drive.google.com/open?id=0BypdS0VWbPH8MFlWeHhETGZ5UlU', 'BE', 'CE', 'BE CE D', 'Udayar.kiran@siesgst.ac.in', '8652432056', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(39, 'Kulkarni Aishwary Rajendra', 'https://drive.google.com/open?id=0B-51uoHMc_oGM0RXLTNxUzJRMnc', 'TE', 'MECH', 'H', 'aishwary.kulkarni15@siesgst.ac.in', '8094932312', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Played cricket in Nashik cricket club and represented a team. ', 1000000, 0, 0, 1000000),
(40, 'Kunalsinh Jadeja', 'https://drive.google.com/open?id=0BwmJEZgU5gKBT2FVTGhtaThUSTA', 'BE', 'EXTC', 'A', 'jadeja.kunalsinh@siesgst.ac.in', '9757125925', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(41, 'Mahesh Yadav', 'https://drive.google.com/open?id=0ByiKKr1sjBHiN0tBREsxQjlKYjQ', 'BE', 'IT', 'E', 'Mahesh.yadav215@siesgst.ac.in', '9004992012', 'Bowler', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(42, 'Manish asodekar', 'https://drive.google.com/open?id=0BwddlSaN3LC7d0tTTThhTTZVZkU', 'BE', 'IT', 'E', 'asodekarmanish18@gmail.com', '(940) 384-4440', 'Batsman', 'Right Arm', '', 'NA', 1000000, 0, 0, 1000000),
(43, 'Murugesan pillai', 'https://drive.google.com/open?id=0B1i1XsyOB_lzcUVzSW53Wmkya3M', 'TE', 'MECH', 'H', 'Murugesanpillai15@siesgst.ac.in', '9867503468', 'All-Rounder', 'Right Arm', 'Right Arm Spin', 'Part of intra school winning team in 8th and 9th std', 1000000, 0, 0, 1000000),
(44, 'Muthukumar', 'https://drive.google.com/open?id=0B2GrZH2Olhy3Tmhfblotcnp0V1U', 'BE', 'EXTC', 'A', 'muthukumar.nagarajan@siesgst.ac.in', '9969791562', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Space not enough', 1000000, 0, 0, 1000000),
(45, 'Nadar Adithya ', 'https://drive.google.com/open?id=0B3KbtxeuaN6CWm9JTk1uZ0Zqenc', 'BE', 'MECH', 'H', 'nadar.adithya @siesgst.ac.in', '8689941222', 'Bowler', 'Right Arm', 'Right Arm Pace', 'Played at MCA tournament', 1000000, 0, 0, 1000000),
(46, 'NILESH MISHRA', 'https://drive.google.com/open?id=0B0PZo7-WkaTaLThmNEFWc0toT1U', 'BE', 'IT', 'E', 'mishra.nilesh@siesgst.ac.in', '9930840653', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(47, 'Niraj kori', 'https://drive.google.com/open?id=0B3yucEsPx1qAR3FQNUxuS0RmZlk', 'TE', 'PPT', 'F', 'Niraj.kori15@siesgst.ac.in', '8898335831', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(48, 'Niranjan', 'https://drive.google.com/open?id=0B-9BCi8Ng86DR1FkRW5DTW9rd0E', 'TE', 'IT', 'E', 'tembeniranjan@gmail.com', '9762451999', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(49, 'Omkar pawar', 'https://drive.google.com/open?id=0B2tpawr5HvMdaHlvbHhFcFAyQUU', 'BE', 'PPT', 'F', 'omkar.pawar215@siesgst.ac.in', '9768448613', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(50, 'parthipan nadar', 'https://drive.google.com/open?id=0ByBkJcVwvF1eeEZMcmE5V1pSS28', 'BE', 'EXTC', 'A', 'nadar.parthipan@siesgst.ac.in', '7710896968', 'Bowler', 'Right Arm', 'Right Arm Pace', 'Semifinal', 1000000, 0, 0, 1000000),
(51, 'Peruvelil Cyril Joy', 'https://drive.google.com/open?id=0B_N_iMsJgdwBVmtXNGhhV21OX1U', 'BE', 'EXTC', 'B', 'cyriljoy1@gmail.com', '8291098285', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(52, 'Prajwal Shetty', 'https://drive.google.com/open?id=0Bz85rFeNjM7RcFhQODdnbXlCblU', 'TE', 'EXTC', 'B', 'Prajwalshetty146@gmail.com', '9892005529', 'Bowler', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(53, 'Pranav Choudhary', 'https://drive.google.com/open?id=0BxvdQen1zlO5d0JCai1SVUpmR0U', 'BE', 'EXTC', 'A', 'pranavpc9@gmail.com', '9892469169', 'Bowler', 'Right Arm', 'Right Arm Pace', 'Box runner ups tml 2016\nSemi finalists tml 2017\n', 1000000, 0, 0, 1000000),
(54, 'prathamesh gaikwad', 'https://drive.google.com/open?id=0B8NRi627IoKfWW1NQXpHblJDblE', 'BE', 'EXTC', 'A', 'prathamesh1038@gmail.com', '8898915245', 'Batsman', 'Right Arm', 'Right Arm Pace', 'Played for MCA under 14 and 16 \nAnd for ST Joseph', 1000000, 0, 0, 1000000),
(55, 'Prathamesh Sarode', 'https://drive.google.com/open?id=0B_KJrQetBGlneHJwQ004dEc1QTg', 'TE', 'EXTC', 'A', 'prathamesh.sarode15@gmail.com', '7710896267', 'All-Rounder', 'Right Arm', 'Right Arm Spin', '', 1000000, 0, 0, 1000000),
(56, 'Pratik Amin', 'https://drive.google.com/open?id=0BwmxpeO8cN0tVmlsQ25vaGV3M1E', 'TE', 'CE', 'D', 'amin.pratik216@siesgst.ac.in', '9769377319', 'Batsman', 'Right Arm', 'Right Arm Spin', 'Winners Zonals Trophy for K J Somaiya Certificate of Winning the Zonals Trophy!', 1000000, 0, 0, 1000000),
(57, 'Rahul Ghorpade', 'https://drive.google.com/open?id=0B3OeBjLkP_QCMXg2YUNnTmNzcFU', 'TE', 'CE', 'c', 'rahul.ghorpade15@siesgst.ac.in', '9833635454', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Was a part of cricket team of se comps during tml 2017', 1000000, 0, 0, 1000000),
(58, 'Rahul pillai', 'https://drive.google.com/open?id=0B2M_gU6nQRaySGV0SjhyY2dVSlE', 'BE', 'EXTC', 'B', 'Pillai.rahul@siesgst.ac.in', '9769042426', 'All-Rounder', 'Right Arm', 'Right Arm Spin', 'Played for school/junior college team', 1000000, 0, 0, 1000000),
(59, 'Ramesh kumar ', 'https://drive.google.com/open?id=0B_N29O7JXMp2aWNwMmt2Y094YjQ', 'TE', 'PPT', 'F', 'Rameshkumar.rameshkumar15@siesgst.ac.in ', '8425908771', 'Batsman', 'Left Arm', 'Right Arm Pace', 'NA', 1000000, 0, 0, 1000000),
(60, 'Ratheesh pillai', 'https://drive.google.com/open?id=0B3C1B_GGnlNiMFk4dWRIbzZSbUE', 'BE', 'CE', 'CE-D', 'ratheesh.pillai2396@gmail.com', '9769512014', 'Bowler', 'Right Arm', 'Right Arm Pace', 'Played as a bowler in SIES cricket team', 1000000, 0, 0, 1000000),
(61, 'Reuben Charles', 'https://drive.google.com/open?id=0BzCNUkb6SNf5dmhNWng0TndtRms', 'BE', 'MECH', 'BE Mechanical (H1)', 'satyanathan.reuben@siesgst.ac.in', '9619058874', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(62, 'Rishi Thakur', 'https://drive.google.com/open?id=0B__EVfqFtLozOC1jUFJHRzV4LVk', 'BE', 'CE', 'D', 'thakur.rishi@siesgst.ac.in', '8976426161', 'Bowler', 'Left Arm', 'Right Arm Pace', 'Played for Bala Shetty\'s team (Thane) (best summer academy bowler) , played for SIES jr college, sion ', 1000000, 0, 0, 1000000),
(63, 'Ritesh Wani', 'https://drive.google.com/open?id=0B3jvCSHUTptqN1BkZTFKNVpQSFE', 'BE', 'MECH', 'H', 'wani.ritesh@siesgst.ac.in', '9773524808', 'Bowler', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(64, 'Rohan  Rajpal Chandanshive.', 'https://drive.google.com/open?id=0ByF6p1VidQcnd3VRRWlLQU1XX0U', 'BE', 'EXTC', 'A', 'rohanchandanshive26297@gmail.com', '7738913326', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '2015- quarter finalist extc sqaud.\n2016-semi finalist extc squad.', 1000000, 0, 0, 1000000),
(65, 'Rohan Pitkar', 'https://drive.google.com/open?id=0B-ld0BbxarzQdDMweERLZnM4QUk', 'BE', 'CE', 'CE-D', 'rohanpitkar10@gmail.com', '9172808016', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(66, 'Rohit Chiliveri', 'https://drive.google.com/open?id=0B3PGtcdx3SToOHJidEZLalhUb2c', 'BE', 'EXTC', 'A', 'Chiliveri.rohit@siesgst.ac.in', '9987410771', 'Batsman', 'Right Arm', 'Right Arm Pace', 'Na', 1000000, 0, 0, 1000000),
(67, 'Rohit Desai', 'https://drive.google.com/open?id=0B87UcMNNQl5XVGxrXy0zeWt4czg', 'TE', 'EXTC', 'B', 'rohitds947@gmail.com', '7710907419', 'Wicket-Keeper', 'Right Arm', '', 'Have Played For My School And College Teams As A Opener And Finisher Respectively.', 1000000, 0, 0, 1000000),
(68, 'Sagar Salian', 'https://drive.google.com/open?id=0BzqEIeLZuu9UcmpraVo2Y203Nms', 'BE', 'EXTC', 'A', 'saliansagar571@gmail.com', '9819597636', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(69, 'Sagar singh', 'https://drive.google.com/open?id=0B3hZzCcJxIqUTUROeV8wWmZQNDg', 'TE', 'EXTC', 'A', 'sagar.singh15@siesgst.ac.in', '7738446502', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'KVS regionals sports meet(2012-2013-2014)', 1000000, 0, 0, 1000000),
(70, 'Sakthi ', 'https://drive.google.com/open?id=0B8qK7mlXtpmKZ1Y4RjNJMUV5RTA', 'BE', 'EXTC', 'A', 'yadav.sakthivel@siesgst.ac.in', '9029290535', 'Batsman', 'Right Arm', 'Right Arm Spin', 'Played for EXTC Department. Played interschool competitions. ', 1000000, 0, 0, 1000000),
(71, 'Sangam Dhiman', 'https://drive.google.com/open?id=0B2nQ8ULGkFtMeUpHbVU5UDV4RXc', 'TE', 'EXTC', 'A', 'sangam.dhiman15@siesgst.ac.in ', '9869720913', 'All-Rounder', 'Left Arm', 'Left Arm Pace', 'None', 1000000, 0, 0, 1000000),
(72, 'Sanket Bailmare', 'https://drive.google.com/open?id=0B8T39lBtIVZ-R2NqbEtjZmNnTms', 'TE', 'CE', 'C', 'sanket.bailmare15@siesgst.ac.in', '8600031585', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Had been winner of district level cricket competition U16 ', 1000000, 0, 0, 1000000),
(73, 'Sanket Sule', 'https://drive.google.com/open?id=0B-zzKi892etYVllVUjNkVkhzS0U', 'BE', 'CE', 'D', 'sule.sanket@siesgst.ac.in', '8451849345', 'Bowler', 'Right Arm', 'Left Arm Pace', '', 1000000, 0, 0, 1000000),
(74, 'Satish yadav', 'https://drive.google.com/open?id=0B307CDHFAFkkNEdBQUxEUkJzalU', 'TE', 'EXTC', 'A', 'satish.yadav15@siesgst.ac.in', '(810) 875-3298', 'Batsman', 'Right Arm', 'Right Arm Spin', '', 1000000, 0, 0, 1000000),
(75, 'Shailendra Jaiswal', 'https://drive.google.com/open?id=0B590hyyHiKsTTWh5TlNqSHY0aDg', 'TE', 'EXTC', 'B', 'jayswal01@gmail.com', '8433633533', 'All-Rounder', 'Right Arm', 'Right Arm Spin', '', 1000000, 0, 0, 1000000),
(76, 'Shailesh murali', 'https://drive.google.com/open?id=0B1Zn8MEWFgpZc2JmcFV6ODFtb1E', 'BE', 'CE', 'C', ' murali.shailesh@siesgst.ac.in', '8369542704', 'Batsman', 'Right Arm', '', 'Played inter school\nPlayed Intra college', 1000000, 0, 0, 1000000),
(77, 'Sharan Iyer', 'https://drive.google.com/open?id=0B2Z00KSHz0hAampMLWgtTVJKV2s', 'TE', 'IT', 'E', 'sharan.iyer15@siesgst.ac.in', '9967418141', 'Bowler', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(78, 'shivshankar', 'https://drive.google.com/open?id=0BzwBj_fwO1HWM09LRkNVeXN6LW8', 'TE', 'CE', 'c', 'ravi.shivshankar15@siesgst.ac.in', '9819062690', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(79, 'Shrinidhi Siddhanti ', 'https://drive.google.com/open?id=0B47vWxswICJVbE5SWk9XMmdjVmc', 'TE', 'EXTC', 'A', 'Siddhanti.shrinidhi15@siesgst.ac.in ', '8691955607', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(80, 'ShubhamPatil', 'https://drive.google.com/open?id=0Bze3gMOhOemaRGNyQ0MyMzd2VXc', 'BE', 'CE', 'D', 'imsp2596@gmail.com', '7208426363', 'Wicket-Keeper', 'Right Arm', '', 'Captain of cricket team in Diploma', 1000000, 0, 0, 1000000),
(81, 'Siddhesh Chavan ', 'https://drive.google.com/open?id=0Bz30AGUCoH_meko0V1dfWmltVVU', 'TE', 'MECH', 'H', 'Siddhesh.chavan15@siesgst.ac.in ', '9004917056', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(82, 'Siddhesh Sawant ', 'https://drive.google.com/open?id=0B3J9qMHqxtTTc1cxOUpUREhYdDQ', 'BE', 'IT', 'E', 'sawant.siddhesh@siesgst.ac.in ', '9869651933', 'Batsman', 'Right Arm', 'Right Arm Spin', 'No', 1000000, 0, 0, 1000000),
(83, 'Siva chandran', 'https://drive.google.com/open?id=0B1mOYCdrOMwDWVZoYTVDQzlzVjQ', 'BE', 'CE', 'D', 'sivachandran417@gmail.com', '9702683474', 'Batsman', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(84, 'Somnath Murugan', 'https://drive.google.com/open?id=0B9ixglIVmLNZbWtBWl9ZTjJ0RVk', 'TE', 'MECH', 'H', 'Somnath.murugan15@siesgst.ac.in', '9768681377', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(85, 'Srinivas Kini', 'https://drive.google.com/open?id=0Bze3gMOhOemaa0dTaDZTUFVNdkU', 'BE', 'CE', 'D', 'kini.srinivas@siesgst.ac.in', '9820774218', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(86, 'Subash thevar', 'https://drive.google.com/open?id=0BwNgAiY9_u0DVzhFWWtmdF9KT3c', 'TE', 'CE', 'D', 'subashthevar.st@gmail.com', '8451964914', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Won in school ', 1000000, 0, 0, 1000000),
(87, 'Sudhakar Rao', 'https://drive.google.com/open?id=0B4DEx8SOp_ZJRndWUEpTX3U2c2s', 'BE', 'IT', 'E', 'sudhakar.rao53@gmail.com', '9167710071', 'Bowler', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(88, 'suraj hedla', 'https://drive.google.com/open?id=0B4cmnoE0pFYtckJ0Ui1VQ3ZWTDQ', 'BE', 'IT', '-', 'hedlasuraj2@gmail.com', '8898438764', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '2 time champion in thane tournament', 1000000, 0, 0, 1000000),
(89, 'Suresh Konar', 'https://drive.google.com/open?id=0B1R2Oos78SIhdnVIZXdzblhEOHM', 'BE', 'MECH', 'H', 'konarsuresh1@gmail.com', '9833642336', 'Wicket-Keeper', 'Right Arm', 'Right Arm Spin', '', 1000000, 0, 0, 1000000),
(90, 'Surya ramiah', 'https://drive.google.com/open?id=0B9LY9_AUn-7JVkg4bGZ2Y3lEMUU', 'BE', 'IT', 'E', 'ramiah.surya@siesgst.ac.in', '9757024944', 'Bowler', 'Right Arm', 'Right Arm Pace', 'Played season cricket at school level ', 1000000, 0, 0, 1000000),
(91, 'swapnil patil ', 'https://drive.google.com/open?id=0B4UK7hpGopbSOXVVVThCRHIzLW8', 'BE', 'IT', 'E', 'swap8879@mail.com', '88794004294', 'Wicket-Keeper', 'Right Arm', 'Right Arm Spin', 'played as a batsmen for under 16 school cricket team ', 1000000, 0, 0, 1000000),
(92, 'Tamil Arasan', 'https://drive.google.com/open?id=0B45K89SVxeFQN3I5QjJZY3dBMlk', 'BE', 'EXTC', 'B', 'tamilarasan1411@gmail.com', '8898115155', 'Batsman', 'Right Arm', 'Right Arm Spin', 'SIES B TEAM ', 1000000, 0, 0, 1000000),
(93, 'Tejas Mahesh Paradkar ', 'https://drive.google.com/open?id=0BwerGWTvOoy4NjZlV3d6bmNvcUE', 'BE', 'EXTC', 'B', 'tejasparadkar@gmail.com ', '9819497649', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Represented Navi Mumbai Sports Association.\nPlayed for Sacred Heart High School in DSO and the NMSA Tournaments.\nCaptained the Industrial Electronics Branch in Agnel Polytechnic.\nPart of the SIES B Squad.\n', 1000000, 0, 0, 1000000),
(94, 'Tejraj pawar', 'https://drive.google.com/open?id=0B0CcBxsVULIhWWhmMXR1SDhtN0E', 'BE', 'CE', 'D', 'pawar.tejraj@siesgst.ac.in', '8655912435', 'Wicket-Keeper', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(95, 'Vaibhav Shedge', 'https://drive.google.com/open?id=0B4yOe-fFMGu_MmxlMnBfZExyMzQ', 'BE', 'CE', 'D', 'Shedge.vaibhav@siesgst.ac.in', '8108847664', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(96, 'Varun iyer', 'https://drive.google.com/open?id=0ByNTEk-LXc2QRXA5Tm8zNWhRTnc', 'BE', 'EXTC', 'A', 'Varuniyer4@gmail.com', '9869797455', 'Batsman', 'Right Arm', '', 'No past achievements ', 1000000, 0, 0, 1000000),
(97, 'Vasant kumar', 'https://drive.google.com/open?id=0B3KinwCcspSWZVBuNVdwTGZoc28', 'TE', 'EXTC', 'B', 'Vasu.st10@gmail.com ', '9768123890', 'Batsman', 'Right Arm', '', '', 1000000, 0, 0, 1000000),
(98, 'Vignesh Subramaniam', 'https://drive.google.com/open?id=0BxbRoTokpuJHcUpvZ3h2QjJkYkU', 'TE', 'MECH', 'H', 'vignesh.subramaniam15@siesgst.ac.in', '8425800700', 'Wicket-Keeper', 'Right Arm', '', 'SIES CRICKET TEAM B', 1000000, 0, 0, 1000000),
(99, 'Vikas Vishwakarma', 'https://drive.google.com/open?id=0B_zB3lxIPQ68ellYUkdQWUg5eXc', 'TE', 'EXTC', 'A', 'Vikas.vishwakarma15@siesgst.ac.in', '9892961840', 'All-Rounder', 'Right Arm', 'Right Arm Pace', '', 1000000, 0, 0, 1000000),
(100, 'Yash bhasin', 'https://drive.google.com/open?id=0BwuMMQI8BJtrSzBtNVU4aW1zWTQ', 'TE', 'PPT', 'Te ppt ', 'Yash86000bhasin@gmail.com', '8600323789', 'All-Rounder', 'Right Arm', 'Right Arm Pace', 'Tml and interschool interclg matches', 1000000, 0, 0, 1000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auction`
--
ALTER TABLE `auction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
