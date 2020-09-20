# Deploy ( IaC S3 Static WebSite )

```shell 
aws cloudformation deploy --template-file S3-CF.yml --stack-name S3AphroditeFront-Dev
```

`Deploy Application`

```sh
cd ..
npm run build --prod
aws s3 sync --cache-control 'no-cache' ./dist s3://dev.aphrodite.world
```

## Undeploy

```sh
aws cloudformation delete-stack --stack-name S3AphroditeFront-Dev
```

`Empty a bucket`

```sh
aws s3 rm s3://dev.aphrodite.world --recursive
```