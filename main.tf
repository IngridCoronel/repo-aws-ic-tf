resource "aws_sns_topic" "sns_topic" {
  name = "topic-msg-sf-aws"
}

resource "aws_sns_topic_subscription" "sns_subs_email" {
  depends_on  = aws_sns_topic.sns_topic

  topic_arn = aws_sns_topic.sns_topic.arn
  protocol  = "email"
  endpoint  = "ingridcoronelc@gmail.com"
}