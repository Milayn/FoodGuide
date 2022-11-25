-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 07:48 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `psw` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`idadmin`, `username`, `email`, `psw`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Testing123', 'testing123@gmail.com', '7f2ababa423061c509f4923dd04b6cf1');

-- --------------------------------------------------------

--
-- Table structure for table `menupantangan`
--

CREATE TABLE `menupantangan` (
  `idpantangan` int(11) NOT NULL,
  `idpenyakit` int(11) NOT NULL,
  `namapantangan` varchar(200) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menupantangan`
--

INSERT INTO `menupantangan` (`idpantangan`, `idpenyakit`, `namapantangan`, `keterangan`) VALUES
(1, 1, 'Makanan Manis (gula pasir, gula merah, madu, sirup agave, sirup jagung, sirup fruktor)', 'Makanan manis biasanya juga tinggi kalori sehingga bisa menyebabkan kenaikan berat badan. Hal ini tentunya perlu dihindari oleh diabetesi yang harus menurunkan bobot tubuh untuk mengatasi gejala diabetes.'),
(2, 1, 'Makanan kaya lemak trans (margarin, selai, dan makanan yang diawetkan)', 'Meski tidak benar-benar langsung menaikkan gula darah, lemak trans dapat memicu resistensi insulin dan sindrom metabolik yang merupakan penyebab diabetes.'),
(3, 1, 'Makanan Ringan dalam kemasan', 'Makanan ringan ini biasanya dibuat dengan tepung olahan dan memberikan sedikit nutrisi, meski memiliki banyak karbohidrat yang cepat dicerna yang dapat meningkatkan gula darah dengan cepat.'),
(4, 1, 'Buah Kering', 'Besar kadar airnya, sehingga yang tersisa adalah kandungan gula alaminya. Nah, selama proses pengeringannya ini, sebagian besar kandungan gizi dan vitamin serta mineral asli buah bisa hilang.'),
(5, 1, 'Minuman Manis (bersoda, sirup, teh, dan kopi kemasan siap minum)', 'Jenis minuman yang harus dihindari oleh diabetesi adalah segala sesuatu yang manis atau ditambahkan gula, baik buatan maupun alami.'),
(6, 1, 'Kopi dengan tambahan lain', 'Rasa kopi memang pahit, tapi bahan-bahan penambah rasanya seperti karamel, sirup, krimer, susu atau whipped cream memiliki kadar gula tinggi. Tidak hanya itu, kopi yang manis juga termasuk minuman tinggi kalori. Konsumsi minuman ini bisa memengaruhi pola makan pasien diabetes.'),
(7, 1, 'Saus tomat atau saus salad', 'Saus dressing, seperti mayones, tidak hanya mengandung gula tambahan, tapi juga tinggi garam dan lemak. Pada saus tomat kemasan juga terdapat kandungan gula yang tinggi, dua sendok saus tomat setara dengan 16 gram gula.'),
(8, 1, 'Roti putih, nasi putih, pasta dan tepung olahan', 'Roti putih, nasi, dan pasta adalah makanan olahan berkarbohidrat tinggi. Makan roti dan makanan tepung olahan lainnya telah terbukti secara signifikan dapat meningkatkan kadar gula darah pada penderita diabetes tipe 1 maupun penderita diabetes tipe 2.'),
(9, 2, 'Makanan mengandung garam tinggi', 'Hal itu karena kandungan natrium di dalamnya dapat menyebabkan retensi cairan, sehingga meningkatkan risiko sesak napas pada penderita penyakit paru.'),
(10, 2, 'Produk susu', 'Susu cenderung dapat meningkatkan produksi lendir di saluran pernapasan yang bisa memperburuk beberapa gejala akibat sakit paru-paru'),
(11, 2, 'Daging olahan yang diawetkan', 'Daging olahan yang diawetkan berpotensi tinggi memperburuk kondisi paru-paru. Pasalnya, asupan tersebut memiliki kandungan nitrat di dalamnya.'),
(12, 2, 'Gorengan', 'Makanan yang digoreng dengan banyak minyak dapat meningkatkan risiko perut kembung. Apabila terjadi, kondisi tersebut dapat membuat diafragma mengalami tekanan yang lebih kuat.'),
(13, 2, 'Minuman manis dan bersoda', 'Kandungan gula yang tinggi pada minuman bersoda juga dapat meningkatkan risiko peradangan dan menyebabkan penambahan berat badan. Kondisi-kondisi tersebut dapat memperburuk gejala penyakit paru-paru, seperti PPOK.'),
(14, 3, 'Mentega, margarin', 'Bumbu mentega buatan sering digunakan sebagai salah satu bahan pembuat makanan. Namun, sebuah studi menyebutkan, paparan kronis bahan bumbu mentega buatan, yang dikenal sebagai diacetyl, dapat memperburuk efek berbahaya dari suatu protein dalam otak yang terkait dengan penyakit Alzheimer.'),
(15, 3, 'Permen', 'Permen ternyata juga dapat memperburuk kondisi kesehatan bagi penderita alzheimer karena mengandung sejumlah besar lemak jenuh dan lemak trans'),
(16, 4, 'Gorengan', 'Terlalu banyak mengonsumsi makanan berminyak seperti digoreng bisa memicu gangguan aliran darah hingga obesitas. Sudah ada banyak hasil studi gizi yang menyebut bahwa makanan yang digoreng serta berminyak, membuka peluang tinggi risiko terkena penyakit jantung.'),
(17, 4, 'Daging merah', 'Jenis daging merah ini bervariasi, seperti daging sapi, kambing, domba, atau babi, yang biasanya tinggi lemak.Makanan tinggi lemak kerap dikaitkan mengandung lemak jenuh yang dapat meningkatkan kolesterol jahat (LDL). Menurut penelitian, mengonsumsi terlalu banyak daging merah bisa meningkatkan risiko jantung koroner.'),
(18, 4, 'Pasta, nasi, dan roti putih', 'Makanan yang dihindari bagi penderita penyakit jantung yaitu nasi putih, roti putih, pasta, mi instan karena tidak memiliki kandungan serat, mineral dan nutrisi baik bagi jantung.'),
(19, 4, 'Makanan cepat saji', 'Ketika mengonsumsi makanan cepat saji, kemungkinan besar karbohidrat makanan itu menghasilkan gula, lalu masuk ke aliran darah dan mengganggu kerja jantung semakin buruk.'),
(20, 4, 'Makanan olahan', 'Makanan olahan biasanya melalui proses pengawetan garam, nitrat, yang bisa memperberat kerja jantung. Terlebih kolesterolnya tinggi yang khawatir memperparah penderita jantung.'),
(21, 4, 'Alkohol', 'Jenis makanan yang mengandung alkohol ini berpotensi melemahkan otot jantung, sehingga sistemnya tidak dapat memompa aliran darah secara efektif.'),
(22, 4, 'Saus mayones dan butter', 'Saus mayones, butter, margarin, mengandung lemak trans yang bisa memperburuk kesehatan penyakit jantung. Lemak trans tinggi dalam butter, saus dressing dan sebagainya, termasuk jenis makanan yang sangat jelas bisa meningkatkan kolesterol jahat.'),
(23, 5, 'Konsumsi garam terlalu banyak', 'Organ ginjal berfungsi mengeluarkan cairan dan limbah berlebih melalui urine agar dapat menyaring darah dengan baik. Pekerjaan tersebut ternyata membutuhkan keseimbangan natrium dan kalium untuk menarik air melintasi dinding dari aliran darah ke saluran pengumpul ginjal.'),
(24, 5, 'Daging olahan', 'Daging olahan dibuat dengan cara mengeringkan, mengasinkan, mengawetkan, atau mengasapi daging untuk meningkatkan rasa, tekstur, dan umur simpannya. Makanan tinggi natrium tidak ideal untuk penderita penyakit ginjal dan diabetes karena kelebihan natrium dapat membebani ginjal secara signifikan.'),
(25, 5, 'Soda', 'Soda tidak ideal untuk penderita penyakit ginjal dan diabetes. Soda mengandung fosfor, yang digunakan untuk mencegah perubahan warna, memperpanjang umur simpan, dan menambah rasa.'),
(26, 5, 'Buah-buahan berkalium tinggi', 'Secara umum, buah-buahan kaya akan vitamin dan mineral. Penderita gagal ginjal tidak dapat mengeluarkan kalium secara benar sehingga menyebabkan peningkatan kalium dalam darah.'),
(27, 5, 'Kacang-kacangan', 'Kacang-kacangan memang termasuk makanan yang sehat. Namun, makanan ini tidak cocok bagi penderita gagal ginjal dan diabetes karena kandungan fosfornya yang sangat tinggi.'),
(28, 5, 'Makanan dalam kemasan dan makanan instan', 'Makanan kemasan, makanan instan, dan makanan cepat saji cenderung tinggi natrium. Oleh karena itu, makanan ini harus dihindari oleh penderita gagal ginjal'),
(29, 5, 'Sayuran berwarna hijau (bayam, lobak, bit hijau)', 'Bayam, bit hijau, lobak, dan sayuran berwarna hijau lainnya juga tinggi asam oksalat. Senyawa ini merupakan senyawa organik yang dapat membentuk batu ginjal pada orang yang rentan.'),
(30, 5, 'Kentang dan Ubi Jalar', 'Kentang dan ubi jalar mengandung kalium tinggi. Kedua makanan ini pun harus dihindari oleh penderita gagal ginjal,terutama bila kondisinya sudah dalam tahap lanjut.'),
(31, 5, 'Buah kering', 'Buah kering tidak ideal untuk penderita gagal ginjal dan diabetes karena tinggi gula dan mineral seperti kalium.'),
(32, 6, 'Sayuran hijau(bayam, kale, lobak hijau, sawi, dan selada)', 'Mengandung kalium, magnesium, dan serat sehingga cocok sebagai makanan untuk penderita hipertensi.'),
(33, 6, 'Yogurt', 'Yogurt merupakan salah satu produk susu, karena itu jenis makanan ini mengandung kalsium tinggi yang cocok untuk penderita hipertensi'),
(34, 6, 'Susu', 'Susu skim juga mengandung kalsium tinggi dan rendah lemak yang dapat Anda jadikan sebagai penurun tekanan darah.'),
(35, 6, 'Ikan Salmon', 'Ikan salmon merupakan ikan yang kaya akan asam lemak omega-3. Kandungan lemak sehat ini diduga dapat menurunkan tekanan darah.'),
(36, 6, 'Wortel', 'Kandungan senyawa fenolik dalam wortel secara signifikan dapat menurunkan tekanan darah tinggi.'),
(37, 6, 'Buah Bit', 'Buah bit bersifat menurunkan tekanan darah karena mengandung nitrat.'),
(38, 6, 'Buah Citrus(jeruk, jeruk bali, lemon)', 'Buah citrus sarat akan vitamin, mineral, dan senyawa bioaktif yang memiliki efek menurunkan tekanan darah.'),
(39, 6, 'Bawang putih', 'Bawang putih termasuk makanan penurun darah tinggi karena dapat meningkatkan kadar oksida nitrat dalam tubuh.'),
(40, 6, 'Oatmeal', 'Oatmeal adalah makanan yang mengandung serat tinggi, rendah lemak, dan rendah sodium. Nutrisi ini baik untuk membantu Anda menurunkan tekanan darah.'),
(41, 6, 'Minyak Zaitun', 'Minyak zaitun mengandung polifenol, yang merupakan senyawa peradangan yang dapat membantu mengurangi tekanan darah.'),
(42, 6, 'Kuaci, Biji Labu', 'Biji bunga matahari dan biji labu terbukti mengandung kalium, magnesium, dan mineral lainnya yang dapat mengurangi tekanan darah.'),
(43, 6, 'Coklat Hitam', 'Cokelat hitam mengandung lebih dari 60 persen padatan kakao dan memiliki lebih sedikit gula daripada cokelat biasa.'),
(44, 6, 'Buah Beri(blueberry, strawberry)', 'Buah beri, terutama blueberry, kaya akan senyawa alami yang disebut flavonoid yang dapat menurunkan tekanan darah.'),
(45, 6, 'Pisang', 'Pisang adalah buah yang mengandung potasium tinggi. Nutrisi inilah yang membuat pisang dapat menjadi makanan penurun darah tinggi.'),
(46, 6, 'Buah Delima', 'Sebuah studi menyimpulkan bahwa minum segelas jus delima sekali sehari selama empat minggu dapat membantu menurunkan tekanan darah dalam jangka pendek.'),
(47, 6, 'Kiwi', 'Kiwi  mengandung vitamin C tinggi, yang secara signifikan dapat berkontribusi pada pengaturan tekanan darah dalam tubuh.'),
(48, 6, 'Semangka', 'Semangka mengandung asam amino yang disebut citrulline, yang dapat membantu mengelola tekanan darah tinggi.'),
(49, 7, 'Kacang-kacangan', 'Kacang-kacangan dapat meningkatkan tekanan darah. Kacang-kacangan biasa dicerna secara perlahan, sehingga membuat tekanan darah naik.'),
(50, 7, 'Hati Ayam', 'Hati ayam kaya akan kandungan asam folat, sehingga bagus untuk penderita darah rendah.'),
(51, 7, 'Daging merah', 'Daging merah kaya akan vitamin B12 yang dapat menambah tekanan darah'),
(52, 7, 'Telur', 'Telur kaya akan vitamin B12.'),
(53, 7, 'Minyak Zaitun', 'Zaitun kaya akan vitamin E, zat besi, dan zinc.'),
(54, 7, 'Makanan kaya akan vitamin B12', 'Jenis makanan untuk darah rendah yang mengandung banyak vitamin B12 adalah daging sapi, telur, sereal, produk yang terbuat dari susu, dan daging merah.'),
(55, 7, 'Makanan tinggi folat', 'Makanan tinggi folat, seperti sayuran berwarna hijau, misalnya bayam dan brokoli, kacang-kacangan, biji-bijian, serta buah-buahan, misalnya pepaya, pisang, dan alpukat'),
(56, 7, 'Makanan yang asin', 'Makanan yang asin, seperti makanan kalengan, ikan asin, dan hidangan dengan tambahan garam, yang dapat membantu memenuhi asupan garam harian untuk orang dengan darah rendah, yaitu 4,5–5 gram per hari'),
(57, 7, 'Makanan dan minuman yang mengandung kafein', 'Kandungan kafein dapat meningkatkan tekanan darah dan detak jantung untuk sementara waktu. Anda dapat menemukannya pada cokelat, teh, dan kopi.'),
(58, 7, 'Makanan yang mengandung banyak air', 'Beberapa jenis makanan yang mengandung banyak air, di antaranya buah-buahan (semangka, stroberi, jeruk, tomat, paprika, mentimun, anggur), selada, seledri, dan yogurt tanpa rasa.'),
(59, 7, 'Jus Buah', 'Meminum jus buah segar juga baik untuk kesehatan karena mengandung banyak vitamin, termasuk vitamin C, yang diperlukan oleh tubuh.	)	,\r\n(	60	,	8	,	kentang tumbuk	,	Kentang mengandung karbohidrat dan protein yang bernutrisi sehingga mempercepat proses penyembuhan.'),
(61, 8, 'Puding', 'Kandungan glukosa dalam puding juga bisa menjadi sumber energi bagi tubuh.'),
(62, 8, 'Bubur', 'Selain mempercepat proses penyembuhan, tekstur bubur yang lunak akan membantu usus lebih mudah mencerna makanan ketika kondisi tubuh Anda sedang tidak sehat.'),
(63, 8, 'Telur', 'Kandungan asam lemak amino esensial, zat besi, serta kalsium yang ada pada telur juga bermanfaat guna mempercepat proses penyembuhan'),
(64, 8, 'Pisang', 'Pisang mengandung kalori dan karbohidrat yang berfungsi sebagai penghasil energi tubuh.'),
(65, 8, 'Bayam', 'Zat penting dalam bayam seperti asam folat, vitamin C, dan zat besi mampu membantu mempercepat penyembuhan tipes.'),
(66, 8, 'Alpukat', 'Mengandung antioksidan, serat, mineral, lemak, dan vitamin, tak jarang buah ini sering digunakan sebagai anjuran makanan untuk penderita tipes agar cepat sembuh.'),
(67, 8, 'Dada ayam', 'Daging ayam bagian dada dikenal rendah lemak dan memiliki serat halus, sehingga dapat dijadikan sebagai makanan untuk penderita tipes.'),
(68, 8, 'Air Kelapa', 'Air kelapa cocok menjadi anjuran makanan untuk penderita tipes, sebab mengandung elektrolit dan gula yang dibutuhkan ketika badan terasa lemas akibat sakit.'),
(69, 8, 'Buah dengan kandungan air tinggi', 'Mengkonsumsi berbagai buah-buahan yang memiliki kandungan air tinggi seperti semangka, anggur, maupun tomat. Buah tersebut dapat menjadi menu makanan untuk penderita tipes agar cepat sembuh.'),
(70, 8, 'Ikan', 'Kandungan protein hewani dan asam lemak omega-3 yang kaya dalam ikan berfungsi mengurangi peradangan'),
(71, 8, 'Roti', 'Roti menjadi makanan yang baik dikonsumsi penderita tipes karena kalori di dalamnya tergolong cukup tinggi, sehingga akan memberikan energi bagi tubuh.'),
(72, 9, 'Sayur Sop', 'Sayuran yang ditambahkan pada kuah kaldu ayam juga penuh dengan antioksidan dan fitokimia yang dapat membantu mempercepat pemulihan.'),
(73, 9, 'Bawang putih', 'Antioksidan menjadikan bawang putih sebagai agen antibakteri dan antivirus yang kuat dan dapat mempercepat proses penyembuhan pada individu yang menderita flu.'),
(74, 9, 'Pisang', 'Pisang juga memiliki banyak kalium yang dapat membantu meringankan nyeri otot dan kram, dan gejala flu biasa'),
(75, 9, 'Jus Sayur', 'Jus sayur merupakan salah satu menu makanan untuk flu yang memiliki banyak antioksidan untuk meningkatkan kekebalan tubuh.'),
(76, 9, 'Ayam dan Kalkun', 'Makan makanan berprotein saat flu dapat memberikan tubuh Anda asupan energi yang diperlukan untuk melawan penyakit.'),
(77, 9, 'Rempah-rempah', 'Rempah-rempah seperti kunyit, cengkeh, dan kayu manis yang dikemas dengan antioksidan dapat membantu meningkatkan sistem kekebalan tubuh.'),
(78, 9, 'Yougurt', 'Yogurt juga bisa menjadi makanan pilihan untuk mengatasi flu. Tidak hanya mengandung bakteri baik, yogurt juga merupakan sumber protein tinggi.'),
(79, 9, 'Sayuran hijau(bayam, kale, lobak hijau, sawi, dan selada)', 'Sayuran hijau memiliki vitamin C dan vitamin E, sebagai nutrisi penambah kekebalan lainnya'),
(80, 10, 'Makanan berkuah', 'Makanan berkuah seperti sup dan kaldu ayam atau sapi bisa mengganti cairan tubuh yang hilang karena diare.'),
(81, 10, 'Air Putih', 'Air putih berfungsi vital untuk mengembalikan cairan tubuh. Minum banyak air putih membantu mencegah dehidrasi serta mengeluarkan racun dalam tubuh.'),
(82, 10, 'Makanan/minuman yang mengandung probiotik', 'Probiotik membantu menjaga sistem pencernaan dengan menjaga keseimbangan bakteri baik di dalam usus. Probiotik bisa ditemukan di dalam yoghurt, kefir, tempe, kimchi, atau kombucha.'),
(83, 10, 'Makanan bercita rasa hambar', 'Makanan yang hambar berfungsi untuk mengurangi risiko iritasi berlanjut pada usus ketika saluran cerna terkena diare. Contoh makanan hambar cracker tanpa rasa, nasi putih, buah pisang, oatmeal, dan kentang rebus.'),
(84, 11, 'Makanan cepat saji', 'Makanan cepat saji, seperti hamburger dan pizza, mengandung sekitar 85–180 mg kolesterol dalam satu porsinya'),
(85, 11, 'Es krim', 'Satu cup es krim mengandung lebih banyak kolesterol dibandingkan satu buah burger dan donat.'),
(86, 11, 'Steak', 'Steak daging sapi adalah salah satu makanan yang banyak mengandung kolesterol.'),
(87, 11, 'Telur', 'Telur dapat menjadi sumber protein sehat selama tidak dikonsumsi secara berlebihan setiap harinya.'),
(88, 11, 'Makanan laut', 'Beberapa jenis makanan laut, seperti lobster, merupakan makanan penyebab kolesterol tinggi. Dalam setiap 100 gr lobster terkandung sekitar 70 mg kolesterol.'),
(89, 11, 'Jeroan', 'Jeroan atau bagian isi perut dan organ hewan, seperti usus, babat, atau otak, mengandung lebih banyak kolesterol dibandingkan bagian dagingnya. Bagian tersebut juga mengandung banyak asam urat.'),
(90, 11, 'Daging Bebek', 'Daging bebek adalah salah satu makanan dengan kandungan kolesterol lebih tinggi dibandingkan daging ayam. Dalam 100 gr daging bebek, setidaknya mengandung kolesterol sebanyak 80 mg.'),
(91, 11, 'Keju dan Susu', 'Keju dan susu merupakan jenis makanan yang memiliki kandungan lemak dan kolesterol tinggi'),
(92, 12, 'Makanan dan minuman manis', 'Gula, khususnya jenis fruktosa telah dikaitkan dengan bahan makanan yang dapat meningkatkan kadar asam urat dalam darah.'),
(93, 12, 'Daging Merah', 'Daging merah dan jeroan cenderung mengandung purin yang tinggi.'),
(94, 12, 'Minuman Keras', 'Sering mengonsumsi alkohol diketahui dapat menyebabkan hiperurisemia kronis, meningkatkan risiko penyakit asam urat dan serangan asam urat.'),
(95, 13, 'Daging olahan', 'Kandungan nitrat dan nitrit sebagai bahan pengawet yang terdapat pada daging olahan dapat memperlebar pembuluh darah, sehingga dapat memicu migrain pada beberapa orang.'),
(96, 13, 'Coklat', 'Kandungan feniletilamin dan kafein dalam cokelat bisa menjadi alasan mengapa cokelat memicu migrain.'),
(97, 13, 'Kopi dan Teh', 'Karena kafein di dalam keduanya sangat bisa memicu dan memperparah migraine.'),
(98, 13, 'Makanan dan minuman fermentasi', 'Makanan dan minuman yang dibuat melalui proses fermentasi seperti kombucha dan kimchi juga mengandung tyramine dalam level tinggi, jadi sebaiknya dihindari ketika migrain tengah datang.'),
(99, 14, 'Gorengan', 'Minyak, terutama minyak jelantah yang telah dipakai berulang kali, menghasilkan senyawa akrolein yang akan memicu rasa gatal menyiksa di tenggorokan.'),
(100, 14, 'makanan/minuman berkafein', 'Kafein dapat memicu gas asam dari lambung naik kembali ke tenggorokan.'),
(101, 15, 'Minuman dan makanan manis', 'Minuman dan makanan manis dapat meningkatkan peradangan dan produksi lendir'),
(102, 15, 'Gorengan', 'Minyak, terutama minyak jelantah yang telah dipakai berulang kali, menghasilkan senyawa akrolein yang akan memicu rasa gatal menyiksa di tenggorokan.'),
(103, 15, 'Makanan/minuman berkafein', 'Kafein dapat memicu gas asam dari lambung naik kembali ke tenggorokan.'),
(104, 16, 'Makanan Tinggi Lemak', 'Lemak  dapat merangsang pelepasan kolesitokinin. Kolesitokinin adalah hormone yang memicu mengendurnya otot pada katub kerongkongan (esophagus) bagian bawah, sehingga asam lambung naik'),
(105, 16, 'Kafein', 'Kafein merangsang lebih banyak sekresi asam yang dapat menyebabkan peningkatan hormone gastrin yaitu hormone yang berfungsi merangsang lambung untuk menghasilkan asam lambung'),
(106, 16, 'Minuman Berkarbonasi', 'Minuman berkarbonasi dapat melemahkan otot esophagus bagian bawah, sehingga menyebabkan asam lambung naik ke tenggorokan'),
(107, 16, 'Makanan Pedas', 'Makanan pedas mengandung zat capsaicin yaitu ekstrak alkaloid yang memberikan rasa pedas. Zat capsaicin bisa memperlambat kerja system pencernaan'),
(108, 16, 'Makanan Asin', 'Makanan yang mengandung natrium (garam) yang tinggi dapat memicu refluks asam, sehingga asam lambung mudah naik'),
(109, 16, 'Buah Citrus', 'Kandungan asam yang terdapat pada buah citrus dapat melemahkan otot esophagus, sehingga asam lambung mudah naik'),
(110, 17, 'Teh Hijau', 'Teh hijau mengandung tanin yang mengikat molekul besi dan mengganggu penyerapan zat besi dalam tubuh'),
(111, 17, 'Gandum Hitam', 'Gandum HItam mengandung gluten yangdapat merusak dinding usus dan mencegah penyerapan zat besi dan asam folat yang diperlukan untuk memproduksi sel darah merah'),
(112, 17, 'Kacang-kacangan', 'Kacang-kacangan mengandung fitat yang mengikat zat besi dan menghambat penyerapannya'),
(113, 17, 'Yogurt', 'Yogurt mengandung kalsium yang menghambat penyerapan zat besi'),
(114, 17, 'Kopi', 'Kopi mengandung kafein yang menghambat penyerapan zat besi'),
(115, 18, 'Roti', 'Roti dapat menyebabkan kadar trigliserida yang lebih tinggi dalam tubuh, karena kandungan lemaknya yang dapat menyebabkan berbagai penyakit hati'),
(116, 18, 'Minuman Bersoda', 'Tidak apa-apa untuk mengonsumsi sedikit minuman soda sesekali, tetapi konsumsi teratur dapat mulai merusak hati dan dapat menyebabkan perkembangan berbagai komplikasi hati'),
(117, 18, 'Gorengan', 'Kandungan lemak dan kalorinya yang tinggi membuat gorengan menjadi salah satu pantangan penyakit liver yang harus dihindari'),
(118, 18, 'Makanan Cepat Saji', 'Pada makanan cepat saji banyak terkandung lemak jenuh. Lemak jenuh yang tinggi dapat menimbulkan peradangan dari waktu ke waktu dan akhirnya berubah menjadi sirosis'),
(119, 18, 'Makanan Manis', 'Bagian dari tugas hati adalah mengubah gula menjadi lemak. Hati membuat terlalu banyak lemak, yang akhirnya berkeliaran di tempat yang tidak seharusnya. Jika dibiarkan, lemak yang berasal dari gula tadi juga bisa menumpuk di hati dan memicu terjadinya perlemakan hati atau fatty liver.'),
(120, 18, 'Makanan yang Kaya Akan Garam', 'Asupan garam yang berlebihan dapat menyebabkan retensi air dalam tubuh. Mengonsumsi terlalu banyak garam bisa memperparah kondisi penyakit liver'),
(121, 18, 'Daging Merah', 'Memecah protein tidak mudah bagi hati dan dapat menyebabkan berbagai masalah terkait hati. Selain itu, penumpukan protein berlebih di hati dapat menyebabkan penyakit hati berlemak yang dapat berdampak buruk pada otak dan ginjal'),
(122, 19, 'Makanan dan minuman Manis', 'Gula dalam makanan manis membatasi peran sistem kekebalan tubuh untuk melindungi tubuh dari bakteri. Ketika sistem kekebalan tubuh terganggu, maka pemulihan DBD juga berangsur lama'),
(123, 19, 'Alkohol', 'Alkohol memberi efek penurunan trombosit di dalam darah dengan menghambat produksinya pada sumsum tulang belakang'),
(124, 19, 'Makanan berlemak', 'Makanan yang berlemak dan berminyak dapat meningkatkan kadar kolestrol dalam darah. Tingginya kolesterol memengaruhi kelancaran trombosit dalam darah untuk menjalankan fungsinya melindungi tubuh'),
(125, 20, 'Minuman Berenergi', 'Minuman pembangkit energi mengandung gula tambahan. Gula tersebut dapat menyebabkan peradangan pada sistem kekebalan tubuh'),
(126, 20, 'Es Krim', 'Kombinasi dari peradangan tubuh dan rasa dingi akan membuat sistem kekebalan tubuh makin terbebani'),
(127, 20, 'Gorengan', 'Lemak jenuh pada gorengan yang berlebihan dapar membungungkan pertahanan tubuh, kebingungan ini dapat menyebabkan peradangan yang menekan sistem kekebalan tubuh.'),
(128, 20, 'Daging', 'Daging yang berlemak bisa meningkatkan peradangan dan menekan sistem kekebalan tubuh'),
(129, 20, 'Permen', 'Kandungan gula pada permen mengurangi efektivitas sel darah putih dengan mengurangi kemampuan mereka untuk menghancurkan bakteri di tubuh'),
(130, 14, 'Testing Pantangan Edit', 'Testing Pantangan');

-- --------------------------------------------------------

--
-- Table structure for table `menurekomendasi`
--

CREATE TABLE `menurekomendasi` (
  `idrekomendasi` int(11) NOT NULL,
  `idpenyakit` int(11) NOT NULL,
  `namarekomendasi` varchar(200) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menurekomendasi`
--

INSERT INTO `menurekomendasi` (`idrekomendasi`, `idpenyakit`, `namarekomendasi`, `keterangan`) VALUES
(32, 1, 'Ikan yang mengandung asam lemak omega-3 DHA dan EPA (salmon, sarden, teri dan makarel)', 'kandungan DHA dan EPA dapat melindungi sel-sel yag melapisi pembuluh darah, mengurangi peradangan, serta meningkatkan fungsi arteri.'),
(33, 1, 'Sayuran Hijau', 'Sayuran hijau merupakan sumber makanan yang bergizi tinggi, rendah kalori, dan rendah karbohidrat. Juga mengandung sumber mineral dan vitamin C.'),
(34, 1, 'Alpukat', 'Alpukat tidak banyak mengandung gula, memiliki kandungan serat tinggi, karbohidrat, dan lemak yang sehat'),
(35, 1, 'Strawberry', 'Buah dengan rasa asam manis ini kaya akan polifenol, senyawa yang berfungsi sebagai antioksidan. Buah satu ini kaya akan serat dan memiliki glikemik yang rendah sehingga dapat menurunkan gula darah dan menjaganya tetap stabil. Tidak heran bila buah ini sangat baik untuk penderita diabetes.'),
(36, 1, 'Kacang-kacangan', 'Makanan ini tidak hanya bergizi, tapi juga kaya akan vitamin B, mineral, kalsium, kalium, magnesium, dan serat. Selain itu, kacang-kacangan juga memiliki indeks glikemik yang sangat rendah sehingga baik untuk menjaga kadar gula darah yang berlebih.'),
(37, 1, 'Biji-bijian (nasi merah, ubi panggang, oatmeal, roti gandum, dan sereal dari biji-bijian)', 'Makanan yang terbuat dari biji-bijian utuh atau karbohidrat kompleks pengganti nasi putih'),
(38, 1, 'Greek Yogurt', 'Dengan mengonsumsi satu porsi yogurt setiap hari ternyata dapat menurunkan risiko diabetes secara efektif. Terlebih lagi, jenis makanan ini mengandung protein, kalsium, dan lemak baik yang disebut asam linoleat.'),
(39, 1, 'Brokoli', 'Merupakan salah satu sayuran paling bergizi dan rendah kalori. Dalam setengah cangkir brokoli yang dimasak mengandung 27 kalori, 3 gram karbohidrat, vitamin C dan magnesium. Dengan mengonsumsi brokoli, Anda dapat mengelola kadar gula darah lebih stabil karena terdapat sulforaphane, senyawa kimia yang memberikan efek positif untuk kesehatan.'),
(40, 1, 'Minyak Zaitun', 'Minyak zaitun mengandung asam oleat, sejenis lemak tak jenuh tunggal. Kandungan ini dapat meningkatkan glikemik indeks dan mengurangi kadar trigliserida saat berpuasa. '),
(41, 1, 'Flax Seed', 'Makanan yang memiliki nama lain biji rami ini kaya akan kandung asam lemak omega-3 nabati, yang disebut asam alfa-linolenat (ALA). Selain itu, flax seed juga kaya akan serat.'),
(42, 1, 'Cuka Apel', 'Cuka apel ini juga mempunyai kandungan antimikroba dan antioksidan. Selain itu, cuka apel juga memiliki senyawa aktif, yaitu asam asetat, yang baik untuk kesehatan tubuh.'),
(43, 1, 'Bawang Putih', 'bawang putih sangat baik untuk dikonsumsi oleh penderita diabetes. Karena bawang putih berkontribusi untuk mengatur kadar gula dalam darah dan kolesterol. Meskipun bawang putih tidak kaya karbohidrat, tetapi makanan satu ini dapat mempengaruhi kadar gula darah. Apalagi, bawang putih juga merupakan sumber vitamin B-6 dan C.'),
(44, 1, 'Labu', 'Meskipun rendah kadar gula dan kalori, tetapi labu juga bis amembuat kita lebih kenyang. Dalam setiap porsinya, labu mengandung antioksidan, polisakarida yang mampu untuk menurunkan kadar insulin dan glukosa dalam darah.'),
(45, 2, 'Buah-buahan (Jeruk, lemon, beri, kiwi)', 'Vitamin C dapat membantu dalam meningkatkan sistem kekebalan tubuh yang selanjutnya membantu dalam menyingkirkan pneumonia.'),
(46, 2, 'Sayuran hijau (kangkung, selada, bayam)', 'Sayuran berdaun hijau ini kaya akan nutrisi yang membantu penyembuhan infeksi saluran pernapasan ini. Sayuran ini juga mengandung antioksidan yang melindungi tubuh dari agen infeksi'),
(47, 2, 'Makanan kaya protein (telur, tahu, kacang-kacang, biji-bijian, daging putih, salmon, dan sarded)', 'Mengonsumsi makanan kaya protein bermanfaat bagi orang yang menderita pneumonia.'),
(48, 2, 'Gandum Utuh', 'Anda bisa mengonsumsi makanan seperti gandum, beras merah, dan quinoa. Vitamin B membantu menjaga suhu tubuh dan selenium memperkuat sistem kekebalan tubuh.'),
(49, 2, 'Kunyit', 'Kunyit memiliki sifat anti-inflamasi yang mengurangi nyeri dada, nyeri ini merupakan salah satu gejala awal pneumonia. Kunyit bertindak sebagai mukolitik, yang berarti membantu menghilangkan lendir dan radang selaput lendir hidung dari saluran bronkial dan membuat pernapasan lebih lega.'),
(50, 2, 'Yogurt', 'Yogurt dikenal mengandung bakteri baik yang bermanfaat bagi tubuh. Yogurt mengandung probiotik yang mampu menghambat pertumbuhan mikroba penyebab pneumonia.'),
(51, 2, 'Jahe', 'Jahe dapat digunakan dalam mengobati hampir semua penyakit pernapasan dan juga bermanfaat untuk pasien pneumonia. Jahe membantu mengurangi nyeri dada sebagai penyebab pneumonia.'),
(52, 2, 'Madu', 'Pasien pneumonia harus mengonsumsi madu karena madu dapat meredakan gejala pilek, batuk, dan tenggorokan yang tidak nyaman. Anda bisa menambahkan madu ke minuman Anda atau mengonsumsinya secara langsung.'),
(53, 3, 'Biji-bijian', 'Biji-bijian disinyalir mempunyai efek yang dapat menghambat kerusakan sel-sel otak pada penderita Alzheimer. Penderita Alzheimer direkomendasikan untuk mengonsumsi biji-bijian setidaknya tiga porsi setiap harinya.'),
(54, 3, 'Sayuran Berdaun Hijau', 'Sayuran sangat baik untuk kesehatan, terutama yang berdaun hijau karena mempunyai efek untuk mengurangi kerusakan sel otak pada penderita Alzheimer.'),
(55, 3, 'Daging Merah', 'Meski pada beberapa kondisi medis tertentu, daging merah harus dihindari namun mengkonsumsi daging merah secukupnya atau kurang dari 4 kali dalam seminggu dapat membantu memenuhi nilai nutrisi dan gizi seimbang.'),
(56, 3, 'Ikan', 'Berbagai jenis ikan baik ikan laut atau ikan air tawar sangat baik untuk kesehatan. Ikan direkomendasikan pada penderita Alzheimer untuk mengkonsumsi setidaknya seminggu sekali.'),
(57, 2, 'Unggas', 'Sama seperti halnya daging merah, orang dengan kondisi medis tertentu harus diet dari daging unggas. Namun ternyata daging unggas direkomendasikan untuk penderita Alzheimer, konsumsi sebanyak dua kali dalam seminggu.'),
(58, 3, ' Kacang-Kacangan', 'Beberapa jenis kacang sangat membantu untuk mencegah Alzheimer sekaligus menyehatkan otak. Penderita penyakit Alzheimer direkomendasikan untuk mengonsumsi sebanyak lima kali dalam seminggu.'),
(59, 3, 'Minyak Zaitun', 'Daripada menggunakan mentega dan minyak goreng dari kelapa sawit, lebih baik diganti dengan minyak zaitun. Kandungan lemak sehat atau baik yang ada minyak zaitun direkomendasikan untuk penderita Alzheimer.'),
(60, 3, 'Gandum utuh', 'Gandum utuh dapat dipilih untuk menggantikan nasi putih, selain kaya akan serat juga rendah kalori atau gula. Penderita Alzheimer direkomendasikan untuk mengkonsumsi setidaknya 3 porsi dalam sehari.'),
(61, 3, ' Buah Beri', 'Salah satu buah yang mempunyai kandungan anthocyanin ini berfungsi untuk menglindungi sel-sel otak dari kerusakan akibat radikal bebas. Selain itu, buah beri juga mempunyai sifat antiperadangan, antioksidan, serta vitamin C dan vitamin E.'),
(62, 3, 'Minuman Anggur', 'Siapa yang menduga jika minuman yang terbuat dari fermentasi buah anggur dapat dijadikan sebagai obat Alzheimer? Minuman anggur jika dikonsumsi secara tepat dapat membantu mencegah Alzheimer.'),
(63, 4, 'Ikan', 'Ikan, khususnya ikan berlemak seperti salmon dan tuna merupakan makanan ramah jantung. Omega 3 di dalamnya termasuk jenis asam lemak tak jenuh yang mampu meredakan peradangan, termasuk pada pembuluh darah sekitar jantung.'),
(64, 4, 'Polong-polongan tinggi protein (tahu, tempe, biji kacang kedelai)', 'Biji dan kacang-kacangan ini mengandung antioksidan isoflavon yang dikatakan dapat menurunkan risiko penyakit kardiovaskular pada wanita pascamenopause sehingga aman dikonsumsi pasien dengan masalah jantung.'),
(65, 4, 'Biji-bijian dan gandum utuh', 'Oatmeal dan gandum murni masuk dalam daftar makanan yang sehat untuk pasien penyakit jantung. Oatmeal terbuat dari tanaman haver dan mengandung serat tinggi yang dapat menurunkan kadar kolesterol sehingga mampu mencegah pembentukan plak di pembuluh darah arteri.'),
(66, 4, 'Kacang kenari dan almond', 'Kacang kenari atau nama asingnya, walnut, beserta almond memiliki kandungan lemak tak jenuh, serat, omega 3, vitamin E, sterol, dan asam amino L-arginin. Meski ramah jantung, sebaiknya Anda jangan memakannya berlebihan. Karena sekitar 80% kacang mengandung lemak dan sebagian besarnya mengandung kalori yang cukup tinggi.'),
(67, 4, 'Kacang hitam', 'Selain walnut dan almond, kacang lain yang sama sehatnya untuk penderita penyakit jantung adalah kacang hitam. serat, antioksidan, dan senyawa antiinflamasi pada kacang hitam bisa mengurangi kadar kolesterol dalam darah serta membantu mengontrol kadar glukosa dalam darah.'),
(68, 4, 'Yogurt', 'konsumsi ≥ 2 porsi yogurt per minggu dapat menurunkan risiko penyakit jantung pada orang dewasa dengan hipertensi. Mineral kalsium dan kalium pada yogurt yang dikonsumsi secara rutin bersama dengan buah serta sayuran lain bisa membantu kondisi hipertensi. Tetapi, penderita penyakit jantung hendaknya memilih yogurt rendah lemak.'),
(69, 4, 'Flaxseed dan chia seed', 'Jenis biji-bijian utuh ini bisa diandalkan sebagai makanan ramah jantung. Flaxseed dan chia seed kaya akan serat, omega 3, dan senyawa fitoestrogen yang dapat membantu mengendalikan kadar kolesterol dan tekanan darah tetap normal.'),
(70, 4, 'Cokelat hitam', 'konsumsi cokelat dikaitkan dengan penurunan risiko penyakit jantung dan stroke, serta pencegahan kematian dini akibat penyakit jantung. Peneliti juga berpendapat bahwa tampaknya cokelat tidak perlu dihindari oleh pasien jantung. Kandungan antioksidan flavonoid pada cokelat dipercaya memiliki kemampuan untuk menurunkan tekanan darah, berperan sebagai antiinflamasi, mencegah penggumpalan darah, serta memperlancar peredaran darah.'),
(71, 4, 'Buah beri dan keluarga sitrus', 'Kelompok buah beri, seperti bluberi, stroberi, blackberry, dan raspberry sudah dikenal dengan berbagai manfaatnya bagi kesehatan tubuh, termasuk jantung, karena kaya akan antioksidan. Pilihlah buah yang segar untuk mendapatkan semua kandungan nutrisinya.'),
(72, 4, 'Ubi jalar', 'Umbi yang punya rasa manis ini mengandung vitamin A yang menyehatkan tubuh, termasuk jantung Anda. Kandungan serat dan nutrisi lain diketahui dapat mengurangi kadar kolesterol dalam darah.'),
(73, 4, 'Buah ceri', 'Buah ceri bisa menjadi makanan pilihan untuk pasien penyakit jantung. Alasannya, karena ceri kaya dengan antioksidan polifenol dan karotenoid, serat, serta vitamin C. Semua nutrisi tersebut dapat meningkatkan fungsi jantung dan pembuluh darah.'),
(74, 4, 'Sayuran hijau', 'Diantara beragam jenis sayur hijau, brokoli, bayam, kangkung, sawi hijau, pakcoy, dan asparagus paling direkomendasikan untuk penderita penyakit jantung. Kelompok sayuran ini tinggi vitamin C, vitamin E, folat, kalium, kalsium, dan serat yang membantu jantung terus berfungsi normal.'),
(75, 4, 'Tomat', 'Buah berwarna oranye ini mengandung berbagai senyawa penting seperti karotenoid, vitamin A, kalsium, dan gamma-aminobutyric acid. Berdasarkan penelitian, konsumsi jus tomat tawar selama 8 minggu dapat mengurangi kadar trigliserida darah sehingga mengurangi risiko penyempitan pembuluh darah arteri akibat penumpukan plak.'),
(76, 4, 'Delima', 'Manfaat delima untuk kesehatan tubuh memang cukup populer. Salah satunya, menjadi makanan sehat untuk penyakit jantung. Ini karena buah delima mengandung senyawa bioaktif punicalagin, yaitu antioksidan yang dapat melindungi jantung dari stres oksidatif.'),
(77, 4, 'Apel', 'Mengandung serat, vitamin C dan antioksidan polifenol, apel dikenal mampu menurunkan risiko penyakit jantung. Daging dan kulitnya pun mengandung senyawa phytocomp, seperti catechin, epicatechin, procyanidin B1, dan beta karoten yang dapat menurunkan kadar kolesterol dalam darah. Kadar kolesterol yang rendah otomatis akan mencegah pembentukan plak di pembuluh arteri dan mengurangi risiko penyakit jantung.'),
(78, 4, 'Anggur', 'Senyawa aktif dalam buah anggur dapat mengurangi ketegangan atau kekakuan pada pembuluh darah arteri. Kulit anggur merah yang mengandung antioksidan polifenol juga bisa memelihara fungsi endotel.'),
(79, 4, 'Alpukat', 'Daging buah alpukat juga mengandung acetogenin yang bisa menghambat penggumpalan platelet atau keping darah. Manfaat acetogenin ini kemungkinan besar mencegah terjadinya penggumpalan darah di dalam pembuluh arteri.'),
(80, 4, 'Kopi', 'Kandungan antioksidannya diketahui dapat mengurangi stres oksidatif yang menyebabkan peradangan. Tetapi, konsumsinya jangan terlalu banyak, terutama pada orang yang punya gagal jantung dan hipertensi tidak terkendali.'),
(81, 5, 'Kembang Kol', 'Kembang kol adalah makanan yang baik untuk penderita penyakit ginjal. Sayuran bergizi ini mengandung vitamin C, K, B, dan folat. Selain itu, kembang kol memiliki kadar natrium, kalium, dan fosfor yang rendah. Penderita penyakit ginjal bisa menikmati kembang kol sebagai sayur, camilab, sampai pengganti nasi.'),
(82, 5, 'Blueberry', 'Blueberry termasuk makanan super yang mengandung banyak antioksidan dan rendah kalori. Rutin makan buah ini terbukti bisa mencegah penyakit jantung, kanker, diabetes, dan penurunan kognitif. Tak hanya itu, blueberry termasuk makanan untuk memperbaiki fungsi ginjal karena rendah natrium, fosfor, dan kalium.'),
(83, 5, 'Putih telur', 'Telur termasuk sumber protein bergizi tinggi. Sayangnya, tidak semua bagian telur merupakan makanan tepat untuk penderita ginjal. Penderita gangguan ginjal disarankan makan bagian putih telurnya saja.'),
(84, 5, 'Bawang putih', 'penderita penyakit ginjal perlu membatasi natrium atau garam dalam menu sehari-hari. Sebagai alternatifnya, penderita penyakit ginjal bisa mengganti garam dengan bawang putih.'),
(85, 5, 'Minyak zaitun', 'Minyak zaitun termasuk makanan untu memperbaiki fungsi ginjal karena bebas fosfor, serta rendah natrium dan kalium. Bahan makanan ini juga termasuk makanan yang baik untuk penderita penyakit ginjal.'),
(86, 5, 'Nanas', 'Nanas bisa menjadi pilihan makanan yang baik untuk penderita ginjal karena memiliki kadar kalium yang rendah. Buah ini juga baik dikonsumsi karena kaya akan serat, mangan, vitamin C, dan enzim yang bisa mengurangi peradangan seperti bromelain.'),
(87, 5, 'Jamur shiitake', 'Jamur shiitake adalah makanan gurih yang bisa digunakan sebagai pengganti daging bagi penderita penyakit ginjal yang perlu membatasi protein. Jamur ini memiliki kandungan vitamin B, tembaga, mangan, selenium, protein nabati, dan serat.'),
(88, 5, 'Kubis', 'Kubis masuk dalam keluarga sayuran silangan dan sarat dengan vitamin, mineral, serta senyawa tanaman yang kuat. Sayuran yang satu ini juga sumber vitamin K, vitamin C, dan banyak vitamin B.'),
(89, 5, 'Ayam Tanpa Kulit', 'Walaupun beberapa pengidap masalah ginjal perlu membatasi asupan protein, protein yang berkualitas tinggi dalam jumlah yang cukup sangat penting untuk kesehatan. Dada ayam tanpa kulit mengandung lebih sedikit fosfor, kalium, dan natrium dibandingkan ayam berkulit. Jadi, sebaiknya pilih dada ayam tanpa kulit untuk seseorang yang mengidap penyakit ginjal.'),
(90, 5, 'Paprika', 'Sayuran ini juga sarat dengan vitamin A, nutrisi penting untuk fungsi kekebalan, yang sering dikompromikan pada orang dengan penyakit ginjal.'),
(91, 5, 'Cranberry', 'Buah kecil dan asam ini mengandung fitonutrien yang disebut proanthocyanidins tipe A, yang mencegah bakteri menempel pada lapisan saluran kemih dan kandung kemih, sehingga mencegah infeksi. Khasiat ini bermanfaat bagi mereka yang menderita penyakit ginjal, karena mereka cenderung memiliki peningkatan risiko infeksi saluran kemih.'),
(107, 6, 'sayuran hijau(bayam, kale, lobak hijau, sawi, dan selada)', 'mengandung kalium, magnesium, dan serat sehingga cocok sebagai makanan untuk penderita hipertensi.'),
(108, 6, 'yogurt', 'Yogurt merupakan salah satu produk susu, karena itu jenis makanan ini mengandung kalsium tinggi yang cocok untuk penderita hipertensi.'),
(109, 6, 'susu', 'susu skim juga mengandung kalsium tinggi dan rendah lemak yang dapat Anda jadikan sebagai penurun tekanan darah.'),
(110, 6, 'ikan salmon', 'Ikan salmon merupakan ikan yang kaya akan asam lemak omega-3. Kandungan lemak sehat ini diduga dapat menurunkan tekanan darah.'),
(111, 6, 'wortel', 'kandungan senyawa fenolik dalam wortel secara signifikan dapat menurunkan tekanan darah tinggi.'),
(112, 6, 'buah bit', 'Buah bit bersifat menurunkan tekanan darah karena mengandung nitrat. '),
(113, 6, 'buah citrus(jeruk, jeruk bali, lemon)', 'buah citrus sarat akan vitamin, mineral, dan senyawa bioaktif yang memiliki efek menurunkan tekanan darah.'),
(114, 6, 'Bawang putih', 'Bawang putih termasuk makanan penurun darah tinggi karena dapat meningkatkan kadar oksida nitrat dalam tubuh.'),
(115, 6, 'oatmeal', 'Oatmeal adalah makanan yang mengandung serat tinggi, rendah lemak, dan rendah sodium. Nutrisi ini baik untuk membantu Anda menurunkan tekanan darah.'),
(116, 6, 'Minyak Zaitun', 'Minyak zaitun mengandung polifenol, yang merupakan senyawa peradangan yang dapat membantu mengurangi tekanan darah.'),
(117, 6, 'kuaci, biji labu', 'biji bunga matahari dan biji labu terbukti mengandung kalium, magnesium, dan mineral lainnya yang dapat mengurangi tekanan darah.'),
(118, 6, 'coklat hitam', 'Cokelat hitam mengandung lebih dari 60 persen padatan kakao dan memiliki lebih sedikit gula daripada cokelat biasa.'),
(119, 6, 'buah beri(blueberry, strawberry)', 'Buah beri, terutama blueberry, kaya akan senyawa alami yang disebut flavonoid yang dapat menurunkan tekanan darah.'),
(120, 6, 'pisang', 'Pisang adalah buah yang mengandung potasium tinggi. Nutrisi inilah yang membuat pisang dapat menjadi makanan penurun darah tinggi.'),
(121, 6, 'buah delima', 'Sebuah studi menyimpulkan bahwa minum segelas jus delima sekali sehari selama empat minggu dapat membantu menurunkan tekanan darah dalam jangka pendek.'),
(122, 6, 'kiwi', 'Kiwi  mengandung vitamin C tinggi, yang secara signifikan dapat berkontribusi pada pengaturan tekanan darah dalam tubuh.'),
(123, 6, 'semangka', 'Semangka mengandung asam amino yang disebut citrulline, yang dapat membantu mengelola tekanan darah tinggi.'),
(124, 7, 'kacang-kacangan', 'Kacang-kacangan dapat meningkatkan tekanan darah. Kacang-kacangan biasa dicerna secara perlahan, sehingga membuat tekanan darah naik.'),
(125, 7, 'hati ayam', 'Hati ayam kaya akan kandungan asam folat, sehingga bagus untuk penderita darah rendah.'),
(126, 7, 'Daging merah', 'Daging merah kaya akan vitamin B12 yang dapat menambah tekanan darah'),
(127, 7, 'telur', 'Telur kaya akan vitamin B12.'),
(128, 7, 'Minyak Zaitun', 'Zaitun kaya akan vitamin E, zat besi, dan zinc.'),
(129, 7, 'Makanan kaya akan vitamin B12', 'Jenis makanan untuk darah rendah yang mengandung banyak vitamin B12 adalah daging sapi, telur, sereal, produk yang terbuat dari susu, dan daging merah.'),
(130, 7, 'Makanan tinggi folat', 'Makanan tinggi folat, seperti sayuran berwarna hijau, misalnya bayam dan brokoli, kacang-kacangan, biji-bijian, serta buah-buahan, misalnya pepaya, pisang, dan alpukat'),
(131, 7, 'Makanan yang asin', 'Makanan yang asin, seperti makanan kalengan, ikan asin, dan hidangan dengan tambahan garam, yang dapat membantu memenuhi asupan garam harian untuk orang dengan darah rendah, yaitu 4,5–5 gram per hari'),
(132, 7, 'Makanan dan minuman yang mengandung kafein', 'Kandungan kafein dapat meningkatkan tekanan darah dan detak jantung untuk sementara waktu. Anda dapat menemukannya pada cokelat, teh, dan kopi. '),
(133, 7, 'makanan yang mengandung banyak air', 'Beberapa jenis makanan yang mengandung banyak air, di antaranya buah-buahan (semangka, stroberi, jeruk, tomat, paprika, mentimun, anggur), selada, seledri, dan yogurt tanpa rasa.'),
(134, 7, 'jus buah', 'Meminum jus buah segar juga baik untuk kesehatan karena mengandung banyak vitamin, termasuk vitamin C, yang diperlukan oleh tubuh.'),
(135, 8, 'kentang tumbuk', 'Kentang mengandung karbohidrat dan protein yang bernutrisi sehingga mempercepat proses penyembuhan.'),
(136, 8, 'puding', 'Kandungan glukosa dalam puding juga bisa menjadi sumber energi bagi tubuh.'),
(137, 8, 'bubur', 'Selain mempercepat proses penyembuhan, tekstur bubur yang lunak akan membantu usus lebih mudah mencerna makanan ketika kondisi tubuh Anda sedang tidak sehat.'),
(138, 8, 'Telur', 'Kandungan asam lemak amino esensial, zat besi, serta kalsium yang ada pada telur juga bermanfaat guna mempercepat proses penyembuhan'),
(139, 8, 'Pisang', 'pisang mengandung kalori dan karbohidrat yang berfungsi sebagai penghasil energi tubuh.'),
(140, 8, 'Bayam', 'Zat penting dalam bayam seperti asam folat, vitamin C, dan zat besi mampu membantu mempercepat penyembuhan tipes.'),
(141, 8, 'alpukat', 'Mengandung antioksidan, serat, mineral, lemak, dan vitamin, tak jarang buah ini sering digunakan sebagai anjuran makanan untuk penderita tipes agar cepat sembuh.'),
(142, 8, 'Dada ayam', 'Daging ayam bagian dada dikenal rendah lemak dan memiliki serat halus, sehingga dapat dijadikan sebagai makanan untuk penderita tipes.'),
(143, 8, 'air kelapa', 'air kelapa cocok menjadi anjuran makanan untuk penderita tipes, sebab mengandung elektrolit dan gula yang dibutuhkan ketika badan terasa lemas akibat sakit.'),
(144, 8, 'Buah dengan kandungan air tinggi', 'Mengkonsumsi berbagai buah-buahan yang memiliki kandungan air tinggi seperti semangka, anggur, maupun tomat. Buah tersebut dapat menjadi menu makanan untuk penderita tipes agar cepat sembuh.'),
(145, 8, 'ikan', 'Kandungan protein hewani dan asam lemak omega-3 yang kaya dalam ikan berfungsi mengurangi peradangan'),
(146, 8, 'roti', 'Roti menjadi makanan yang baik dikonsumsi penderita tipes karena kalori di dalamnya tergolong cukup tinggi, sehingga akan memberikan energi bagi tubuh.'),
(147, 9, 'sayur sop', 'Sayuran yang ditambahkan pada kuah kaldu ayam juga penuh dengan antioksidan dan fitokimia yang dapat membantu mempercepat pemulihan.'),
(148, 9, 'Bawang putih', 'Antioksidan menjadikan bawang putih sebagai agen antibakteri dan antivirus yang kuat dan dapat mempercepat proses penyembuhan pada individu yang menderita flu.'),
(149, 9, 'pisang', 'Pisang juga memiliki banyak kalium yang dapat membantu meringankan nyeri otot dan kram, dan gejala flu biasa'),
(150, 9, 'jus sayur', 'Jus sayur merupakan salah satu menu makanan untuk flu yang memiliki banyak antioksidan untuk meningkatkan kekebalan tubuh.'),
(151, 9, 'ayam dan kalkun', 'Makan makanan berprotein saat flu dapat memberikan tubuh Anda asupan energi yang diperlukan untuk melawan penyakit.'),
(152, 9, 'rempah-rempah', 'kayu manis yang dikemas dengan antioksidan dapat membantu meningkatkan sistem kekebalan tubuh.'),
(153, 9, 'yougurt', 'Yogurt juga bisa menjadi makanan pilihan untuk mengatasi flu. Tidak hanya mengandung bakteri baik, yogurt juga merupakan sumber protein tinggi.'),
(154, 9, 'sayuran hijau(bayam, kale, lobak hijau, sawi, dan selada)', 'Sayuran hijau memiliki vitamin C dan vitamin E, sebagai nutrisi penambah kekebalan lainnya'),
(155, 10, 'makanan berkuah', 'Makanan berkuah seperti sup dan kaldu ayam atau sapi bisa mengganti cairan tubuh yang hilang karena diare.'),
(156, 10, 'air putih', 'air putih berfungsi vital untuk mengembalikan cairan tubuh. Minum banyak air putih membantu mencegah dehidrasi serta mengeluarkan racun dalam tubuh. '),
(157, 10, 'Makanan/minuman yang mengandung probiotik()', 'Probiotik membantu menjaga sistem pencernaan dengan menjaga keseimbangan bakteri baik di dalam usus. Probiotik bisa ditemukan di dalam yoghurt, kefir, tempe, kimchi, atau kombucha.'),
(158, 10, 'makanan bercita rasa hambar', 'Makanan yang hambar berfungsi untuk mengurangi risiko iritasi berlanjut pada usus ketika saluran cerna terkena diare. Contoh makanan hambar cracker tanpa rasa, nasi putih, buah pisang, oatmeal, dan kentang rebus.'),
(159, 11, 'Oatmeal', 'Makanan dengan bahan dasar gandum ini mengandung beta glucan yang bisa membantu mengurangi penyerapan kolesterol dari makanan yang dikonsumsi.'),
(160, 11, 'tempe dan tahu', 'Tempe dan tahu memiliki kandungan fitokimia seperti saponin, fitosterol, lechitin dan asam linoleat yang berperan aktif untuk menurunkan kolesterol pada tubuh.'),
(161, 11, 'kacang-kacangan', 'Kacang-kacangan mengandung lemak tidak jenuh dan serat yang mampu menjaga kolesterol pada keadaan normal.'),
(162, 11, ' ikan tuna', ' ikan tuna juga memiliki kandungan omega 3 yang bagus untuk menurunkan kolesterol.'),
(163, 11, 'sayuran hijau', 'Terdapat kandungan antioksidan pada sayuran hijau yang bisa meningkatkan porduksi asam empedu dari kolesterol. Sehingga, akumulasi kolesterol pada darah dapat dicegah.'),
(164, 11, 'yoghurt', 'Dengan kandungan ester stanol nabati di dalamnya, yoghurt mampu membantu menurunkan kadar kolesterol pada tubuh.'),
(165, 11, 'Alpukat', 'Alpukat adalah buah yang memiliki kandungan lemak tak jenuh tunggal, fitosterol dan polifenol yang baik untuk menjaga kadar kolesterol darah.'),
(166, 11, ' pisang', 'Pisang terdapat kandungan inulin pada pisang yang berperan aktif untuk mengurangi kolesterol dari makanan yang masuk ke tubuh. '),
(167, 11, 'apel', 'Buah apel memiliki kandungan polifenol antioksidan yang baik untuk kesehatan dan mampu untuk memperlambat oksidasi kolesterol jahat.'),
(168, 11, 'terung', 'Terung atau yang sering disebut terong mengandung banyak serat yang bermanfaat untuk melarutkan kolesterol pada usus.'),
(169, 11, 'timun', 'Timun bisa bermanfaat untuk mengurangi lemak jahat pada saluran pencernaan. Kandungan lainnya seperti kalium dan magnesium pada timun juga baik untuk mencegah darah tinggi.'),
(170, 12, 'lemon', 'Kandungan vitamin C dalam lemon dianggap dapat membantu meredakan nyeri serta mengurangi peradangan akibat asam urat yang tinggi.'),
(171, 12, 'ceri', 'Buah ceri mengandung antosianin, yaitu pigmen berwarna merah-ungu, yang bersifat antioksidan dan antiinflamasi.'),
(172, 12, 'pisang', 'pisang mengandung kalium yang tinggi, yang dapat mencegah pembentukan kristal asam urat di dalam tubuh.'),
(173, 12, 'brokoli, wortel, dan tomat', 'Brokoli diketahui hanya mengandung 70 mg purin per 100 gram beratnya, wortel 2,2 mg, sedangkan tomat ceri 3,1 mg, sehingga sayuran ini justru dapat menjadi penurun asam urat.'),
(174, 13, 'kacang almond', 'kacang almond adalah contoh lain dari makanan pereda sakit kepala yang kaya akan kandungan magnesium.'),
(175, 13, 'Bayam', 'Bayam diketahui mengandung vitamin B, magnesium, dan mikronutrien penting lainnya yang diyakini dapat menghilangkan migrain atau sakit kepala yang serius.'),
(176, 13, 'Brokoli', 'brokoli mengandung banyak nutrisi seperti vitamin B6, omega 3, dan vitamin B2. Sementara itu, vitamin B2 pada brokoli akan membantu mengurangi migrain serta mencegahnya.'),
(177, 13, 'Telur', 'Telur banyak mengandung vitamin B, termasuk B2. seperti penjelasan di atas, vitamin B2 ini cukup efektif untuk mengurangi durasi atau frekuensi sakit kepala, termasuk migrain.'),
(178, 14, 'madu', 'madu memiliki sifat analgesik dari komponen antibakteri yang dapat mengurangi peradangan akibat infeksi di saluran pernapasan'),
(179, 14, 'Pisang', 'Pisang bisa menambah kebutuhan energi yang dibutuhkan tubuh untuk melawan penyakit'),
(180, 14, 'buah dan sayuran bervitamin C (brokoli, pepaya, jeruk, labu kuning, markisa, pepaya, stroberi)', 'Buah dan sayuran bervitamin C berfungsi penting dalam melawan infeksi virus dan bakteri penyebab batuk'),
(181, 15, 'nanas', 'Nanas mengandung bromelain yang dipercaya ampuh untuk meredakan batuk dan mengencerkan lendir di tenggorokan'),
(182, 15, 'air putih', 'Dengan rajin konsumsi air putih, lendir yang ada ditenggorokan pun akan lebih encer.'),
(183, 15, 'teh jahe', 'Minum teh jahe saat batuk dapat membantu tingkatkan sistem kekebalan tubuh dan melawan infeksi.'),
(184, 15, 'pisang', 'Pisang bisa menambah kebutuhan energi yang tubuh untuk melawan penyakit.'),
(185, 15, 'Kaldu tulang', 'Kaldu tulang dapat meningkatkan hidrasi tubuh saat Anda mengalami batuk berkepanjangan.'),
(186, 15, 'Buah dan sayur bervitamin c (brokoli, pepaya, jeruk, labu kuning, markisa, pepaya, stroberi)', 'Buah dan sayuran beritamin C memiliki fungsi penting dalam melawan infeksi virus atau bakteri yang menyebabkan batuk.   '),
(187, 16, 'Oatmeal', 'Oatmeal membantu menyerap kelebihan asam di dalam lambung. Oatmeal juga melindungi lapisan lambung dari risiko iritasi asam lambung yang meningkat. Agar lebih nyaman untuk pencernaan, sebaiknya hindari penggunaan krim kental ke dalam oatmeal'),
(188, 16, 'Pisang', 'Pisang adalah makanan dengan kandungan asam yang rendah. Teksturnya yang lumat juga membantu membentuk lapisan pelindung pada kerongkongan yang mengalami iritasi'),
(189, 16, 'Melon', 'Melon adalah makanan dengan sifat asam yang rendah. Melon juga memiliki sifat basa yang cukup tinggi berkat kandungan mineral magnesium yang bekerja menetralisasi asam lambung'),
(190, 16, 'Yogurt', 'Yogurt memberikan efek menenangkan bagi dinding lambung sekaligus membantu mengendalikan rasa tidak nyaman pada perut jika dikonsumsi dalam jumlah secukupnya'),
(191, 16, 'Sayuran Hijau', 'Kandungan gula dan kandungan lemaknya yang rendah dapat membantu mengurangi peningkatan asam lambung. Sayuran hijau juga dicerna dengan cepat sehingga membantu mempercepat pengosongan lambung'),
(192, 16, 'Pepaya', 'Pepaya memiliki enzim papain yang banyak ditemukan digetahnya. Enzim papain pada papaya membantu melancarkan kerja system pencernaan dengan cara mempermudah proses pemecahan protein, sehingga lambung tidak terlalu lama terpapar asam lambung'),
(193, 16, 'Seafood dan daging rendah lemak', 'Seafood memiliki kadar lemak yang rendah, daging yang rendah lemak juga masih bisa dikonsumsi karena kandungan lemak yang rendah dalam makanan dapat membantu memulihkan berbagai keluhan yang muncul karena naiknya sam lambung'),
(194, 16, 'Teh Jahe', 'Jahe memiliki sifat antiradang yang kuat sehingga mampu meredakan nyeri dada akibat naiknya sam lambung'),
(195, 16, 'Susu Rendah Lemak', 'Susu rendah lemak lebih bersahabat dengan system pencernaan karena mudah dicerna. Susu rendah yang rendah lemak mempersingkat pencernaan dan mencegah naiknya sam lambung dalam jumlah yang berlebihan'),
(196, 16, 'The Chamomile', 'Teh chamomile membantu mengendalikan refluks asam lambung. The chamomile juga kaya zat antiradang yang meringankan rasa sakit'),
(197, 16, 'Susu Almond', 'Susu Almond memiliki sifat alkali atau basa yang membantu menetralkan kondisi lambung yang asam. Susu Almond memiliki kandungan lemak yang rendah sehingga aman diminum oleh penderita maag'),
(198, 17, 'Daging Merah', 'Daging merah mengandung zat besi yang membantu tubuh meningkatkan produksi hemoglobin yang dibutuhkan sel darah merah'),
(199, 17, 'Gandum Utuh', 'Gandum Utuh mengandung mineral tembaga yang membantu tubuh meningkatkan produksi sel darah merah'),
(200, 17, 'Sayuran Hijau', 'Sayuran hijau mengandung asam folat yang membantu meningkatkan jumlah sel darah merah dalam tubuh'),
(201, 17, 'Ikan', 'Ikan mengandung vitamin B12 yang mampu meningkatkan fungsi sumsum tulag agar lebih banyak menghasilkan sel darah merah normal'),
(202, 17, 'Nasi', 'Nasi mengandung B12 dan vitamin B6 yang membantu pembentukan sel darah merah'),
(203, 17, 'Telur', 'Telur mengandung vitamin A yang membantu penyerapan zat besi menjadi sempurna. Hal ini akan mempengaruhi produksi sel darah merah'),
(204, 17, 'Jeruk', 'Jeruk mengandung vitamin C yang membantu proses penyerapan zat besi dalam tubuh. Peningkatan zat besi dalam tubuh dapat membantu sumsum tulang belakang untuk memproduksi sel darah merah'),
(205, 17, 'Susu', 'Susu mengandung vitamin E yang berfungsi penting untuk melindungi membrane sel darah merah dari kerusakan oksidatif (akibat radikal bebas)'),
(206, 18, 'Sayuran Hijau', 'Sayuran hijau mengandung antioksidan yang dapat melindungi hati dari potensi racun radikal bebas. Sayuran hijau juga mengandung klorofil serta pigmen hijau yang menurunkan toksin dan membersihkan hati'),
(207, 18, 'Wortel', 'Wortel mwngandung nutrisi beta karoten, niacin,vitamin B-6, tamin, vitamin A, vitamin K, dan kalium yang mengandung serat yang menghasilkan efek pembersihan dalam hati dan mempromosikan fungsi tubuh secara keseluruhan'),
(208, 18, 'Brokoli', 'Mengandung glutathione dapat mendetoksifikasi dan membersihkan saluran pencernaan sebelum mereka di alirkan ke aliran darah. Glutathione juga dapat meningkatkan fungsi kekebalan tubuh'),
(209, 18, 'Anggur', 'Anggur merah dan ungu mengandung resveratrol yang dapat menurunkan peradangan, mencegah kerusakan, hingga meningkatkan tingkat antioksidan yang dapat memperbaiki fungsi hati'),
(210, 18, 'Kopi', 'Meminum kopi dapat menurunkan risiko sirosis, atau kerusakan hati permanen, pada pengidap liver kronis'),
(211, 18, 'Teh Hijau', 'Meminum the dapat meningkatkan enzim pada hati. Selain itu the hijau dapat mengurangi stress oksidatif dan timbunan lemak hati'),
(212, 18, 'Protein Hewani', 'Pengonsumsian daging tidak perlu dihentikan namun perlu diperhatikan proses pengolahannya. Pilihlah daging yang sedikit lemak dan hindari proses penggorengan'),
(213, 19, 'Jambu Biji', 'Jambu biji merah mengandung vitamin C, tanin, dan flavonoid yang memiliki fungsi untuk mengobati penyakit DBD dengan cara meningkatkan kekebalan tubuh, menghambat replikasi dari virus dengue, dan meningkatkan kadar trombosit'),
(214, 19, 'Air Kelapa', 'Berlimpahnya kandungan air, elektrolit, dan gula dalam air kelapa juga penting dalam percepat proses penggantian cairan tubuh agar lebih efektif dalam mencegah dehidrasi pada pasien DBD'),
(215, 19, 'Ramuan Jahe, Kayu Manis dan Kapulaga', 'Ramuan herbal yang terbuat dari jahe, kayu manis dan kapulaga, sangat efektif dalam proses pemulihan, membantu menurunkan demam hingga meningkatkan reaksi sistem imun tubuh agar mampu melawan infeksi'),
(216, 19, 'Daun Pepaya', 'Berdasar sebuah penelitian, jus yang dibuat dari daun pepaya dipercaya dapat membantu merangsang peningkatan kadar trombosit pada pasien DBD'),
(217, 19, 'Buah Pepaya', 'Pepaya akan sangat efektif dalam membantu proses penambahan asupan asam folat yang dibutuhkan tubuh dalam produksi trombosit darah'),
(218, 19, 'Kurma', 'Pepaya akan sangat efektif dalam membantu proses penambahan asupan asam folat yang dibutuhkan tubuh dalam produksi trombosit darah'),
(219, 20, 'Teh Herbal', 'Teh juga mengandung senyawa yang disebut polifenol. Senyawa ini membantu tubuh Anda melawan infeksi virus, bakteri, serta jamur. Berkat manfaat ini, teh menjadi pilihan minuman tepat bagi Anda yang mengalami demam disertai batuk dan pilek.'),
(220, 20, 'Buah-buahan', 'Buah-buahan merupakan makanan sumber vitamin dan mineral terbaik saat demam. Beberapa jenis buah seperti stroberi, blueberry, dan cranberry juga kaya akan senyawa antosianin yang mampu melawan virus dan meredakan peradangan.'),
(221, 20, 'Sup Ayam', 'Sup ayam mengandung protein, vitamin, dan mineral yang dibutuhkan tubuh dalam jumlah banyak saat melawan infeksi. Tingginya kandungan air pada makanan ini akan memberikan asupan cairan dan elektrolit sehingga bermanfaat untuk orang yang demam.'),
(222, 20, 'Air Kelapa', 'Air kelapa juga mengandung glukosa serta berbagai jenis mineral elektrolit. Keseimbangan elektrolit harus tetap terjaga agar tubuh bisa menjalankan fungsinya dengan baik.'),
(223, 20, 'Madu', 'Bahan makanan alami ini mengandung senyawa antibakteri serta dapat meningkatkan fungsi sistem kekebalan tubuh. Ini sebabnya madu menjadi salah satu makanan yang cocok untuk orang demam.'),
(224, 21, 'Testing Rekom', 'Testing rekom');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `idpenyakit` int(11) NOT NULL,
  `namapenyakit` varchar(100) NOT NULL,
  `gambarpenyakit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`idpenyakit`, `namapenyakit`, `gambarpenyakit`) VALUES
(1, 'Diabetes', 'diabetes.jpg'),
(2, 'Pneumonia', 'pneumonia.jpg'),
(3, 'Alzheimer', 'alzheimer.jpg'),
(4, 'Jantung', 'jantung.jpeg'),
(5, 'Ginjal Kronis', 'ginjalKronis.jpg'),
(6, 'Hipertensi', 'hipertensi.jpg'),
(7, 'Hipotensi', 'hipotensi.jpg'),
(8, 'Tifus', 'tifus.jpg'),
(9, 'Flu', 'flu.jpg'),
(10, 'Diare', 'diare.jpg'),
(11, 'Kolesterol', 'kolesterol.jpg'),
(12, 'Asam Urat', 'asamUrat.jpg'),
(13, 'Migrain', 'migrain.jpg'),
(14, 'Batuk Kering', 'batukKering.png'),
(15, 'Batuk Berdahak', 'batukBerdahak.jpg'),
(16, 'Maag', 'maag.jpg'),
(17, 'Anemia', 'anemia.jpg'),
(18, 'Liver', 'liver.jpg'),
(19, 'Demam Berdarah', 'demamBerdarah.jpg'),
(20, 'Demam', 'demam.jpg'),
(21, 'Testing Edit', 'github.png');

-- --------------------------------------------------------

--
-- Table structure for table `resep`
--

CREATE TABLE `resep` (
  `idresep` int(11) NOT NULL,
  `idpenyakit` int(11) NOT NULL,
  `namaresep` varchar(100) NOT NULL,
  `gambarresep` varchar(100) NOT NULL,
  `bahan` text NOT NULL,
  `caramembuat` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resep`
--

INSERT INTO `resep` (`idresep`, `idpenyakit`, `namaresep`, `gambarresep`, `bahan`, `caramembuat`, `keterangan`) VALUES
(1, 1, 'Steak Ikan dan Jahe', 'DIABETES-1.jpg', '200 gr ikan telapia fillet atau bisa gunakan ikan dory\r\n1 wortel\r\n1 jagung muda\r\n50 gr makaroni pasta\r\n1 ruas jahe\r\n4 lembar daun selada\r\n1 sendok teh garam himalaya untuk ikan\r\n1/2 buah lemon\r\n1 sendok teh black pepper\r\n1 sendok teh oregano\r\n2 sendok makan olive oil\r\n1 sendok teh bawang putih bubuk (bisa skip)\r\n', 'Marinade ikan dengan olive oil, oregano, garam, black pepper, bawang putih bubuk/bisa gunakan bawang putih cacah dan jahe. Diamkan selama 5 menit.\r\nSelagi menunggu ikan, kita rebus condimentnya dengan wortel kita potong memanjang. Jagung muda kita potong bulat pipih dan rebus macaroni.\r\nSetelah ikan kita marinade, masak ikan di teflon dan jahe (tidak perlu minyak lagi) kita masak 5menit saja. Tidak perlu overcooked nanti akan terlalu kering dan tidak ada citarasa steak.\r\nSusun satu persatu rebusan dan steak ikan di piring\r\nVoilaa.. mudah praktis cepat.. jangan lupa tetap batasi kalori yang masuk ya..\r\n', 'Steak ikan dan jahe adalah menu makan siang yang cocok dan bisa dicoba oleh penderita diabetes, karena dapat mengurangi asupan nasi dan garam serta minyak yang berlebihan\r\n'),
(2, 1, 'Patin Masak Pakis Kuah Kuning\r\n', 'DIABETES-2.jpg', '1 ekor ikan patin (800gr)\r\n2 ikat sayur pakis\r\n1 buah wortel\r\n1 buah terong\r\n10 buah cabe besar (mix merah-hijau)\r\nSegenggam kemiri\r\n4 cm kunyit\r\n12 siung bawang merah\r\n6 siung bawang putih\r\n3 cm jahe\r\n2 cm kencur\r\n2 buah serai\r\n5 lembar daun jeruk purut\r\n4 cm lengkuas\r\nSecukupnya cabe rawit\r\nSecukupnya minyak goreng\r\n500 ml air\r\nSecukupnya garam, merica dan kaldu bubuk\r\n1 buah tomat, potong2\r\n', 'Cuci bersih ikan, buang jeroan dan isi kepalanya. Beri perasan jeruk lemon/nipis (setelahnya boleh dicuci lagi, boleh tidak. Klo saya tidak saya cuci lagi, biar ada asem2nya) \r\nCuci bersih sayur pakis, wortel dan terong. Lalu potong2.\r\niapkan bumbu2 yang akan dihaluskan.\r\nKunyitnya saya bakar dan kemirinya saya sangrai dulu.\r\nSiapkan juga bumbu yang diutuhin.\r\nMasukkan bumbu halus di wajan. Beri 100ml/setengah gelas minyak goreng. Nyalakan kompor.\r\nMasukkan juga bumbu2 utuhnya.\r\nMasukkan juga cabe rawit utuhnya. Klo ingin agak pedas, cukup tusuk cabe rawit dengan pisau. Klo ingin pedas, cabe rawitnya ikut diblender.. atau gilas dengan sendok cabe rawit utuhnya nanti saat akan disantap.\r\nTumis bumbu hingga kandungan air habis, klo kering bisa ditambahi minyak goreng.\r\nTuangi air.\r\nSetelah mendidih, beri garam sedikit agar warna hijau sayur pakis terjaga. Masukkan sayur pakis. Masak hingga sayur pakis cukup empuk.\r\nMasukkan ikan patin.\r\nSetelah ikan berubah warna, masukkan terong dan wortel\r\nSetelah mendidih, beri garam, merica dan kaldu bubuk. Aduk rata. Tes rasa.\r\nSetelah rasa sudah sesuai selera, baru masukkan potongan tomat.\r\nBiarkan mendidih sekali lagi lalu matikan api.\r\nSiap dihidangkan\r\n\r\n', 'Sebagai sumber protein dan lemak baik, seafood sangat baik untuk dikonsumsi, termasuk oleh penderita diabetes.  Salah satu jenis seafood yang dianjurkan adalah ikan. Menu olahan ikan ini cocok untuk dijadikan menu sehari-hari bagi penderita diabetes.\r\n'),
(3, 1, 'Teh Rempah\r\n', 'DIABETES-3.jpg', '3 ruas jari batang kayu manis\r\n1 jempol Jahe\r\n1 batang sereh\r\n800 ml air\r\n', 'Semua bahan cuci bersih\r\nIris jahe dan serai\r\nRebus semua bahan dgn 800 ml air hingga menjadi 500 ml\r\nDpt diminum 2 kali, untuk pengobatan minum nya 2kali pagi dan mlm, utk menjaga kesehatan 1 kali aja,sisanya bisa disimpal dlm kulkas.semoga bermanfaat\r\n', 'beberapa jenis teh herbal bisa membantu untuk menjaga kadar gula tetap normal bila dikonsumsi secara tepat dan rutin. Kayu manis baik dikonsumsi oleh penderita diabetes.\r\n'),
(4, 1, 'Es Alpukat\r\n', 'DIABETES-4.jpg', '1 buah Alpukat matang, potong sesuai selera\r\n1 kaleng Susu Steril\r\nSecukupnya Es\r\n', 'Tambahkan es, susu steril dan alpukat.\r\nSajikan\r\n', 'Alpukat juga baik untuk diabetesi karena bisa menciptakan rasa kenyang lebih lama setelah dikonsumsi. Hal ini mampu meningkatkan kinerja hormon insulin. Lemak yang terkandung adalah lemak tak jenuh yang justru bagus untuk mengendalikan gula darah. sehingg'),
(5, 1, 'Bubur Diabet\r\n', 'DIABETES-5.jpg', '50 gr nasi yang disimpan dilemari es selama 24 jam dulu ke\r\n20 gr ikan kakap putih kukus\r\n50 gr bunga kol kukus\r\n1/2 potong serai geprek\r\n250 ml kaldu jamur Shitake \r\n', 'Siapkan semua bahan\r\nUntuk kaldu yang diabet gagal ginjal jamurnya Shitake cara bisa dilihat seri Imun. Hasil nya ada 250 ml\r\nBisa +kan air lagi 250 ml untuk jamur Shitake \r\nBlender nasi dan kaldu masukan ke wajan masukan sereh \r\nBlender nasi dan kaldu masukan ke wajan masukan sereh. Tunggu sampai jadi bubur\r\nUntuk kembang kol cincang kecil - kecil\r\nsajikan \r\n', 'Bagi penderita diabetes yang ingin mengkonsumsi bumbur tidak perlu khawatir, karena menu yang satu ini merupakan campuran olahan ikan kakap. Konsumsi ikan kakap membantu dalam mengatur berat badan dengan meningkatkan metabolisme tubuh dengan konsentrasi k'),
(6, 2, '\"Boat\" Bayam Oat Cookies\r\n', 'PNEUMONIA-1.jpg', '1 sdm Oat (sy pakai quaker oat)\r\n1 sdm Tepung beras merah organik\r\n4 sdm Tepung terigu\r\n8 lembar Daun bayam cincang halus\r\n1 butir Kuning telur\r\n2 sdm Salted butter\r\n2 sdm Keju parut\r\n', 'Siapkan wadah, tuang semua bahan dalam wadah, uleni hingga kalis dan bisa dibentuk.\r\nSiapkan loyang anti lengket, bentuk bulat tipis semua adonan dan tata di loyang.\r\nPanaskan oven pada suhu 150°C selama 10 menit, lalu panggang adonan pada suhu yang sama selama 15-20 menit. Rasanya gurih dan renyah.\r\nsajikan \r\n', 'Menu kali ini sangat di rekomendasikan bagi penderita pneumonia karena mengandung oat dan juga bayam yang sangat baik untuk tubuh.\r\n'),
(7, 2, 'Daging Masak Putih\r\n', 'PNEUMONIA-2.jpg', '1/2 kg daging, potong2 sesuai selera\r\n2 sendok makan air perasan asam jawa\r\nBumbu halus\r\n6 bawang merah\r\n3 bawang putih\r\n6 kemiri\r\n1 cm jahe\r\nSedikit jintan\r\nSedikit pala\r\nBumbu lainnya\r\n3 lembar daun salam\r\n2 sereh\r\n1 cm Lengkuas, di geprek\r\nKayu manis\r\nBunga lawang\r\nKapulaga\r\n1/2 liter santan kental\r\n2 buah kentang, potong sesuai selera\r\n', 'Cuci daging hingga bersih, masukan air asam jawa dan garam. Aduk dan diam kan sebentar\r\nBlender bumbu halus\r\nPanaskan minyak dan masukan daging. Masak sebentar\r\nSelanjutnya tambahkan bumbu halus dan bumbu lainnya beserta santan dan juga garam\r\nMasak sampai daging empuk\r\nKlo daging nya belum empuk, boleh tambahkan air. Koreksi rasa\r\nsajikan \r\n', 'Menu kali ini dapat membantu mengatasi jaringan yang rusak dan membentuk jaringan baru di dalam tubuh karena kandungan dari daging putihnya.\r\n'),
(8, 3, 'Mantau Gandum Isi\r\n', 'ALZHEIMER-1.jpg', '4 buah mantau gandum frozen\r\n4 lembar smoked beef\r\n1/4 sdt lada hitam\r\n1/4 buah bombai, cincang\r\n3 lembar selada\r\n1 sdt wijen sangrai\r\n', 'Tumis bombay sampai layu, masukkan semoked beef, beri lada.\r\nKukus mantau -+10 menit. Angkat dan belah bagian tengah tapi jangan sampai putus.\r\nLalu beri selada dan isian. Taburi wijen dan sajikan.\r\n', 'Ada beragam cara mencegah Alzheimer, salah satunya melalui pola makan dengan gizi seimbang. Sehingga menu ini sangat cocok karena berbahan dasar gandum dan juga daging'),
(9, 3, 'Urap Sayur dan Biji\r\n', 'ALZHEIMER-2.JPG', 'Tauge panjang\r\nKacang panjang, potong ²\r\nKangkung, potong-potong\r\nBiji kedelai/biji kacang merah/biji kecipir/biji kacang kapri\r\nBumbu urap, (lihat resep)\r\nLontong kerucut\r\n', 'Rebus masing-masing sayuran dan biji-bijian\r\nCampurkan dengan bumbu urap\r\nSajikan dengan lontong kerucut\r\n', 'Menu yang satu ini juga sangat direkomendasikan karena seluruh bahannya adalah makanan yang dianjurkan untuk penderita alzheimer, seperti berbagai macam biji-bijian yang digunakan yang disinyalir mempunyai efek yang dapat menghambat kerusakan sel-sel otak'),
(10, 4, 'sandwich\r\n', 'JANTUNG-1.jpg', '- 4 lembar roti tawar, panggang sebentar\r\n- 2 butir telur\r\n- 2 lembar daging asap\r\n- 2 lembar daun selada\r\n- 1 buah tomat, buang biji, iris tipis\r\n- 2 lembar keju sliced\r\n- 1 buah timun, buang biji, iris tipis\r\n- 1/2 buah bawang bombai, iris halus\r\n- 2 sdm susu cair\r\n- 3 sdm mayones\r\n- 2 sdm susu kental manis\r\n- 1 sdm air jeruk nipis\r\n- 2 sdm minyak zaitun\r\n- Garam dan lada bubuk secukupnya\r\n', '- Campur timun, tomat, mayones, susu kental manis, dan air jeruk nipis. Aduk rata, sisihkan.\r\n- Panaskan minyak zaitun, goreng daging asap sampai matang, angkat, sisihkan.\r\n- Campur telur, bawang bombai, susu cair, garam, dan lada bubuk, kocok rata, tuang ke teflon sisa menggoreng smoke beef.\r\n- Buat telur orak-arik yang tidak terlalu kering, matikan api, sisihkan.\r\n- Ambil selembar roti tawar, beri mayones, daging asap, selada lalu telur orak-arik, timpa mayones lagi, lalu keju, dan terakhir roti, beri tusuk gigi supaya tidak berantakan.\r\n- Potong jadi 2, sajikan dengan saus sambal bila suka.\r\n', 'cemilan yang satu ini sangat menggugah selera. Sandwich roti gandum yang dipotong kecil-kecil bisa menjadi camilan yang menyehatkan untuk Anda. sandwich bisa diisi daun bayam, tomat, mentimun, dan bawang merah untuk membuat jantung lebih sehat.\r\n'),
(11, 4, 'Brokoli Tofu Saus Tiram\r\n', 'JANTUNG-2.jpg', '- 1 bonggol brokoli ukuran kecil, siangi lalu rendam air garam 20 menit dan bilas bersih\r\n- 2 buah wortel, potong-potong\r\n- 1 buah tofu, potong-potong\r\n- 3 siung bawang putih, cincang\r\n- 1/4 bawang bombai, iris\r\n-1 sdm tepung maizena larutkan dengan sedikit air\r\nBahan saus:\r\n- 2 sdm saus tiram\r\n- 1/2 sdm kecap manis\r\n- Garam, gula pasir\r\n- 300 ml air matang\r\n', '- Kukus brokoli dan wortel hingga empuk. Sisihkan.\r\n- Goreng tofu hingga berkulit. Sisihkan.\r\n- Panaskan sedikit minyak, tumis bawang putih dan bawang bombai hingga harum\r\n- Masukkan semua bahan saus tunggu mendidih masukkan brokoli, wortel, dan tofu, aduk perlahan.\r\n- Koreksi rasa, kentalkan dengan larutan maizena. Angkat dan sajikan.\r\n', 'Tofu dapat membantu dalam mengurangi resiko penyakit jantung. Menu yang murah meriah ini mengandung saponini, yaitu senyawa yang dianggap dapat memiliki efek perlindungan pada kesehatan jantung.\r\n'),
(12, 4, 'Bubur Jagung Manis\r\n', 'JANTUNG-3.jpg', '- 2 bonggol jagung manis\r\n- 50 gr sagu mutiara siap pakai\r\n- 150 gr gula pasir\r\n- 800 ml air\r\n- 4 sdm krimer\r\n- 1/2 sdt garam\r\n- 3 lembar daun pandan, simpulkan\r\n- 5 cm kayu manis\r\n', '- Sisir jagung manis, blender sebagian jagung, bersama air, gula pasir, daun pandan, kayu manis, dan garam.\r\n- Masak jagung manis yang telah disisir. Lalu sebagian jagung manis diblender.\r\n- Tunggu hingga bahan matang.\r\n- Masukkan krimer, aduk rata.\r\n- Terakhir masukkan sagu mutiara, aduk rata. Sajikan.\r\n', 'Salah satu cara yang cukup efektif untuk mencegah penyakit jantung adalah mengonsumsi jagung. Vitamin C, karotenoid, dan bioflavonoid yang terkandung dalam jantung bisa membantu menyehatkan jantung. Maka dari itu menu ini cocok untuk penderita jantung unt'),
(13, 4, 'Sup Tomat', 'JANTUNG-4.jpg', '- 2 buah tomat\r\n- 1 buah tomat, buang isinya, potong dadu\r\n- 1 buah wortel, potong dadu\r\n- 100 gr ayam cincang\r\n- 5 batang buncis, iris tipis\r\n- Air kaldu ayam\r\n- 1 siung bawang putih, cincang\r\n- 1/4 bawang bombai, cincang\r\n- Garam, gula, pala bubuk, kaldu bubuk secukupnya\r\n', '- 2 buah tomat, rebus, buang kulitnya, blender dan saring, sisihkan\r\n- Tumis bawang bombai dan bawang putih hingga harum.\r\n- Masukkan ayam cincang, potongan wortel, buncis dan tomat. Tumis hingga layu.\r\n- Kemudian masukkan jus tomat dan air kaldu ayam.\r\n- Bumbui masakan dengan garam, gula, pala dan kaldu bubuk. Koreksi rasa. Sajikan.\r\n', 'Banyak pilihan makanan yang dapat dijadikan sarapan sehat untuk anda, satu diantaranya adalah tomat. Tomat bisa dijadikan sup tomat selain dari pilihan resep makanan lain dari bahan dasar tomat.\r\n'),
(14, 5, 'Salad Sayur', 'GINJAL-1.jpg', '150 gr paprika merah\r\n100 gr paprika kuning\r\n100 gr romance\r\n100 gr timun\r\n', 'Siapkan semua bahan. Potong2 sesuai selera\r\nAmbil pasta probiotik asam amino secukupnya beri air dikit aduk aduk\r\nSiapkan sayur pythocemical dan pastanya biasanya untuk proteinnya saya pakai dinsum tahu panggang\r\nsajikan\r\n', 'menu yang satu ini penuh dengan sayur sayuran sesuai dengan namanya. Menu kali ini sangat baik untuk kesehatan ginjal. Kombinasi dari paprika yang  sarat dengan vitamin A, nutrisi penting untuk fungsi kekebalan, yang sering dikompromikan pada orang dengan'),
(15, 5, 'Herbal Drink', 'GINJAL-2.jpg', '5 butir kapulaga\r\n5 buah cengkeh\r\n3 butir bunga lawang\r\n200 ml air panas\r\n', 'Seduh semua bahan dengan air panas.\r\nAduk rata. Tunggu hangat.\r\nSiap diminum. Bisa dikonsumsi setiap hari pada pagi hari.\r\n\r\n', 'Kapulaga termasuk dalam jenis rempah yang bisa dijadikan bumbu dan obat-obatan herbal. Bahkan, tidak banyak yang mengetahui bahwa manfaat kapulaga mampu cegah penyakit ginjal juga.'),
(16, 6, 'Jus seledri ketimun dan kurma\r\n', 'HIPERTENSI-1.jfif', '5 batang seledri\r\n1 buah ketimun\r\n3 buah kurma keluarkan bijinya (jika tidak suka bisa ganti dgn gula tropicana slim atau diabetasol)\r\n400 ml air es\r\n', 'Cuci bersih seledri dan ketimun lalu potong-potong\r\njuicer serta kurma dan blender hingga halus\r\nsajikan\r\n', 'mengkonsumsi kurma bagi penderita penyakit ginjal ternyata boleh-boleh saja. Sebab kurma bersifat basa yang bisa menetralkan asam di tubuh.Jika dilihat dari pHnya, kurma termasuk golongan alkali. Asalkan tidak berlebihan, kurma aman dikonsumsi oleh pender'),
(17, 6, 'Cah Seledri Jamur\r\n', 'HIPERTENSI-2.jpg', '500 gr seledri besar\r\n200 gr udang kupas\r\n50 gr jamur kering direndam\r\n1 sm maizena dicairkan\r\n1 st garam\r\n1/2 st lada\r\n3 sm saos tiram\r\n2 SM kecap Kikkoman\r\n3 sm Olive oil\r\n3 siung bawang putih diiris tipis\r\n300 ml air\r\n', 'Irisan batang, dipisahkan dengan irisan daun, di Cah batangnya dulu\r\nSetelah jamurnya direndam 30 menit, dipotong dan dicuci lagi, tiriskan\r\nPanaskan olive oil dan tumis bawang putih sampai harum. Tambahkan udang Cah sampai berubah warnanya\r\nMasukan batang seledri, Cah kembali sebentar, taburi garam dan lada\r\nMasukan jamur dan daun seledri serta saus tiram dan kecap kikkoman, beri air dan tumis sampai matang, tambahkan maizena cair, setelah mengental, matikan api. Siap disajikan selagi hangat\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'menu yang satu ini sangat ampuh untuk menurunkan hipertensi. Karena perpaduan antara seledri dan jamur yang mana Ekstrak seledri dipercaya bisa menurunkan tekanan darah tinggi atau hipertensi. Hal ini diduga berkat kandungan antioksidan dalam daun seledri'),
(18, 7, 'Bubur hati ayam telur santan\r\n', 'HIPOTENSI-1.jpg', '50 gram hati ayam rebus cincang halus\r\n3 sdm nasi putih\r\n1 butir telur ayam\r\n1 lembar sawi cincang halus\r\n1 buah tomat ceri cincang halus\r\n1 sdm santan kental\r\n300 ml air\r\n1 sdt kaldu ayam non msg\r\n1 sdm VCO\r\n1 sdm margarin\r\n1 siung bawang putih cincang\r\n1 siung bawang merah cincang\r\n1 lembar daun salam\r\n', 'Tumis duo bawang dan daun salam dengan VCO + Margarin sampai agak layu\r\nMasukan air, hati ayam, tomat, sawi, nasi, kaldu ayam dan aduk hingga mendidih\r\nSetelah itu masukan santan sambil diaduk\r\nSetelah air agak surut masukan telur ayam sambil diaduk\r\nMasak dan aduk hingga air benar2 surut\r\nBlender/saring untuk menyesuaikan tekstur\r\nSajikan\r\n', 'Hati ayam diketahui sangat kaya dengan kandungan asam folat yang sangat baik untuk penderita darah rendah. Konsumsi makanan ini dan jeroan lainnya juga bisa mengontrol dan menstabilkan tekanan darah rendah.\r\n'),
(19, 8, 'Puding kelapa longan\r\n', 'TIFUS-1.jpg', 'Puding bening\r\n4 gr agar plain\r\n1/2 kaleng air longan + air kelapa total 400 ml\r\n1-2 sdm gula pasir\r\nDaging Kelapa muda,(1 buah)iris iris kecil\r\nUntuk puding susu\r\n1,5 bungkus agar plain\r\n1000 ml susu cair uht\r\n100 ml air longan kaleng\r\n100 ml air kelapa muda\r\n5-6 sdm gula pasir\r\n1/2 sdt pasta vanilla\r\nSecubit garam\r\n1 sdm maizena larutkan dengan 1 sdm air\r\n', 'Puding bening\r\nTata longan dan kelapa muda di loyang puding,saya pake cetakan diameter 22 cm.\r\nMasak semua bahan sampa mendidih. Tuang di loyang perlahan,agar longan dan kelapa tidak mengambang. Sisihkan biarkan setengah set\r\nPuding susu\r\nCampur semua bahan,masak sampai mendidih. Kemudian setelah uap menghilang,tuang ke atas puding sebelumnya. Diamkan minimal 6 jam sampai benar benar set.\r\n', 'Tifus merupakan penyakit infeksi bakteri Salmonella typhosa, yang umumnya menyebar melalui makanan dan atau minuman yang telah terkontaminasi. Terapi antibiotik merupakan penanganan yang paling efektif. Sehingga menu ini sangat cocok untuk penderita tifus'),
(20, 10, 'Bubur sumsum pisang\r\n', 'DIARE-1.jfif', '100 gr tepung beras\r\n150 ml air\r\nSejumput garam\r\n1/2 pisang di blender (me: pisang raja yg manis)\r\n1 buah keju diparut\r\n', 'Masukkan tepung beras, pisang dan air secara bersamaan ke dalam pemanas air lalu aduk hingga berbuih dan campurkan sedikit garam\r\nMasak aduk-aduk hingga mengental selama 10 menit\r\nBila telah matang diamkan hingga bubur sumsum agar hangat saat dikonsumsi lalu taburi parutan keju di atasnya.\r\n', 'Ketika sedang mengalami diare, usus akan sulit mencerna makanan yang mengandung serat tinggi. Sehingga dianjurkan untuk mengonsumsi makanan tinggi karbohidrat namun rendah serat seperti bubur nasi atau bubur sumsum. Untuk makanan berserat, dianjurkan memi'),
(21, 12, 'Sayur asem \r\n', 'ASAMURAT-1.jfif', '1 genggam ikatan Kacang Panjang\r\n1 buah Wortel\r\n1 buah Labu Siam\r\n1 buah Jagung Manis\r\n5 mata Asam Jawa\r\n4 siung Bawang Merah\r\n3 siung Bawang Putih\r\n2 buah Cabai Merah Besar\r\n1 ruas jari Lengkuas\r\n1/2 bks Terasi Udang\r\n1 lbr Daun Salam\r\n2 sdt Garam\r\n1 sdt Kaldu Bubuk\r\n1 sdm Gula Pasir\r\n1200 ml Air\r\n', 'Cuci bersih sayuran dan potong2 sesuai selera.\r\nHaluskan bawang merah-putih, cabai, & terasi.\r\nDidihkan air, lalu tambahkan bumbu halus, asam, lengkuas, & daun salam. Masukkan jagung, labu, wortel, & kacang panjang.\r\nambahkan bumbu lainnya sambil koreksi rasa. Masak hingga tekstur sayuran sesuai selera.\r\nSayur asem siap disajikan.\r\n', 'Biasanya, sayur asam terdiri dari wortel, labu siam, dan jagung manis. Wortel bermanfaat bagi penderita asam urat karena kaya akan antioksidan dan diperkaya oleh serat yang dapat membantu mengeluarkan asam urat dari tubuh. Labu siam yang rendah purin dan '),
(22, 13, 'Jamu Tradisional Migrain\r\n', 'MIGRAIN-1.jfif', 'secukupnya daun dewa\r\n100 cc air kelapa muda\r\n', 'Cuci bersih dau dewa kemudian cacah dan blender bersama air kelapa muda hingga daun halus\r\n', 'Daun dewa mengandung minyak atsiri yang bermanfaat untuk meredakan stress, meningkatkan mood, dan menghilangkan rasa sakit akibat migrain. Meminum air rebusan daun dewa tentu sangat disarankan ketika mengalami migrain.\r\n'),
(23, 14, 'Jsr Batuk kering\r\n', 'BATUKKERING-1.jfif', '7 buah Kapulaga\r\n1 buah Lemon\r\n3 buah Sereh\r\nsecukupnya Cengkeh, lada, kayumanis\r\n5 buah Jahe merah\r\n3 buah Kencur\r\nsecukupnya Gula batu\r\n1 liter Air\r\n', 'Semua bahan dipotong, masukkan ke air mendidih, rebus hingga mendidih. Sajikan selagi hangat\r\n', 'Sensasi hangat dari jahe mampu meredakan nyeri dan merilekskan otot-otot di sekitar tenggorokan sehingga batuk pun berkurang ditambah dengan Lemon kaya akan vitamin C dan bersifat alkali dalam tubuh yang mampu membunuh bakteri di dalam tubuh penyebab batu'),
(24, 15, 'Herbal drink Batuk berdahak\r\n', 'BATUKBERDAHAK-1.jfif', '3 butir bunga lawang/ pekak/ star anise\r\n1 sdt cengkeh\r\n200 ml air panas\r\n1 sdm Madu\r\n', 'Seduh dengan air panas. Tunggu hangat. Campurkan dengan madu. Minum 1-2 kali sehari.\r\n\r\n', 'Berdasarkan penelitian, madu yang memiliki rasa manis dapat memicu produksi air liur dan lendir. Hal tersebut bisa membasahi tenggorokan sehingga meredakan batuk. Sehingga menu ini snagat cocok untuk penderita batuk berdahak.\r\n'),
(25, 16, 'Bubur kunyit\r\n', 'MAAG-1.jfif', '2,5 sendok/centong nasi matang\r\n400-500 ml air matang\r\n3 tahu kuning\r\n2 buah telur rebus untuk topping\r\n2 batang serai bagi 2 lalu geprek\r\n3 lembar daun salam\r\n1 batang seledri\r\n2 siung bawang merah iris tipis\r\n1 siung bawang putih iris tipis\r\n1 sdm bubuk bawang putih *optional\r\n1 ruas kunyit bagi 3 lalu geprek\r\n1 sdm kaldu jamur\r\n1 sdt garam *optional kalau tidak mau garam tambah kaldu jamur\r\n1 sdt bubuk kunyit *optional kalau mau kuning bgt warna buburnya\r\n', 'Campurkan semua bahan, aduk merata dengan bumbunya.\r\nMasak dengan api sedang janganlupa untuk selalu mengaduk agar tidak berkerak/gosong (kecilkan api ketika air akan meluap).\r\nMasak kurang lebih 15menit. (Kalau aku 6menit pertama di api sedang dan selanjutnya di api kecil sambil diaduk)\r\nSelesai, sajikan\r\n', 'Ketika mengalami maag, diperlukan mengonsumsi makanan yang lunak agar mudah dicerna dan membantu sistem pencernaan bekerja dengan baik. Maka dari itu, bubur ayam sangat direkomendasikan untuk dikonsumsi. kunyit diketahui dapat meredakan gejala asam lambun'),
(26, 17, 'Telur dadar daun mangkok\r\n', 'ANEMIA-1.jfif', '5 helai daun mangkok kecil\r\n1 butir telur bebek\r\n1 siung kecil bawang putih\r\n2 siung bawang merah\r\n1/2 buah tomat\r\nSecukupnya garam\r\nSecukupnya merica\r\n', 'Iris halus daun mangkok muda\r\nCincang semua bumbu, masukkan telur\r\nKocok telor, beri garam & merica bubuk\r\nGoreng sreng sreng\r\n', 'Telur kaya akan kandungan zat besi, meskipun tidak sebanyak yang terdapat pada daging merah. Selain meningkatkan zat besi, telur juga mengatasi peradangan yang terjadi secara bersamaan. Dalam mengonsumsinya, telur harus direbus atau digoreng hingga matang'),
(27, 18, 'The hijau mawar\r\n', 'LIVER-1.jfif', '2 gram teh hijau\r\n1 butir rosebud (pucuk mawar kering)\r\n200 ml air panas\r\n', 'Siapkan alat penyeduh teh kesukaan Anda.\r\nTimbang teh hijau\r\nMasukkan sebutir rosebud\r\nTuang air panas (200 ml)\r\nSeduh selama kurang lebih 14 menit\r\nNikmati dengan tenang\r\n', 'Teh hijau dikenal kaya akan antioksidan katekin. Teh bunga mawar memiliki kandungan antioksidan polifenol yang setara dengan teh hijau. Antioksidan ini dapat mencegah, memperlambat, bahkan menghentikan proses oksidasi di dalam tubuh. Proses oksidasi adala'),
(28, 19, 'Jus jambu biji merah\r\n', 'DEMAMBERDARAH-1.jfif', '1 buah jambu biji matang ukuran besar (cuci bersih)\r\n500 ml air\r\n3 sdm gula pasir\r\n', 'Potong2 jambu\r\nBlender jambu bersama gula pasir dan air hingga halus\r\nTuang dalam gelas saji yg sdh di isi es batu\r\n', 'Jambu biji memiliki kandungan flavonoid jenis kuersetin yang dapat menghambat virus dengue untuk memperbanyak diri di dalam tubuh. Virus dengue sendiri dapat menyebabkan pendarahan akibat rusaknya trombosit dalam darah. Dengan begitu, jambu biji direkomen'),
(29, 20, 'Soup Ayam Rempah', 'DEMAM-1.jfif', '1 liter kaldu ayam\r\n250 gram daging ayam disuwir\r\n125 gram wortel dipotong dadu\r\n100 gram kembang kol dipotong kecil\r\n25 gram seledri diiris halus\r\n2-5 siung bawang putih diiris halus\r\n1 sdt jahe bubuk atau diparut halus\r\n1 sdt kunyit bubuk atau diparut halus\r\n1 sdm minyak goreng atau minyak zaitun', 'Panaskan minyak goreng atau minyak zaitun dengan api sedang di dalam panci, lalu tumis wortel selama 2-5 menit atau sampai empuk.\r\nMasukkan air kaldu dan daging ayam suwir. Tutup panci dan biarkan di atas api selama 5-10 menit.\r\nMasukkan kembang kol, bawang putih, jahe, dan kunyit. Rebus lagi selama 2 menit.\r\nMatikan api, tambahkan seledri iris, garam, dan bumbu lain sesuai selera.\r\nSegera sajikan selagi hangat.', 'Berbagai elemen dalam semangkuk sup ayam hangat sudah terbukti bisa membantu meredakan berbagai gejala sakit. Misalnya saja, kaldu hangat baik untuk mencegah dehidrasi sekaligus meredakan hidung tersumbat, daging ayam dengan kandungan protein untuk mengua'),
(32, 10, 'Soto Ayam Madura', '19062022165923authentication.png', 'habab\r\nhabsb\r\nsjsjs\r\nksksk\r\nksksk', 'ksksks\r\nksksj\r\njsjs\r\njdjdj', 'jshshabab\r\nssjsjs'),
(35, 10, 'Testing resep Edit', '19062022192503default.png', 'Testing resep', 'Testing resep', 'Testing resep');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `menupantangan`
--
ALTER TABLE `menupantangan`
  ADD PRIMARY KEY (`idpantangan`),
  ADD KEY `idpenyakit` (`idpenyakit`);

--
-- Indexes for table `menurekomendasi`
--
ALTER TABLE `menurekomendasi`
  ADD PRIMARY KEY (`idrekomendasi`),
  ADD KEY `idpenyakit` (`idpenyakit`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`idpenyakit`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`idresep`),
  ADD KEY `idpenyakit` (`idpenyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menupantangan`
--
ALTER TABLE `menupantangan`
  MODIFY `idpantangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `menurekomendasi`
--
ALTER TABLE `menurekomendasi`
  MODIFY `idrekomendasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `idpenyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `idresep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menupantangan`
--
ALTER TABLE `menupantangan`
  ADD CONSTRAINT `menupantangan_ibfk_1` FOREIGN KEY (`idpenyakit`) REFERENCES `penyakit` (`idpenyakit`);

--
-- Constraints for table `menurekomendasi`
--
ALTER TABLE `menurekomendasi`
  ADD CONSTRAINT `menurekomendasi_ibfk_1` FOREIGN KEY (`idpenyakit`) REFERENCES `penyakit` (`idpenyakit`);

--
-- Constraints for table `resep`
--
ALTER TABLE `resep`
  ADD CONSTRAINT `resep_ibfk_1` FOREIGN KEY (`idpenyakit`) REFERENCES `penyakit` (`idpenyakit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
