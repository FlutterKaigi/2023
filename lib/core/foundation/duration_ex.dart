extension DurationEx on Duration {
  int get clockedDays => inDays;
  int get clockedHours => inHours % 24;
  int get clockedMinutes => inMinutes % 60;
  int get clockedSeconds => inSeconds % 60;
}
