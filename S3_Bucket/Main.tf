#Creating S3 Bucket
resource"aws_s3_bucket" "S3_Bucket"{ 
    bucket=var.BucketNames
    tags =var.Tags
}  
