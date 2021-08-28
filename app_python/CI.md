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


