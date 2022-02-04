import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['ja', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String ja = '',
    String en = '',
  }) =>
      [ja, en][languageIndex] ?? '';
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
      'ja': 'Welcome Back,',
      'en': '',
    },
    'sdffg2nt': {
      'ja': 'Access your account below or',
      'en': '',
    },
    'h828dp9i': {
      'ja': 'Create Account',
      'en': '',
    },
    '21bkf52g': {
      'ja': 'Your email...',
      'en': '',
    },
    'fisg94jf': {
      'ja': 'Password',
      'en': '',
    },
    '5s4wcxhb': {
      'ja': 'Forgot Password?',
      'en': '',
    },
    'pwt4s8ja': {
      'ja': 'Login',
      'en': '',
    },
    'lmlmdk16': {
      'ja': 'Continue as guest',
      'en': '',
    },
  },
  // createAccount
  {
    'zxmaw5d0': {
      'ja': 'Welcome,',
      'en': '',
    },
    'vthb5wxq': {
      'ja': 'Create your account below, or',
      'en': '',
    },
    '93jn7f1m': {
      'ja': 'Login',
      'en': '',
    },
    'kldz1yiz': {
      'ja': 'Your email...',
      'en': '',
    },
    'muijba83': {
      'ja': 'Password',
      'en': '',
    },
    '9b7vmj7a': {
      'ja': 'Create Account',
      'en': '',
    },
    '8y2h1zuw': {
      'ja': 'Continue as guest',
      'en': '',
    },
  },
  // createDogProfile
  {
    '46ohl9se': {
      'ja': 'Dog Profile',
      'en': '',
    },
    'g0h19ls5': {
      'ja': '1/2',
      'en': '',
    },
    '4bazbhq9': {
      'ja':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'en': '',
    },
    'xf1qry6x': {
      'ja': 'Dog Name',
      'en': '',
    },
    'ndi4vy8g': {
      'ja': 'Dog Breed',
      'en': '',
    },
    'mpenl057': {
      'ja': 'Dog Age',
      'en': '',
    },
    'k0s4tzfc': {
      'ja': 'You can add multiple pups in your profile.',
      'en': '',
    },
    'idc1v21b': {
      'ja': 'Skip',
      'en': '',
    },
    '6zwl0i8j': {
      'ja': 'Save & Continue',
      'en': '',
    },
  },
  // createYourProfile
  {
    'z6kxye9y': {
      'ja': 'Your Profile',
      'en': '',
    },
    'o1k0572t': {
      'ja': '2/2',
      'en': '',
    },
    'bo2s6w4e': {
      'ja':
          'Fill out your profile now in order to complete setup of your profile.',
      'en': '',
    },
    '8onjgi89': {
      'ja': 'Your Name',
      'en': '',
    },
    'boi1hj2t': {
      'ja': 'UserName',
      'en': '',
    },
    '0a0jyv3p': {
      'ja': '@',
      'en': '',
    },
    'gazbueas': {
      'ja': 'Your Bio',
      'en': '',
    },
    'f67fj0mr': {
      'ja': 'Complete Setup',
      'en': '',
    },
  },
  // forgotPassword
  {
    '6idgdbw2': {
      'ja': 'Forgot Password',
      'en': '',
    },
    'ym1yml4e': {
      'ja': 'Enter your email',
      'en': '',
    },
    'p2vqp9kp': {
      'ja':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en': '',
    },
    'ghk2g2js': {
      'ja': 'Send Reset Link',
      'en': '',
    },
  },
  // homePage
  {
    'kfmt24o9': {
      'ja': '@username',
      'en': '',
    },
    's0tod2zy': {
      'ja': '2,493',
      'en': '',
    },
    'ookq0vic': {
      'ja': '4',
      'en': '',
    },
    '9qw52ad8': {
      'ja':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en': '',
    },
  },
  // profilePage
  {
    'luouqocf': {
      'ja': 'Add a Dog',
      'en': '',
    },
    'zq5ir1a7': {
      'ja': 'Settings',
      'en': '',
    },
    'z6vopslv': {
      'ja': 'Dog Profiles',
      'en': '',
    },
    'hyjac4zs': {
      'ja': 'Posts',
      'en': '',
    },
    '1fgmtccg': {
      'ja': '@username',
      'en': '',
    },
    'pnki0vvl': {
      'ja': '2,493',
      'en': '',
    },
    'rff6ct1e': {
      'ja': '4',
      'en': '',
    },
    'eui7uz93': {
      'ja':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en': '',
    },
  },
  // createPost
  {
    'kmmolshr': {
      'ja': 'Create Post',
      'en': '',
    },
    'fy7d0wfw': {
      'ja': 'Comment....',
      'en': '',
    },
    'y6omslq4': {
      'ja': 'Location',
      'en': '',
    },
    'tbutbtfj': {
      'ja': 'Create Post',
      'en': '',
    },
  },
  // createStory
  {
    '46xi0sru': {
      'ja': 'Comment....',
      'en': '',
    },
    '8etj84p3': {
      'ja': 'Photo',
      'en': '',
    },
    '824xkdm9': {
      'ja': 'Video',
      'en': '',
    },
    'g5reqepq': {
      'ja': 'Create Story',
      'en': '',
    },
  },
  // postDetails
  {
    '4ummd2f1': {
      'ja': 'Comments',
      'en': '',
    },
    '63rs70ub': {
      'ja': 'Posted',
      'en': '',
    },
    'j11pbu6o': {
      'ja': 'Comment here...',
      'en': '',
    },
    'fnac9e6y': {
      'ja': 'Post',
      'en': '',
    },
  },
  // editSettings
  {
    'he1jaa26': {
      'ja': 'Account Settings',
      'en': '',
    },
    'pwbv4k47': {
      'ja': 'Edit Profile',
      'en': '',
    },
    '1a4w9re7': {
      'ja': 'Change Password',
      'en': '',
    },
    'm9o4as4r': {
      'ja': 'Log Out',
      'en': '',
    },
    '42v0a6nl': {
      'ja': 'Settings',
      'en': '',
    },
  },
  // editUserProfile
  {
    'lfw6npot': {
      'ja': 'Your Profile',
      'en': '',
    },
    'qjrq67b4': {
      'ja':
          'Fill out your profile now in order to complete setup of your profile.',
      'en': '',
    },
    'xkxomt4e': {
      'ja': 'Your Name',
      'en': '',
    },
    'act7cuqz': {
      'ja': 'UserName',
      'en': '',
    },
    '0mv7ilkd': {
      'ja': 'Your Bio',
      'en': '',
    },
    'zpthgsbh': {
      'ja': 'Save Changes',
      'en': '',
    },
  },
  // editDogProfile
  {
    '2ze2lpkp': {
      'ja': 'Dog Profile',
      'en': '',
    },
    'hqorw79p': {
      'ja':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'en': '',
    },
    'nfrqg9pm': {
      'ja': 'Dog Name',
      'en': '',
    },
    '761si4lm': {
      'ja': 'Dog Breed',
      'en': '',
    },
    '3cnqvk21': {
      'ja': 'Dog Age',
      'en': '',
    },
    'q5o7end9': {
      'ja': 'Adding multiple pups is coming soon.',
      'en': '',
    },
    'p51v2ft9': {
      'ja': 'Save Changes',
      'en': '',
    },
  },
  // changePassword
  {
    'gzezrooz': {
      'ja': 'Change Password',
      'en': '',
    },
    'gdpnyu1u': {
      'ja': 'Enter your email',
      'en': '',
    },
    '8zibi18a': {
      'ja':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en': '',
    },
    'qg5nvvqy': {
      'ja': 'Send Reset Link',
      'en': '',
    },
  },
  // createDogProfile_New
  {
    'c8pxs061': {
      'ja': 'Create Dog Profile',
      'en': '',
    },
    'okd4psxo': {
      'ja':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'en': '',
    },
    '2lwfp0wp': {
      'ja': 'Dog Name',
      'en': '',
    },
    'p0zephqw': {
      'ja': 'Dog Breed',
      'en': '',
    },
    'agnk9g2u': {
      'ja': 'Dog Age',
      'en': '',
    },
    'w43rjhbd': {
      'ja': 'Add Pup',
      'en': '',
    },
  },
  // viewProfilePageOther
  {
    'y1naplz7': {
      'ja': 'Message',
      'en': '',
    },
    'f2kb16o4': {
      'ja': 'Dog Profiles',
      'en': '',
    },
    '3r3wv83v': {
      'ja': 'Posts',
      'en': '',
    },
    '0e0a19iv': {
      'ja': '@username',
      'en': '',
    },
    'w7zd6wvl': {
      'ja': '2,493',
      'en': '',
    },
    'ryn8abj1': {
      'ja': '4',
      'en': '',
    },
    'e10z4a7v': {
      'ja':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en': '',
    },
  },
  // chatPage
  {
    'frsmlihw': {
      'ja': 'Group Chat',
      'en': '',
    },
  },
  // allChatsPage
  {
    '7ufrprq7': {
      'ja': 'Messages',
      'en': '',
    },
  },
  // addChatUsers
  {
    '3jaegov4': {
      'ja': 'Add Friends to chat',
      'en': '',
    },
    'gy253yz5': {
      'ja': 'Select the friends to add to chat.',
      'en': '',
    },
    'di8p2cfk': {
      'ja': 'Search for friends...',
      'en': '',
    },
    'pscdl7kg': {
      'ja': 'Invite to Chat',
      'en': '',
    },
  },
  // createGroupChat
  {
    '2n6pand2': {
      'ja': 'Create Group Chat',
      'en': '',
    },
    '72n59taj': {
      'ja': 'Select the friends to add to chat.',
      'en': '',
    },
    '4jmpily6': {
      'ja': 'Search for friends...',
      'en': '',
    },
    '084be3fr': {
      'ja': 'Create Chat',
      'en': '',
    },
  },
  // comments
  {
    'syu33tfz': {
      'ja': 'Comments',
      'en': '',
    },
    'cb431kck': {
      'ja': 'Posted',
      'en': '',
    },
    'nffccvqo': {
      'ja': 'Comment here...',
      'en': '',
    },
    '0vdocnid': {
      'ja': 'Post',
      'en': '',
    },
  },
  // createModal
  {
    'gxi2ng34': {
      'ja': 'Create Story',
      'en': '',
    },
    'zfce1io5': {
      'ja': 'Share a video of your pup.',
      'en': '',
    },
    '26l31upz': {
      'ja': 'Create Post',
      'en': '',
    },
    'l7dgfxxk': {
      'ja': 'Share a photo that will appear in the timeline.',
      'en': '',
    },
    '48nktk87': {
      'ja': 'Create Post',
      'en': '',
    },
    'dsfd50u8': {
      'ja': 'Share photos on your timeline.',
      'en': '',
    },
  },
  // deletePost
  {
    '1gz3v85v': {
      'ja': 'Delete Post',
      'en': '',
    },
    '9u3m5h59': {
      'ja': 'Cancel',
      'en': '',
    },
  },
  // deleteStory
  {
    '1jevukmb': {
      'ja': 'Delete Story',
      'en': '',
    },
    '2bnw1f6a': {
      'ja': 'Cancel',
      'en': '',
    },
  },
  // Miscellaneous
  {
    'rma7kfh4': {
      'ja': '',
      'en': '',
    },
    '8ap8k4ns': {
      'ja': '',
      'en': '',
    },
    'krwtivsv': {
      'ja': '',
      'en': '',
    },
    'e6z2adp1': {
      'ja': '',
      'en': '',
    },
    'vnbg9cs3': {
      'ja': '',
      'en': '',
    },
    'r48cbcwe': {
      'ja': '',
      'en': '',
    },
    '2igp658h': {
      'ja': '',
      'en': '',
    },
    'lzc4j09n': {
      'ja': '',
      'en': '',
    },
    'u5rm0hzn': {
      'ja': '',
      'en': '',
    },
    'jcf6yiqr': {
      'ja': '',
      'en': '',
    },
    '07fqau9k': {
      'ja': '',
      'en': '',
    },
    'o2jjjf6b': {
      'ja': '',
      'en': '',
    },
    '4kp1rvli': {
      'ja': '',
      'en': '',
    },
    'cil5jzl0': {
      'ja': '',
      'en': '',
    },
    'p05hkwr5': {
      'ja': '',
      'en': '',
    },
    '1k7hif19': {
      'ja': '',
      'en': '',
    },
    '6afiloxb': {
      'ja': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
