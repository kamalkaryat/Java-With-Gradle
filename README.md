# Java-with-Gradle
Demonstrate how to use Gradle as a build tool for a Java based project

## Dockerfile
Used to build the Docker image of the project

## deploy.yaml
Used to deploy the project into the Kubernetes cluster by first building its docker image

## pipeline.yaml
Use JCasC create a Jenkins pipeline inside the Jenkins which is already deployed into the Kubernetes cluster

### Stages in the Pipeline
1. Clone Repository
   Clone the github reposistory which contains the sample application code, Docker file & it's corresponding k8s manifest file
2. Script Permission
   Give execute permission to gradlew
3. Image Workflow
   a.  Login to DockerHub account
   b.  Build Docker image
   c.  Push the Docker image to DockerHub account
4. Update Tag
   Update the image tag inside the k8s manifest file
5. Deployment
   Deploy the k8s manifest file into the Kbernetes cluster using 'kubectl'. A service account token is used by the 'kubectl' for authentication.
