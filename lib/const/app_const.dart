// app常量文字 抽离方便以后国际化
class AppConst {
  // 名称
  static const String siteName = 'SHI FU';

  /// 标识常量
  static final identifier = _Identifier();
}

/// 标识常量
class _Identifier {
  const _Identifier();

  String get token => 'token';
  String get cfClearance => 'cfClearance';
  String get sessionCookie => '_forum_session';
  String get userInfo => 'userInfo';
  String get theme => 'theme';
  String get language => 'language';
  String get isFirst => 'isFirst';
  String get username => 'username';
  String get name => 'name';
  String get userId => 'userId';
  String get isLogin => 'isLogin';
  String get csrfToken => 'csrfToken';
  String get clientId => 'clientId';

  String get themeColor => 'themeColor';
  String get postFontSize => 'postFontSize';
  String get replyFontSize => 'replyFontSize';
  String get listDensity => 'list_density';

  String get browserTips => 'browserTips';
  String get chatHintDontShow => 'chatHintDontShow';

  String get isAnonymousMode => 'isAnonymousMode';
}
