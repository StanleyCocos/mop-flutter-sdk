import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mop/mop.dart';

void main() {
  const MethodChannel channel = MethodChannel('mop');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await Mop.instance.platformVersion, '42');
  });

  test('UIConfig 默认不隐藏加载页技术支持标识', () {
    final UIConfig config = UIConfig();

    expect(config.toMap()['hideLoadingPageTechSupport'], false);
  });

  test('UIConfig 可开启隐藏加载页技术支持标识', () {
    final UIConfig config = UIConfig();
    config.hideLoadingPageTechSupport = true;

    expect(config.toMap()['hideLoadingPageTechSupport'], true);
  });
}
