// app常量文字 抽离方便以后国际化
class AppConst {
  // 名称
  static const String siteName = 'SHI FU';

  // 订单页面相关
  static const order = _OrderConst();
}


// class _LoginConst {
//   const _LoginConst();
class _OrderConst {
  const _OrderConst();

  String get title => '订单';
}
