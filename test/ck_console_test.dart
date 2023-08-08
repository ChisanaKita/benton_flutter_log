import 'dart:io';

import 'package:ck_console/ck_console.dart';

void main() {
  CkConsole.version();

  CkConsole.log(CkConsole, "Test message");
  CkConsole.log(
    CkConsole,
    "Test message with extra long string for testing that softwarp function which I wasn't sure is correct",
    logWarning: true,
  );

  try {
    if (Platform.isWindows) {
      throw UnimplementedError("error Error");
    }
  } on Error catch (e) {
    CkConsole.logError(e, "Error");
  }

  CkConsole.log(CkConsole, "Test complete!", logPass: true);
}
