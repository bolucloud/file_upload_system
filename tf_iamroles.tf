# resource "aws_iam_service_linked_role" "file_upload_system_lambda_role" {
#   aws_service_name = "lambda.amazonaws.com"
#   tags = {
#       gh-project = "file_upload_system"
#   }
# }

# resource "aws_iam_role_policy_attachment" "sto-readonly-role-policy-attach" {
#   role       = aws_iam_service_linked_role.file_upload_system_lambda.name
#   policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
# }

# resource "aws_iam_role_policy_attachment" "sto-readonly-role-policy-attach" {
#   role       = resource.aws_iam_service_linked_role.file_upload_system_lambda
#   policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
# }