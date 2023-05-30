extension DescribeTimeDiff on DateTime {
  String getDifferences() {
    final now = DateTime.now();
    final diff = difference(DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second));
    String a = diff.inHours.abs() > 23
        ? dayHandler(diff)
        : diff.inHours.abs() < 24 && diff.inMinutes.abs() > 59
            ? hrsHandler(diff.inHours)
            : minsHandler(diff.inMinutes);
    return a;
  }
}

String dayHandler2(Duration diff) =>  switch(diff) {
  Duration(inDays: -1) => "Yesterday",
  Duration(inDays: 1) => "Tomorrow",
  Duration(inDays: 0) => "Today",
  Duration(inDays: int d, isNegative: true) => "${d.abs()} days ago",
  Duration(inDays: int d, isNegative: false) => "$d days from now",
};

String dayHandler(Duration day) {
  String result = "";
  switch (day) {
    case Duration(inDays: -1):
      result = "Yesterday";
    case Duration(inDays: 1):
      result = "Tomorrow";
    case Duration(inDays: 0):
      result = "Today";
    case Duration(inDays: int d, isNegative: true):
      result = "${d.abs()} days ago";
    case Duration(inDays: int d, isNegative: false):
      result = "$d days from now";
  }
  return result;
}

String minsHandler(int min) {
  return min.isNegative ? "${min.abs()} minutes ago" : "$min minutes from now";
}

String hrsHandler(int hrs) {
  return hrs.isNegative ? "${hrs.abs()} hours ago" : "$hrs hours from now";
}