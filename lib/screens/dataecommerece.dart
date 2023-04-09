class EcommerceSite {
  final String name;
  List<String> imageUrl;
  final String link;
  final String description;
  bool isFavorite;

  EcommerceSite(
      {required this.name,
      required this.imageUrl,
      required this.link,
      required this.description,
      required this.isFavorite});
}

var ecommerceSites = [
  EcommerceSite(
    name: 'Lazada',
    imageUrl: [
      'https://th.bing.com/th/id/OIP.BWiWddIEnr3x3u-WdZwLdAAAAA?w=177&h=116&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      'https://th.bing.com/th/id/OIP.BWiWddIEnr3x3u-WdZwLdAAAAA?w=177&h=116&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    ],
    description:
        'Lazada Group adalah sebuah perusahaan e-commerce Asia Tenggara yang didirikan oleh Rocket Internet dan Pierre Poignant pada 2012, dan dimiliki oleh Alibaba Group. Pada 2014, Lazada Group mengoperasikan situs-situs di Indonesia, Malaysia, Filipina, Singapura, Thailand, dan Vietnam dan meraih sekitar US 647 juta dari beberapa putaran investasi dari para investornya seperti Tesco, Temasek Holdings, Summit Partners, JPMorgan Chase, Investment AB Kinnevik, dan Rocket Internet.',
    link: 'https://www.lazada.co.id/',
    isFavorite: false,
  ),
  EcommerceSite(
    name: 'Tokopedia',
    imageUrl: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiqQGnQhMSn4isnBDQjx1cFonxclDv-i9P12JkvZriYqa8vIbz&s',
    ],
    description:
        'PT Tokopedia merupakan perusahaan perdagangan elektronik atau sering disebut toko daring. Sejak didirikan pada tahun 2009, Tokopedia telah bertransformasi menjadi sebuah unicorn yang berpengaruh tidak hanya di Indonesia tetapi juga di Asia Tenggara. Hingga saat ini, Tokopedia termasuk marketplace yang paling banyak dikunjungi oleh masyarakat Indonesia.',
    link: 'https://www.tokopedia.com/',
    isFavorite: false,
  ),
  EcommerceSite(
    name: 'Shopee',
    imageUrl: [
      'https://th.bing.com/th?q=White+Shopee+Logo&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.3&pid=InlineBlock&mkt=en-ID&cc=ID&setlang=en&adlt=strict&t=1&mw=247',
    ],
    description:
        'Shopee adalah situs elektronik komersial yang berkantor pusat di Singapura yang dimiliki oleh Sea Limited (sebelumnya dikenal dengan nama Garena), yang didirikan pada 2009 oleh Forrest Li. Shopee pertama kali diluncurkan di Singapura pada tahun 2015, dan sejak itu memperluas jangkauannya ke Malaysia, Thailand, Taiwan, Indonesia, Vietnam, dan Filipina. Mulai tahun 2019, Shopee juga sudah aktif di negara Brasil, menjadikannya negara pertama di Amerika Selatan dan luar Asia yang dikunjungi Shopee. Shopee sendiri dipimpin oleh Chris Feng, mantan karyawan Rocket Internet yang pernah memimpin Zalora dan Lazada.[4]',
    link: 'https://shopee.co.id/',
    isFavorite: false,
  ),
  EcommerceSite(
    name: 'BliBli',
    imageUrl: [
      'https://th.bing.com/th/id/OIP.KMbHmMoZs6rBTMIvs38EHQHaHa?w=181&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    ],
    description:
        'Blibli.com yang merupakan anak perusahaan Djarum di bidang digital yang didirikan pada tahun 2010. Blibli merupakan perusahaan e-commerce asli Indonesia yang fokus dalam membangun ekosistem berbelanja pilihan konsumen dan institusi melalui platform perdagangan omnichannel yang aman untuk setiap gaya hidup yang terpercaya.',
    link: 'https://www.blibli.com/',
    isFavorite: false,
  ),
  EcommerceSite(
    name: 'BukaLapak',
    imageUrl: [
      'https://th.bing.com/th/id/OIP.GugcGM5zLTLYbKG4BMFPOwHaHa?w=169&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    ],
    description:
        'PT Bukalapak.com Tbk (ditulis Bukalapak) merupakan salah satu perusahaan perdagangan elektronik Indonesia. Mulanya perusahaan ini dibentuk oleh pemilik brand shopping lokal melalui grup kepemilikannya yang didirikan oleh Achmad Zaky, Nugroho Herucahyono, dan Muhamad Fajrin Rasyid pada tahun 2010. Bukalapak awalnya merupakan toko daring yang memungkinkan para pelaku Usaha Kecil dan Menengah (UKM) untuk merambah ke dunia maya. Perusahaan tersebut kini telah melakukan ekspansi ke berbagai lini bisnis lain, termasuk membantu meningkatkan penjualan para warung tradisional lewat layanan Mitra Bukalapak. Pada tahun 2017, Bukalapak masuk ke dalam jajaran startup unicorn Indonesia.',
    link: 'https://www.bukalapak.com/',
    isFavorite: false,
  ),
  EcommerceSite(
    name: 'KlikIndomaret',
    imageUrl: [
      'https://th.bing.com/th/id/OIP.JAo4uIXiE_ECEnMOlcgz7gHaD4?w=288&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
    ],
    description:
        'Klik Indomaret adalah toko online Indomaret atau tempat belanja online Indomaret; salah satu inovasi dari Indomaret berupa one stop online store yang menyediakan berbagai macam produk dalam satu situs untuk memenuhi semua kebutuhan konsumen.',
    link: 'https://www.klikindomaret.com/',
    isFavorite: false,
  ),
];
