import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['en', 'ja'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String en = '',
    String ja = '',
  }) =>
      [en, ja][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // login
  {
    'ao113yup': {
      'en': 'Welcome Back,',
      'ja': 'お帰りなさい、',
    },
    'sdffg2nt': {
      'en': 'Access your account below or',
      'ja': '以下のアカウントにアクセスするか、',
    },
    'h828dp9i': {
      'en': 'Create Account',
      'ja': 'アカウントを作成する',
    },
    '21bkf52g': {
      'en': 'Your email...',
      'ja': 'あなたのメール...',
    },
    'fisg94jf': {
      'en': 'Password',
      'ja': 'パスワード',
    },
    '5s4wcxhb': {
      'en': 'Forgot Password?',
      'ja': 'パスワードをお忘れですか？',
    },
    'pwt4s8ja': {
      'en': 'Login',
      'ja': 'ログイン',
    },
    'lmlmdk16': {
      'en': 'Continue as guest',
      'ja': 'ゲストとして続行',
    },
  },
  // createAccount
  {
    'zxmaw5d0': {
      'en': 'Welcome,',
      'ja': 'いらっしゃいませ、',
    },
    'vthb5wxq': {
      'en': 'Create your account below, or',
      'ja': '以下でアカウントを作成するか、',
    },
    '93jn7f1m': {
      'en': 'Login',
      'ja': 'ログイン',
    },
    'kldz1yiz': {
      'en': 'Your email...',
      'ja': 'あなたのメール...',
    },
    'muijba83': {
      'en': 'Password',
      'ja': 'パスワード',
    },
    '9b7vmj7a': {
      'en': 'Create Account',
      'ja': 'アカウントを作成する',
    },
    '8y2h1zuw': {
      'en': 'Continue as guest',
      'ja': 'ゲストとして続行',
    },
  },
  // createDogProfile
  {
    '46ohl9se': {
      'en': 'Dog Profile',
      'ja': '犬のプロフィール',
    },
    'g0h19ls5': {
      'en': '1/2',
      'ja': '1/2',
    },
    '4bazbhq9': {
      'en':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'ja': '以下にあなたの犬のプロフィールを記入してください！そして、あなたの子犬を共有するようになります！',
    },
    'xf1qry6x': {
      'en': 'Dog Name',
      'ja': '犬の名前',
    },
    'ndi4vy8g': {
      'en': 'Dog Breed',
      'ja': '犬種',
    },
    'mpenl057': {
      'en': 'Dog Age',
      'ja': '犬の年齢',
    },
    'k0s4tzfc': {
      'en': 'You can add multiple pups in your profile.',
      'ja': 'プロファイルに複数の子犬を追加できます。',
    },
    'idc1v21b': {
      'en': 'Skip',
      'ja': 'スキップ',
    },
    '6zwl0i8j': {
      'en': 'Save & Continue',
      'ja': '保存して続行',
    },
  },
  // createYourProfile
  {
    'z6kxye9y': {
      'en': 'Your Profile',
      'ja': 'あなたのプロフィール',
    },
    'o1k0572t': {
      'en': '2/2',
      'ja': '2/2',
    },
    'bo2s6w4e': {
      'en':
          'Fill out your profile now in order to complete setup of your profile.',
      'ja': 'プロファイルのセットアップを完了するために、今すぐプロファイルに記入してください。',
    },
    '8onjgi89': {
      'en': 'Your Name',
      'ja': 'あなたの名前',
    },
    'boi1hj2t': {
      'en': 'UserName',
      'ja': 'UserName',
    },
    '0a0jyv3p': {
      'en': '@',
      'ja': '@',
    },
    'gazbueas': {
      'en': 'Your Bio',
      'ja': 'あなたの略歴',
    },
    'f67fj0mr': {
      'en': 'Complete Setup',
      'ja': '完全なセットアップ',
    },
  },
  // forgotPassword
  {
    '6idgdbw2': {
      'en': 'Forgot Password',
      'ja': 'パスワードをお忘れですか',
    },
    'ym1yml4e': {
      'en': 'Enter your email',
      'ja': 'メールアドレスを入力',
    },
    'p2vqp9kp': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'ja':
          'パスワードをリセットするためのリンクが記載されたメールをお送りします。上記のアカウントに関連付けられているメールアドレスを入力してください。',
    },
    'ghk2g2js': {
      'en': 'Send Reset Link',
      'ja': 'リセットリンクを送信',
    },
  },
  // homePage
  {
    'kfmt24o9': {
      'en': '@username',
      'ja': '@username',
    },
    's0tod2zy': {
      'en': '2,493',
      'ja': '2,493',
    },
    'ookq0vic': {
      'en': '4',
      'ja': '4',
    },
    '9qw52ad8': {
      'en':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'ja': 'ファンのためだけにInstagramをすばやく再設計して戻ってきました。丸みを帯びた角とかわいいアイコン、他に何が必要か、ハハ。⁣',
    },
  },
  // profilePage
  {
    'luouqocf': {
      'en': 'Add a Dog',
      'ja': '犬を追加する',
    },
    'zq5ir1a7': {
      'en': 'Settings',
      'ja': '設定',
    },
    'z6vopslv': {
      'en': 'Dog Profiles',
      'ja': '犬のプロフィール',
    },
    'hyjac4zs': {
      'en': 'Posts',
      'ja': '投稿',
    },
    '1fgmtccg': {
      'en': '@username',
      'ja': '@username',
    },
    'pnki0vvl': {
      'en': '2,493',
      'ja': '2,493',
    },
    'rff6ct1e': {
      'en': '4',
      'ja': '4',
    },
    'eui7uz93': {
      'en':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'ja': 'ファンのためだけにInstagramをすばやく再設計して戻ってきました。丸みを帯びた角とかわいいアイコン、他に何が必要か、ハハ。⁣',
    },
  },
  // createPost
  {
    'kmmolshr': {
      'en': 'Create Post',
      'ja': '投稿を作成',
    },
    'fy7d0wfw': {
      'en': 'Comment....',
      'ja': 'コメント....',
    },
    'y6omslq4': {
      'en': 'Location',
      'ja': '位置',
    },
    'tbutbtfj': {
      'en': 'Create Post',
      'ja': '投稿を作成',
    },
  },
  // createStory
  {
    '46xi0sru': {
      'en': 'Comment....',
      'ja': 'コメント....',
    },
    '8etj84p3': {
      'en': 'Photo',
      'ja': '写真',
    },
    '824xkdm9': {
      'en': 'Video',
      'ja': 'ビデオ',
    },
    'g5reqepq': {
      'en': 'Create Story',
      'ja': 'ストーリーを作成する',
    },
  },
  // postDetails
  {
    '4ummd2f1': {
      'en': 'Comments',
      'ja': 'コメントコメント',
    },
    '63rs70ub': {
      'en': 'Posted',
      'ja': '投稿',
    },
    'j11pbu6o': {
      'en': 'Comment here...',
      'ja': 'ここにコメント...',
    },
    'fnac9e6y': {
      'en': 'Post',
      'ja': '役職',
    },
  },
  // editSettings
  {
    'he1jaa26': {
      'en': 'Account Settings',
      'ja': 'アカウント設定',
    },
    'pwbv4k47': {
      'en': 'Edit Profile',
      'ja': 'プロファイル編集',
    },
    '1a4w9re7': {
      'en': 'Change Password',
      'ja': 'パスワードを変更する',
    },
    'm9o4as4r': {
      'en': 'Log Out',
      'ja': 'ログアウト',
    },
    '42v0a6nl': {
      'en': 'Settings',
      'ja': '設定',
    },
  },
  // editUserProfile
  {
    'lfw6npot': {
      'en': 'Your Profile',
      'ja': 'あなたのプロフィール',
    },
    'qjrq67b4': {
      'en':
          'Fill out your profile now in order to complete setup of your profile.',
      'ja': 'プロファイルのセットアップを完了するために、今すぐプロファイルに記入してください。',
    },
    'xkxomt4e': {
      'en': 'Your Name',
      'ja': 'あなたの名前',
    },
    'act7cuqz': {
      'en': 'UserName',
      'ja': 'UserName',
    },
    '0mv7ilkd': {
      'en': 'Your Bio',
      'ja': 'あなたの略歴',
    },
    'zpthgsbh': {
      'en': 'Save Changes',
      'ja': '変更内容を保存',
    },
  },
  // editDogProfile
  {
    '2ze2lpkp': {
      'en': 'Dog Profile',
      'ja': '犬のプロフィール',
    },
    'hqorw79p': {
      'en':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'ja': '以下にあなたの犬のプロフィールを記入してください！そして、あなたの子犬を共有するようになります！',
    },
    'nfrqg9pm': {
      'en': 'Dog Name',
      'ja': '犬の名前',
    },
    '761si4lm': {
      'en': 'Dog Breed',
      'ja': '犬種',
    },
    '3cnqvk21': {
      'en': 'Dog Age',
      'ja': '犬の年齢',
    },
    'q5o7end9': {
      'en': 'Adding multiple pups is coming soon.',
      'ja': '複数の子犬を追加することはすぐに来ています。',
    },
    'p51v2ft9': {
      'en': 'Save Changes',
      'ja': '変更内容を保存',
    },
  },
  // changePassword
  {
    'gzezrooz': {
      'en': 'Change Password',
      'ja': 'パスワードを変更する',
    },
    'gdpnyu1u': {
      'en': 'Enter your email',
      'ja': 'メールアドレスを入力',
    },
    '8zibi18a': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'ja':
          'パスワードをリセットするためのリンクが記載されたメールをお送りします。上記のアカウントに関連付けられているメールアドレスを入力してください。',
    },
    'qg5nvvqy': {
      'en': 'Send Reset Link',
      'ja': 'リセットリンクを送信',
    },
  },
  // createDogProfile_New
  {
    'c8pxs061': {
      'en': 'Create Dog Profile',
      'ja': '犬のプロフィールを作成する',
    },
    'okd4psxo': {
      'en':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'ja': '以下にあなたの犬のプロフィールを記入してください！そして、あなたの子犬を共有するようになります！',
    },
    '2lwfp0wp': {
      'en': 'Dog Name',
      'ja': '犬の名前',
    },
    'p0zephqw': {
      'en': 'Dog Breed',
      'ja': '犬種',
    },
    'agnk9g2u': {
      'en': 'Dog Age',
      'ja': '犬の年齢',
    },
    'w43rjhbd': {
      'en': 'Add Pup',
      'ja': '子犬を追加',
    },
  },
  // viewProfilePageOther
  {
    'y1naplz7': {
      'en': 'Message',
      'ja': 'メッセージ',
    },
    'f2kb16o4': {
      'en': 'Dog Profiles',
      'ja': '犬のプロフィール',
    },
    '3r3wv83v': {
      'en': 'Posts',
      'ja': '投稿',
    },
    '0e0a19iv': {
      'en': '@username',
      'ja': '@username',
    },
    'w7zd6wvl': {
      'en': '2,493',
      'ja': '2,493',
    },
    'ryn8abj1': {
      'en': '4',
      'ja': '4',
    },
    'e10z4a7v': {
      'en':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'ja': 'ファンのためだけにInstagramをすばやく再設計して戻ってきました。丸みを帯びた角とかわいいアイコン、他に何が必要か、ハハ。⁣',
    },
  },
  // chatPage
  {
    'frsmlihw': {
      'en': 'Group Chat',
      'ja': 'グループチャット',
    },
  },
  // allChatsPage
  {
    '7ufrprq7': {
      'en': 'Messages',
      'ja': 'メッセージ',
    },
  },
  // addChatUsers
  {
    '3jaegov4': {
      'en': 'Add Friends to chat',
      'ja': 'チャットに友達を追加',
    },
    'gy253yz5': {
      'en': 'Select the friends to add to chat.',
      'ja': 'チャットに追加する友達を選択します。',
    },
    'di8p2cfk': {
      'en': 'Search for friends...',
      'ja': '友達を探す...',
    },
    'pscdl7kg': {
      'en': 'Invite to Chat',
      'ja': 'チャットに招待する',
    },
  },
  // createGroupChat
  {
    '2n6pand2': {
      'en': 'Create Group Chat',
      'ja': 'グループチャットを作成する',
    },
    '72n59taj': {
      'en': 'Select the friends to add to chat.',
      'ja': 'チャットに追加する友達を選択します。',
    },
    '4jmpily6': {
      'en': 'Search for friends...',
      'ja': '友達を探す...',
    },
    '084be3fr': {
      'en': 'Create Chat',
      'ja': 'チャットを作成する',
    },
  },
  // comments
  {
    'syu33tfz': {
      'en': 'Comments',
      'ja': 'コメントコメント',
    },
    'cb431kck': {
      'en': 'Posted',
      'ja': '投稿',
    },
    'nffccvqo': {
      'en': 'Comment here...',
      'ja': 'ここにコメント...',
    },
    '0vdocnid': {
      'en': 'Post',
      'ja': '役職',
    },
  },
  // createModal
  {
    'gxi2ng34': {
      'en': 'Create Story',
      'ja': 'ストーリーを作成する',
    },
    'zfce1io5': {
      'en': 'Share a video of your pup.',
      'ja': 'あなたの子犬のビデオを共有します。',
    },
    '26l31upz': {
      'en': 'Create Post',
      'ja': '投稿を作成',
    },
    'l7dgfxxk': {
      'en': 'Share a photo that will appear in the timeline.',
      'ja': 'タイムラインに表示される写真を共有します。',
    },
    '48nktk87': {
      'en': 'Create Post',
      'ja': '投稿を作成',
    },
    'dsfd50u8': {
      'en': 'Share photos on your timeline.',
      'ja': 'タイムラインで写真を共有します。',
    },
  },
  // deletePost
  {
    '1gz3v85v': {
      'en': 'Delete Post',
      'ja': '投稿を削除',
    },
    '9u3m5h59': {
      'en': 'Cancel',
      'ja': 'キャンセル',
    },
  },
  // deleteStory
  {
    '1jevukmb': {
      'en': 'Delete Story',
      'ja': 'ストーリーを削除',
    },
    '2bnw1f6a': {
      'en': 'Cancel',
      'ja': 'キャンセル',
    },
  },
  // Miscellaneous
  {
    'rma7kfh4': {
      'en': '',
      'ja': '',
    },
    '8ap8k4ns': {
      'en': '',
      'ja': '',
    },
    'krwtivsv': {
      'en': '',
      'ja': '',
    },
    'e6z2adp1': {
      'en': '',
      'ja': '',
    },
    'vnbg9cs3': {
      'en': '',
      'ja': '',
    },
    'r48cbcwe': {
      'en': '',
      'ja': '',
    },
    '2igp658h': {
      'en': '',
      'ja': '',
    },
    'lzc4j09n': {
      'en': '',
      'ja': '',
    },
    'u5rm0hzn': {
      'en': '',
      'ja': '',
    },
    'jcf6yiqr': {
      'en': '',
      'ja': '',
    },
    '07fqau9k': {
      'en': '',
      'ja': '',
    },
    'o2jjjf6b': {
      'en': '',
      'ja': '',
    },
    '4kp1rvli': {
      'en': '',
      'ja': '',
    },
    'cil5jzl0': {
      'en': '',
      'ja': '',
    },
    'p05hkwr5': {
      'en': '',
      'ja': '',
    },
    '1k7hif19': {
      'en': '',
      'ja': '',
    },
    '6afiloxb': {
      'en': '',
      'ja': '',
    },
  },
].reduce((a, b) => a..addAll(b));
