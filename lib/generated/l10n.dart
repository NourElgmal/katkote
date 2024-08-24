// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `nour`
  String get title {
    return Intl.message(
      'nour',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Hello,Katoti Tootie`
  String get starttext1 {
    return Intl.message(
      'Hello,Katoti Tootie',
      name: 'starttext1',
      desc: '',
      args: [],
    );
  }

  /// `Log in with Google`
  String get starttext2 {
    return Intl.message(
      'Log in with Google',
      name: 'starttext2',
      desc: '',
      args: [],
    );
  }

  /// `By registering you agree to `
  String get starttext3 {
    return Intl.message(
      'By registering you agree to ',
      name: 'starttext3',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get starttext4 {
    return Intl.message(
      'Privacy Policy',
      name: 'starttext4',
      desc: '',
      args: [],
    );
  }

  /// `///////////////////////////////////////////////////////////////`
  String get pagesinup {
    return Intl.message(
      '///////////////////////////////////////////////////////////////',
      name: 'pagesinup',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get FullName {
    return Intl.message(
      'Full Name',
      name: 'FullName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Full Name`
  String get EnterYourFullName {
    return Intl.message(
      'Enter Your Full Name',
      name: 'EnterYourFullName',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your  Password`
  String get EnterYourPassword {
    return Intl.message(
      'Enter Your  Password',
      name: 'EnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get Email {
    return Intl.message(
      'Email',
      name: 'Email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get EnterYourEmail {
    return Intl.message(
      'Enter Your Email',
      name: 'EnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get CreateNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'CreateNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get SignUp {
    return Intl.message(
      'Sign Up',
      name: 'SignUp',
      desc: '',
      args: [],
    );
  }

  /// `check your email`
  String get checkyouremail {
    return Intl.message(
      'check your email',
      name: 'checkyouremail',
      desc: '',
      args: [],
    );
  }

  /// `check your Password`
  String get checkyourpassword {
    return Intl.message(
      'check your Password',
      name: 'checkyourpassword',
      desc: '',
      args: [],
    );
  }

  /// `check full name`
  String get checkfullname {
    return Intl.message(
      'check full name',
      name: 'checkfullname',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get anaccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'anaccount',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message(
      'login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `///////////////////////////////////////////////////////////////`
  String get pagelogin {
    return Intl.message(
      '///////////////////////////////////////////////////////////////',
      name: 'pagelogin',
      desc: '',
      args: [],
    );
  }

  /// `Hii There!!`
  String get Hii {
    return Intl.message(
      'Hii There!!',
      name: 'Hii',
      desc: '',
      args: [],
    );
  }

  /// `Welcome back you’ve been missed!`
  String get Welcome {
    return Intl.message(
      'Welcome back you’ve been missed!',
      name: 'Welcome',
      desc: '',
      args: [],
    );
  }

  /// `Enter Username`
  String get EnterUsername {
    return Intl.message(
      'Enter Username',
      name: 'EnterUsername',
      desc: '',
      args: [],
    );
  }

  /// `Recover Password ?`
  String get RecoverPassword {
    return Intl.message(
      'Recover Password ?',
      name: 'RecoverPassword',
      desc: '',
      args: [],
    );
  }

  /// `Signin`
  String get Signin {
    return Intl.message(
      'Signin',
      name: 'Signin',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get Donthave {
    return Intl.message(
      'Don’t have an account?',
      name: 'Donthave',
      desc: '',
      args: [],
    );
  }

  /// `///////////////////////////////////////////////////////////////////`
  String get page1 {
    return Intl.message(
      '///////////////////////////////////////////////////////////////////',
      name: 'page1',
      desc: '',
      args: [],
    );
  }

  /// `Katkouti`
  String get apptitle {
    return Intl.message(
      'Katkouti',
      name: 'apptitle',
      desc: '',
      args: [],
    );
  }

  /// `think`
  String get Okay {
    return Intl.message(
      'think',
      name: 'Okay',
      desc: '',
      args: [],
    );
  }

  /// `Good evening,\nAnd by good, I mean your presence`
  String get alertTitle {
    return Intl.message(
      'Good evening,\nAnd by good, I mean your presence',
      name: 'alertTitle',
      desc: '',
      args: [],
    );
  }

  /// `I hope you're doing well, `
  String get alertContent {
    return Intl.message(
      'I hope you\'re doing well, ',
      name: 'alertContent',
      desc: '',
      args: [],
    );
  }

  /// `Happiness`
  String get hapybick {
    return Intl.message(
      'Happiness',
      name: 'hapybick',
      desc: '',
      args: [],
    );
  }

  /// `message heart`
  String get masage {
    return Intl.message(
      'message heart',
      name: 'masage',
      desc: '',
      args: [],
    );
  }

  /// `challenges`
  String get evereday {
    return Intl.message(
      'challenges',
      name: 'evereday',
      desc: '',
      args: [],
    );
  }

  /// `yourself`
  String get note {
    return Intl.message(
      'yourself',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Gratitude`
  String get lave {
    return Intl.message(
      'Gratitude',
      name: 'lave',
      desc: '',
      args: [],
    );
  }

  /// `Develop,yourself`
  String get lamp {
    return Intl.message(
      'Develop,yourself',
      name: 'lamp',
      desc: '',
      args: [],
    );
  }

  /// `Remembrance`
  String get hand {
    return Intl.message(
      'Remembrance',
      name: 'hand',
      desc: '',
      args: [],
    );
  }

  /// `Tasks`
  String get maham {
    return Intl.message(
      'Tasks',
      name: 'maham',
      desc: '',
      args: [],
    );
  }

  /// `Confession`
  String get prin {
    return Intl.message(
      'Confession',
      name: 'prin',
      desc: '',
      args: [],
    );
  }

  /// `Notebook`
  String get notbook {
    return Intl.message(
      'Notebook',
      name: 'notbook',
      desc: '',
      args: [],
    );
  }

  /// `Longing,my dear`
  String get orang {
    return Intl.message(
      'Longing,my dear',
      name: 'orang',
      desc: '',
      args: [],
    );
  }

  /// `There is no greater challenge than improving and developing yourself.`
  String get td1 {
    return Intl.message(
      'There is no greater challenge than improving and developing yourself.',
      name: 'td1',
      desc: '',
      args: [],
    );
  }

  /// `Act as if it is impossible to fail.`
  String get td2 {
    return Intl.message(
      'Act as if it is impossible to fail.',
      name: 'td2',
      desc: '',
      args: [],
    );
  }

  /// `Great minds always face violent resistance from ordinary minds.`
  String get td3 {
    return Intl.message(
      'Great minds always face violent resistance from ordinary minds.',
      name: 'td3',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to leave?`
  String get wor {
    return Intl.message(
      'Are you sure you want to leave?',
      name: 'wor',
      desc: '',
      args: [],
    );
  }

  /// `We will miss you very much, `
  String get worcon {
    return Intl.message(
      'We will miss you very much, ',
      name: 'worcon',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `What you get without effort or price is worthless.`
  String get a {
    return Intl.message(
      'What you get without effort or price is worthless.',
      name: 'a',
      desc: '',
      args: [],
    );
  }

  /// `The only answer to defeat is victory.`
  String get b {
    return Intl.message(
      'The only answer to defeat is victory.',
      name: 'b',
      desc: '',
      args: [],
    );
  }

  /// `Many may accept advice, but only the wise benefit from it.`
  String get c {
    return Intl.message(
      'Many may accept advice, but only the wise benefit from it.',
      name: 'c',
      desc: '',
      args: [],
    );
  }

  /// `He who lives in fear will never be free.`
  String get d {
    return Intl.message(
      'He who lives in fear will never be free.',
      name: 'd',
      desc: '',
      args: [],
    );
  }

  /// `We create our destinies, we become what we do.`
  String get e {
    return Intl.message(
      'We create our destinies, we become what we do.',
      name: 'e',
      desc: '',
      args: [],
    );
  }

  /// `Don't worry about being different from your ancestors.`
  String get f {
    return Intl.message(
      'Don\'t worry about being different from your ancestors.',
      name: 'f',
      desc: '',
      args: [],
    );
  }

  /// `When it seems like everything is going against you, remember that the airplane takes off against the wind, not with it.`
  String get g {
    return Intl.message(
      'When it seems like everything is going against you, remember that the airplane takes off against the wind, not with it.',
      name: 'g',
      desc: '',
      args: [],
    );
  }

  /// `A builder ruined my heart after I had repented. He came with the army of beauty in its multitude and equipment.`
  String get h {
    return Intl.message(
      'A builder ruined my heart after I had repented. He came with the army of beauty in its multitude and equipment.',
      name: 'h',
      desc: '',
      args: [],
    );
  }

  /// `And Allah may reunite the two separated after they both thought they would never meet.`
  String get i {
    return Intl.message(
      'And Allah may reunite the two separated after they both thought they would never meet.',
      name: 'i',
      desc: '',
      args: [],
    );
  }

  /// `God curse those who say that we have found a cure for love throughout history.`
  String get j {
    return Intl.message(
      'God curse those who say that we have found a cure for love throughout history.',
      name: 'j',
      desc: '',
      args: [],
    );
  }

  /// `I don't care about time and its turns, for my head will not bow even if time turns against me.`
  String get k {
    return Intl.message(
      'I don\'t care about time and its turns, for my head will not bow even if time turns against me.',
      name: 'k',
      desc: '',
      args: [],
    );
  }

  /// `I can remove you from my life with the stroke of a pen, so don't think I'm weak and lacking in pride.`
  String get l {
    return Intl.message(
      'I can remove you from my life with the stroke of a pen, so don\'t think I\'m weak and lacking in pride.',
      name: 'l',
      desc: '',
      args: [],
    );
  }

  /// `Smile for yourself, for the beauty of your smile was not created for sadness.`
  String get m {
    return Intl.message(
      'Smile for yourself, for the beauty of your smile was not created for sadness.',
      name: 'm',
      desc: '',
      args: [],
    );
  }

  /// `If you have confidence in yourself, you will inspire others with confidence.`
  String get n {
    return Intl.message(
      'If you have confidence in yourself, you will inspire others with confidence.',
      name: 'n',
      desc: '',
      args: [],
    );
  }

  /// `Self-confidence is a battle against all the complications of defeat.`
  String get o {
    return Intl.message(
      'Self-confidence is a battle against all the complications of defeat.',
      name: 'o',
      desc: '',
      args: [],
    );
  }

  /// `No matter how you think about yourself, you are stronger than you imagine.`
  String get p {
    return Intl.message(
      'No matter how you think about yourself, you are stronger than you imagine.',
      name: 'p',
      desc: '',
      args: [],
    );
  }

  /// `If you doubt yourself, you are standing on shaky ground.`
  String get q {
    return Intl.message(
      'If you doubt yourself, you are standing on shaky ground.',
      name: 'q',
      desc: '',
      args: [],
    );
  }

  /// `Change the language`
  String get chlan {
    return Intl.message(
      'Change the language',
      name: 'chlan',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get ok {
    return Intl.message(
      'Okay',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Your message today`
  String get dayms {
    return Intl.message(
      'Your message today',
      name: 'dayms',
      desc: '',
      args: [],
    );
  }

  /// `Ghazal verses`
  String get romantk {
    return Intl.message(
      'Ghazal verses',
      name: 'romantk',
      desc: '',
      args: [],
    );
  }

  /// `Trust, my dear.`
  String get sure {
    return Intl.message(
      'Trust, my dear.',
      name: 'sure',
      desc: '',
      args: [],
    );
  }

  /// `//////////////////////////////////////////////////////////////////////////////////////////////////////////////`
  String get pagemham {
    return Intl.message(
      '//////////////////////////////////////////////////////////////////////////////////////////////////////////////',
      name: 'pagemham',
      desc: '',
      args: [],
    );
  }

  /// `Slice a chick`
  String get titalmham {
    return Intl.message(
      'Slice a chick',
      name: 'titalmham',
      desc: '',
      args: [],
    );
  }

  /// `///////////////////////////////////////////////////////////////////////////////////`
  String get spha {
    return Intl.message(
      '///////////////////////////////////////////////////////////////////////////////////',
      name: 'spha',
      desc: '',
      args: [],
    );
  }

  /// `remembrance`
  String get sphatitle {
    return Intl.message(
      'remembrance',
      name: 'sphatitle',
      desc: '',
      args: [],
    );
  }

  /// `Subhan Allah`
  String get az1 {
    return Intl.message(
      'Subhan Allah',
      name: 'az1',
      desc: '',
      args: [],
    );
  }

  /// `Alhamdulillah`
  String get az2 {
    return Intl.message(
      'Alhamdulillah',
      name: 'az2',
      desc: '',
      args: [],
    );
  }

  /// `La ilaha illa Allah`
  String get az3 {
    return Intl.message(
      'La ilaha illa Allah',
      name: 'az3',
      desc: '',
      args: [],
    );
  }

  /// `Allah Akbar`
  String get az4 {
    return Intl.message(
      'Allah Akbar',
      name: 'az4',
      desc: '',
      args: [],
    );
  }

  /// `Astaghfirullah`
  String get az5 {
    return Intl.message(
      'Astaghfirullah',
      name: 'az5',
      desc: '',
      args: [],
    );
  }

  /// `La hawla wa la quwwata illa billah`
  String get az6 {
    return Intl.message(
      'La hawla wa la quwwata illa billah',
      name: 'az6',
      desc: '',
      args: [],
    );
  }

  /// `A'udhu billah min sharri ma khalaq`
  String get az7 {
    return Intl.message(
      'A\'udhu billah min sharri ma khalaq',
      name: 'az7',
      desc: '',
      args: [],
    );
  }

  /// `////////////////////////////////////////////////////////////////////////////`
  String get everyday {
    return Intl.message(
      '////////////////////////////////////////////////////////////////////////////',
      name: 'everyday',
      desc: '',
      args: [],
    );
  }

  /// `Every day a new challenge`
  String get titleevery {
    return Intl.message(
      'Every day a new challenge',
      name: 'titleevery',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
