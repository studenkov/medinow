import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Medinow'**
  String get appTitle;

  /// No description provided for @meditateWithUs.
  ///
  /// In en, this message translates to:
  /// **'Meditate with Us!'**
  String get meditateWithUs;

  /// No description provided for @signInWithApple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get signInWithApple;

  /// No description provided for @continueWithEmailOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Continue with Email or Phone'**
  String get continueWithEmailOrPhone;

  /// No description provided for @continueWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get continueWithGoogle;

  /// No description provided for @peterMach.
  ///
  /// In en, this message translates to:
  /// **'Peter Mach'**
  String get peterMach;

  /// No description provided for @mindDeepRelax.
  ///
  /// In en, this message translates to:
  /// **'Mind Deep Relax'**
  String get mindDeepRelax;

  /// No description provided for @meditateDescription.
  ///
  /// In en, this message translates to:
  /// **'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.'**
  String get meditateDescription;

  /// No description provided for @playNextSession.
  ///
  /// In en, this message translates to:
  /// **'Play Next Session'**
  String get playNextSession;

  /// No description provided for @sweetMemories.
  ///
  /// In en, this message translates to:
  /// **'Sweet Memories'**
  String get sweetMemories;

  /// No description provided for @december29PreLaunch.
  ///
  /// In en, this message translates to:
  /// **'December 29 Pre-Launch'**
  String get december29PreLaunch;

  /// No description provided for @aDayDream.
  ///
  /// In en, this message translates to:
  /// **'A Day Dream'**
  String get aDayDream;

  /// No description provided for @organizer.
  ///
  /// In en, this message translates to:
  /// **'Organizer'**
  String get organizer;

  /// No description provided for @albertFlores.
  ///
  /// In en, this message translates to:
  /// **'Albert Flores'**
  String get albertFlores;

  /// No description provided for @followersCount.
  ///
  /// In en, this message translates to:
  /// **'2.368'**
  String get followersCount;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// No description provided for @followingCount.
  ///
  /// In en, this message translates to:
  /// **'346'**
  String get followingCount;

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @eventsCount.
  ///
  /// In en, this message translates to:
  /// **'13'**
  String get eventsCount;

  /// No description provided for @events.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get events;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @organizerBio.
  ///
  /// In en, this message translates to:
  /// **'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'**
  String get organizerBio;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read more...'**
  String get readMore;

  /// No description provided for @courseTitle.
  ///
  /// In en, this message translates to:
  /// **'3D Design Basic'**
  String get courseTitle;

  /// No description provided for @courseStudentsCount.
  ///
  /// In en, this message translates to:
  /// **'4.569'**
  String get courseStudentsCount;

  /// No description provided for @courseRating.
  ///
  /// In en, this message translates to:
  /// **'4.9'**
  String get courseRating;

  /// No description provided for @bestSeller.
  ///
  /// In en, this message translates to:
  /// **'Best Seller'**
  String get bestSeller;

  /// No description provided for @courseDescription.
  ///
  /// In en, this message translates to:
  /// **'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.'**
  String get courseDescription;

  /// No description provided for @courseLessons.
  ///
  /// In en, this message translates to:
  /// **'24 Lessons (20 hours)'**
  String get courseLessons;

  /// No description provided for @seeAll.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get seeAll;

  /// No description provided for @introTo3D.
  ///
  /// In en, this message translates to:
  /// **'Introduction to 3D'**
  String get introTo3D;

  /// No description provided for @introDuration.
  ///
  /// In en, this message translates to:
  /// **'20 mins'**
  String get introDuration;

  /// No description provided for @enrollPrice.
  ///
  /// In en, this message translates to:
  /// **'Enroll - \$24.99'**
  String get enrollPrice;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
