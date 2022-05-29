# resource "aws_s3_bucket" "file_upload_system_storage" {
#   bucket = "bolucloud-file-upload-system-storage"
#   acl    = "private"


#   versioning {
#     enabled = true
#   }
# }

# resource "aws_s3_bucket_public_access_block" "file_upload_system_storage_block" {
#   bucket = aws_s3_bucket.file_upload_system_storage.id
#   block_public_acls   = true
#   block_public_policy = true
# }

# resource "aws_s3_bucket_server_side_encryption_configuration" "file_upload_system_storage_encryption" {
#   bucket = aws_s3_bucket.file_upload_system_storage.bucket

#   rule {
#     apply_server_side_encryption_by_default {
#       sse_algorithm     = "AES256"
#     }
#   }
# }