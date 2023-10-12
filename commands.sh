# Create the repossitorio
aws ecr create-repository --repository-name miaxap1devops --region eu-west-1

# Build the image
docker build -t 038264519778.dkr.ecr.eu-west-1.amazonaws.com/miaxap1devops .

# To test:
# docker run  -p 8080:8080 467432373215.dkr.ecr.eu-west-1.amazonaws.com/fastapi-suma

# Log docker into the aws registry
aws ecr get-login-password | docker login --username AWS --password-stdin 038264519778.dkr.ecr.eu-west-1.amazonaws.com/miaxap1


# Push the image
docker push 038264519778.dkr.ecr.eu-west-1.amazonaws.com/miaxap1devops:latest