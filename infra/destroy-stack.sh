# Empty a Bucket
aws s3 rm s3://dev.aphrodite.world --recursive

# Destroy CloudFormation
aws cloudformation delete-stack --stack-name S3DevAphroditeFront