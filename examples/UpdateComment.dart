final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final requestCommentRangeStartNode = NodeLink();
requestCommentRangeStartNode.nodeId = '0.3.0';
final requestCommentRangeStart = DocumentPosition();
requestCommentRangeStart.node = requestCommentRangeStartNode;
requestCommentRangeStart.offset = 0;
final requestCommentRangeEndNode = NodeLink();
requestCommentRangeEndNode.nodeId = '0.3.0';
final requestCommentRangeEnd = DocumentPosition();
requestCommentRangeEnd.node = requestCommentRangeEndNode;
requestCommentRangeEnd.offset = 0;
final requestComment = CommentUpdate();
requestComment.rangeStart = requestCommentRangeStart;
requestComment.rangeEnd = requestCommentRangeEnd;
requestComment.initial = 'IA';
requestComment.author = 'Imran Anwar';
requestComment.text = 'A new Comment';
final updateRequest = UpdateCommentRequest('Sample.docx', 0, requestComment);
await wordsApi.updateComment(updateRequest);