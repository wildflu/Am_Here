

import 'package:amhere/presontation/components/widgets/change_theme.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("test change theme button", (WidgetTester tester) async{
    await tester.pumpWidget(const ChangeThemeComponent());
    expect(find.text('0'), findsNothing);
  });
}