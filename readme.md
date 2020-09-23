# Deploy ( IaC S3 Static WebSite )

## Do you want to add new environment ?

- Create New File ==> ./github/workflows/NEW_ENV-ci-cd.yml

> Copy content from dev-ci-cd.yml and changes properties above:   

```yml
env:
  env: hom

on:
  push:
    branches:
      - staging
```      

### Create new Folder 

```
- dev
- prod
- new_folder
```

## Undeploy ( Delete Stack)



`Empty a bucket:`

```sh
aws s3 rm s3://dev.aphrodite.world --recursive
```

`Delete CloudFormation:`

```sh
aws cloudformation delete-stack --stack-name S3AphroditeFront-Dev
```
