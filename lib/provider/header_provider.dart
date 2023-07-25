import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final headerProvider =
    ChangeNotifierProvider<HeaderProvider>((ref) => HeaderProvider(ref: ref));

class HeaderProvider extends ChangeNotifier {
  final ChangeNotifierProviderRef ref;
  int currentIndex = 0;
  HeaderProvider({required this.ref});

  void changePage(int index) {
    currentIndex = index;
  }
}
