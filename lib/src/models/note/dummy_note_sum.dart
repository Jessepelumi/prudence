class NoteSummary {
  final String title;
  final String detail;
  final String timeStamp;

  NoteSummary({
    required this.title,
    required this.detail,
    required this.timeStamp,
  });

  static final List<NoteSummary> noteSummary = [
    NoteSummary(
      title: "That Old Man",
      detail: "Apostle Emmanuel Iren.",
      timeStamp: "3 Oct",
    ),
    NoteSummary(
      title: "The Confluence",
      detail: "Unveiling",
      timeStamp: "1 Oct",
    ),
    NoteSummary(
      title: "Shopping list",
      detail: "toothbrush, lighter",
      timeStamp: "1 Oct",
    ),
  ];
}
