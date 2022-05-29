# resource "aws_lambda_function" "file_upload_system_lambda_function" {
#   # If the file is not in the current working directory you will need to include a 
#   # path.module in the filename.

#   role = aws_iam_service_linked_role.file_upload_system_lambda_role.arn

#   filename      = "lambda_function_payload.zip"
#   function_name = "lambda_function_name"
#   handler       = "index.test"


#   #   runtime = "nodejs12.x"
#   runtime = "python3.7"
#   timeout = 60
#   memory  = 500

# }
