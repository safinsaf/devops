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

## Run unit test as part of docker build command
It is always better if your inner loop (Code/Test/Run/Debug/Commit) and outer loop (Push/Build/Test/Deploy) are as similar as possible. It can be a good idea to run unit tests as part of your docker build command by adding a target for them in your Dockerfile. That way as you are making changes and re-building locally you can run the same unit tests you would run in the CI on your local machine with a simple command. This creates a shorter feedback loop on issues and reduces the amount of pulls and builds your CI needs to do.

## Use Docker Hub access token
When you are setting up your CI make sure you are using a Docker Hub access token rather than your password, you can create new access tokens from your security page on Docker Hub. 

## Build differen stages for deployment and testing

The production version of image should not have dependencies required for testing.