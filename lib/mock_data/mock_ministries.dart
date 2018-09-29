import 'package:habari_njema/mock_data/mock_contacts.dart';
import 'package:habari_njema/models/ministry.dart';

var youthMinistry = Ministry(
    title: 'Youth Ministry',
    description: '''
Simply put, Youth Ministry is the Church's efforts to help each & every young person grow personally & spiritually.

The purpose of the Youth Ministry program is to prepare students for effective ministry to middle high, senior high, or college students and their families within the context of a local church or a parachurch organization.

Training young people to lead the cause of Christ, and apply Christianity to every area of life is what "youth ministry" is about. If we don't know that, the kids won't either.

Youth ministry is more than programs and events.

Youth Ministry is every effort by the Christian community to reach out to the youth with the love of God as revealed to us in Jesus Christ through the power of the Holy Spirit.

Youth Ministry is a means for both junior high and high school students to grow as individuals while exploring ideas, values, and faith within the context of a supportive community of peers and adults.''',
    contactDetails: [contact3, contact2],
    imageUrl:
        'https://scontent.fdar4-1.fna.fbcdn.net/v/t1.0-9/42421074_1696159903846736_2483840352474103808_o.jpg?_nc_cat=111&_nc_eui2=AeGocOYkSm4AOrZvoqghzxljaICC19SCvZcxIoDQVsbNEi2ZADHA2nlUh-eB1kvmll_JIhbccO38x7coc7wQykKL7NhCbkfjgcIaVHTIqD_fuzkWHNkxqOABeXS9_yMZlEw&oh=fa6780e21d1518e69413f5b621b90f80&oe=5C5CC419');

var childrenMinistry = Ministry(
  title: 'Children Mistry',
  description:
      '''Welcome to the place where your child can laugh and play, learn and grow, develop friendships and community, and discover God's great love for them. The children's ministry spans from infancy through 6th grade. We use creativity to present the story through music, workshops, puppets, teaching, media and small groups.  Our team aims to inspire wonder, encourage discovery, and realize the power we have through God as we walk through the story of His love and how Jesus was His greatest gift ever. ''',
  contactDetails: [contact1],
  imageUrl:
      'https://scontent.fdar4-1.fna.fbcdn.net/v/t1.0-9/42403732_1696159867180073_8071114182004572160_o.jpg?_nc_cat=110&_nc_eui2=AeG-zhdQy6z7B3wpiz6kvsGZQKKVXtPHegHiK2YC13c3wictVnOfG5qi50wuy55vCG7wrivrSc9y6JlFnmaPWBdB3kDkhBquNVrF8mXkuy3eoWSBdaExbrpPOMaCKYsanKU&oh=5a75f5f1119cd55c10614f341b25a448&oe=5C1BCAF0',
);
var worshipMinistry = Ministry(
    title: 'Praise and Worship Minisrty',
    description:
        '''In this one simple verse, David has given us three distinct purposes of worship ministry. These purposes apply whether we’re in a church of 100, 1000, or 10,000. The purposes do not change. We may have different ways of reaching these purposes, but reach them we must. As worship pastors and leaders, we are tasked with leading our church’s worship ministry ''',
    imageUrl:
        'https://scontent.fdar6-1.fna.fbcdn.net/v/t1.0-9/42429460_1696158953846831_254974689191919616_o.jpg?_nc_cat=105&_nc_eui2=AeEQSpT4THsVIEuGca-4w-ACkHcs1oGVMbx97Uiz9bO7qVghTa8np3nHO0reha3f0jdbJ1BuXw49Wb5UajGsVdXrZmEIwl5I7J_q1bVmR3gho857-QSFExi4-oaMFxfLJ38&oh=eb17cd37748ab94dc42621a855864d8d&oe=5C255626',
    contactDetails: [contact4]);

var womenMinistry = Ministry(
  title: 'Women\'s Minisrty',
  description:
      '''Our desire as a women’s ministry is to nurture the hearts of women to know God’s Word and follow faithfully after Christ demonstrating authenticity and love, and serving as we are uniquely made.''',
  imageUrl:
      'https://scontent.fdar6-1.fna.fbcdn.net/v/t31.0-8/28515972_10216111333235730_4767740183796106645_o.jpg?_nc_cat=102&_nc_eui2=AeEF48AGD5LIrWtPJEBCnZJdfAQsL6YfVi9LGiu80OenhJb-RmbQA9vUwmB2d2atOw99B3nJEOVMRJ2t2kshOaW8tNjT4x0VR5c9XL-wZBdmShzOx4c6ZKtp94nR9WHl71A&oh=071636c40127bf7dd70ba36278b323e7&oe=5C237AE4',
);

var menMinistry = Ministry(
    title: 'Men\'s Minisrty',
    description:
        '''Men's Ministry is the active pursuit of men in order to connect them to God, His Word, and other men for the purpose of winning, growing, and training God's man in Christ. 

We know one thing for sure -- God will use the heart and life of anyone who chooses to make himself available to Him. The Bible says, "Go and make disciples of all nations, baptizing them in the name of the Father and the Son and the Holy Spirit." This is the great commission spoken by Jesus Himself. In other words, Jesus Christ is commissioning His followers to go into the entire world and reproduce believers. This is a big calling. 
''',
    imageUrl:
        'https://scontent.fdar6-1.fna.fbcdn.net/v/t1.0-9/42045140_10212718344453764_8381489053052174336_n.jpg?_nc_cat=101&_nc_eui2=AeFry99XwBbInp_qggqPYaWe3aj2_kLqEpnpPNhcTOVcslSMiPZ3Q8UXYcFiFRedsJ9yDsyrJ7-HxiX8tV5DLszKASkgJbpd3BSLD_LBOQr0QlHgIlQ6-XPBXJPj_dinegs&oh=6c9e1cc6c838637848e644d2ecc002c9&oe=5C5D7841',
    contactDetails: [contact4]);

List<Ministry> ministries = [
  worshipMinistry,
  childrenMinistry,
  youthMinistry,
  womenMinistry,
  menMinistry
];
