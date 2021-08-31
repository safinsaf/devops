# Best practices
## 1. Keep Actions minimal
Keep actions as light as possible. Since Action is set up and run in a clean environment every time, meaning all dependencies have to be downloaded and installed every time it’s run.


## 2. Don’t install dependencies unnecessarily
Take advantage of GitHub’s caching mechanism wherever you can.


## 3. Never hardcode secrets
Instead of manually hardcoding secrets into your workflow (whether it’s private or public), set them manually in the repository settings and access them using environment variables or step inputs.


## 4. Limit environment variables to the narrowest possible scope
Prevent polluting the global environment context as much as possible by always declaring environment variables with the narrowest possible scope. This makes it easier to reason about what’s going on in a specific step or job, because the environment variables needed are right next to the work being done.


## 5. Don’t use self-hosted runners in a public repository
When working on a public Action, somebody could fork it and submit a pull request for a workflow containing malicious code. That malicious code will then be executed by the Action on your self-hosted machine, and could easily escape its sandbox, invade your network, even if you’re using Docker containers.


# Best practices for using Docker Hub for CI/CD

## 1. Run unit test as part of docker build command
It is always better if your inner loop (Code/Test/Run/Debug/Commit) and outer loop (Push/Build/Test/Deploy) are as similar as possible. It can be a good idea to run unit tests as part of your docker build command by adding a target for them in your Dockerfile. That way as you are making changes and re-building locally you can run the same unit tests you would run in the CI on your local machine with a simple command. This creates a shorter feedback loop on issues and reduces the amount of pulls and builds your CI needs to do.

## 2. Use Docker Hub access token
When you are setting up your CI make sure you are using a Docker Hub access token rather than your password, you can create new access tokens from your security page on Docker Hub. 

## 3. Build different stages for deployment and testing
The production version of image should not have dependencies required for testing.

# Best practices for Jenkins

## 1. Keep Jenkins Secure
Why? - Jenkins does not perform any security checks within the default configuration.
* add "Authentication"
* add "Authorization"


## 2. Create Backups for “JENKINS_HOME” Directory
Jenkins home directory contains lots of data, including job configurations, build logs, plugin configs, etc. that we cannot afford to lose. This can be accomplished through plugins offered by Jenkins or configuring a job to take backup.

## 3. Setup A Different Job/Project For Each Development Branch Created
Setting up different jobs/projects for each branch helps you support parallel development efforts and maximize the advantage of sleuthing issues, thereby reducing risk and allowing developers to be more productive.

## 4. Prevent Resource Collisions In Jobs That Are Running In Parallel
Multiple jobs running simultaneously can cause collisions if they create a service or need exclusive access, which can bleed out your Jenkins pipeline

## 5. Use “File Fingerprinting” To Manage Dependencies
Creating interdependent projects on Jenkins often creates a muddle, keeping track of which version of it is used and by which version of it. “File fingerprinting,” supported by Jenkins, simplifies this.

## 6. Avoid Complicated Groovy Codesode In Pipelines
For a Jenkins Pipeline, Groovy code always executes on master involving exuberant usage of master resources (memory and CPU). Consequently, it becomes critically important to cut back the amount of Groovy code executed by Pipelines.

## 7. Manage Declarative Syntax/Declarative Pipelines
Declarative Pipelines configuration tells a system what to do, shifting the complexity of ‘how to do’ to the system.
Pipelines are perhaps the easiest tool to get started within Jenkins and are accessible by creating a new Pipeline “Item” in the Blue Ocean or classic Jenkins UI, or by writing your Jenkinsfile and committing it to your project’s SCM repo.


## 8. Maintain Higher Test Code Coverage & Run Unit Tests As Part Of Your Pipeline
Although higher coverage alone does not guarantee code quality, surfacing code coverage numbers help ensure your developers and QA defect prevention at an early stage of the life cycle.

## 9. Monitor Your CI/CD Pipeline
Having a broken CI/CD pipeline can potentially stall your development team. Also, external dependencies like cloud services, network, testing services might affect your CI/CD pipeline, and you need to know when these occasional failures become significant enough to warrant action.
