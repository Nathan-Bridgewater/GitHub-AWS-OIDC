aws iam create-role \
--role-name github-workflow-role \
--assume-role-policy-document file://trust-policy.json \

aws iam get-role \
--role-name github-workflow-role

aws iam attach-role-policy \
--role-name github-workflow-role \
--policy-arn arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryPowerUser