import 'dart:async';

int counter = 0;

void main(List<String> arguments) {
  var duration = Duration(seconds: 1);
  Timer.periodic(duration, timeout);
  print('Started ${getTime()}');
}

void timeout(Timer timer) {
  print('Timeout: ${getTime()}');
  counter++;
  if (counter >= 5) timer.cancel();
}

String getTime() {
  var dt = DateTime.now();
  return dt.toString();
}
