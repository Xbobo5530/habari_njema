import 'package:habari_njema/mock_data/mock_comments.dart';
import 'package:habari_njema/models/sermon.dart';

var sermon0 = Sermon(
    teacher: 'Pst Zakayo',
    teacherImageUrl:
        'https://scontent.fdar4-1.fna.fbcdn.net/v/t1.0-1/p320x320/42489716_10217826534394687_2135093135502475264_n.jpg?_nc_cat=109&_nc_eui2=AeHH-WIDYbdrZFMGeMM4Hq92bANaljG8YGmf8SN8AzaLKkVkvrVkS4LPLjW1LiGbuRJk1DddZd66w82WmxN4Nr6relDasmCtNzVI8khiq5Xxoq-FaJd4GjERzZat-qja5XI&oh=e4cb69d4e39555bed266e6e32689b3af&oe=5C252BEF',
    title: 'Ukweli ni Huu (The Truth)....',
    description:
        'Ukweli ni Huu (The Truth)....\nNI RAHISI KUMPENDA MKE ANAYE-TII; NA NI RAHISI ZAIDI KUMTII MUME ANAYEKUPENDA.\n * Upendo na Utii Vina-tegemeana!!(It’s easier to LOVE a SUBMISSIVE wife; and much easier to SUBMIT to a LOVING husband).\n * It’s a two-way traffic!!',
    comments: [comment1, comment2, comment3],
    date: DateTime.parse('20180822'),
    imageUrl:
        'https://scontent.fdar6-1.fna.fbcdn.net/v/t1.0-9/42634025_10217834349670064_6451007163098726400_n.jpg?_nc_cat=107&_nc_eui2=AeFYCKLpWP98_o6WPXyQbjv10pUcefQBLMCaGvmJdJVMVQEjxwr5_6iObCYm1Eb7K-RuKjjkfJRJNN6ARwtH8sMHF0HbpzNaURbtfF0x6zzPa1i1OfCPz-1-ODmXHKex2y0&oh=70e886de639ed463f0f8e288564857fa&oe=5C260B8E');

var sermon1 = Sermon(
    title: 'Wraka Wa Kwanza Wa Zakayo ....',
    description: '''WARAKA WA KWANZA WA ZAKAYO KWA WANAWAKE WOTE.
NGUVU ILIYO NDANI YA MWANAMKE:
Mwanamke anayo nguvu inayofanana na nguvu ya NUKLIA (Nuclear). Nguvu ya NYUKLIA inaweza kutumika kutengeneza nishati ya UMEME wa uhakika ambao huboresha maisha ya watu, na nguvu hiyo hiyo inaweza kutengeneza BOMU HATARI linaloweza kuangamiza maisha ya watu wengi kwa muda mfupi.
Biblia inatupa mifano ya wanawake waliotumia nguvu yao vibaya na ambao waliitumia vizuri; hii ni mifano michache:
1. HAWA (EVE): alitumia nguvu yake ya ushawishi vibaya kwa mumewe (ADAMU); matokeo yake ikawa ni anguko baya kwa vizazi vyote vya Mwanadamu (Mwanzo 3).
2. DELILA: Alitumia nguvu yake ya ushawishi dhidi ya shujaa SAMSON; matokeo yake Samson akapoteza kila kitu (Waamuzi 16).
3. YEZEBELI: alitumia nguvu zake kusababisha Taifa la Israel kumuacha MUNGU na kuabudu miungu mingine (1Wafalme 16-17).
4. ESTHER: alitumia nafasi yake kuleta ukombozi kwa Taifa la Israel (Esta 1ff)
5. ELIZABETH: aliendelea kumtia nguvu mume wake (ZAKARIA) aendelee kumtumikia MUNGU kwa uaminifu pamoja na changamoto ya kukosa uzazi (Luka 1)
6. MARIAMU: alikubali kutumiwa na MUNGU kumzaa MKOMBOZI - YESU KRISTO pamoja na kwamba uamuzi wake ungehatarisha maisha yake (Luka 1)
* Katika NDOA; mwanamke anaweza fanyika NUKLIA ya kusababisha NGUVU kwa MUME wake kutimiza majukumu yake ipasavyo; au anaweza kuwa nguvu ya NUKLIA ya kutengeza BOMU la kuyaharibu maisha ya mume na familia yote.
* Katika KANISA; wanawake wanaweza kuwa NGUVU ya KUJENGA kazi ya MUNGU kwa maombi na ushuhudiaji au kubomoa na KUSAMBARATISHA kila kitu kama BOMU Kwa kutumia MIDOMO/NDIMI zao (majungu/maneno).
NB: MAMA na DADA zangu; MUNGU awasaidie muwe NGUVU YA NUKLIA ya kutengeneza NISHATI YA UMEME utakao-nufaisha ndoa zenu, watoto, Kanisa, na Taifa.
MWANAMKE... KATAA KUWA BOMU LA UHARIBIFU!!
MITHALI 14:1; “Kila mwanamke aliye na HEKIMA hujenga nyumba yake; Bali aliye MPUMBAVU huibomoa kwa mikono yake mwenyewe.”''',
    imageUrl:
        'https://scontent.fdar6-1.fna.fbcdn.net/v/t1.0-9/42510148_10217826109384062_1172377371450277888_n.jpg?_nc_cat=104&_nc_eui2=AeEDuwWRPPafCBUvgoQKcTN40RME3jMHZ6Gq3ltEa32wDFrSSMEqOlQPrQv7NcgtTD1SPrIWzTBkLE-2jFEq2Y-3DPem3pW-V0uufSALoJp8Pod023XRKKkPe5e4HoMNyE4&oh=929a1099f873e7ea289827185e99d93c&oe=5C1FAA1B',
    date: DateTime.parse('20180925'),
    comments: [comment4, comment5, comment6, comment7],
    teacher: 'Pst Zakayo',
    teacherImageUrl:
        'https://scontent.fdar4-1.fna.fbcdn.net/v/t1.0-1/p320x320/42489716_10217826534394687_2135093135502475264_n.jpg?_nc_cat=109&_nc_eui2=AeHH-WIDYbdrZFMGeMM4Hq92bANaljG8YGmf8SN8AzaLKkVkvrVkS4LPLjW1LiGbuRJk1DddZd66w82WmxN4Nr6relDasmCtNzVI8khiq5Xxoq-FaJd4GjERzZat-qja5XI&oh=e4cb69d4e39555bed266e6e32689b3af&oe=5C252BEF');

List<Sermon> sermons = [sermon0, sermon1];
