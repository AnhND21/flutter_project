class News {
  late int id;
  late String authorName;
  late String content;
  late String createdAt;
  List images = [];
  late List? likes;
  late List? comments;
  int totalLike = 0;
  int totalComment = 0;
  int totalShare = 0;

  News(
      this.id,
      this.authorName,
      this.content,
      this.createdAt,
      this.images,
      this.likes,
      this.comments,
      this.totalComment,
      this.totalLike,
      this.totalShare);
}
