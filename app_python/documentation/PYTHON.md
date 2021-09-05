# Best practices 
## 1. Why FastAPI? 
* **Fast**: Very high performance, on par with NodeJS and Go (thanks to Starlette and Pydantic). One of the fastest Python frameworks available.

* **Fast to code**: Increase the speed to develop features by about 200% to 300%. *

* **Fewer bugs**: Reduce about 40% of human (developer) induced errors. *
* **Intuitive**: Great editor support. Completion everywhere. Less time debugging.
* **Easy**: Designed to be easy to use and learn. Less time reading docs.
* **Short**: Minimize code duplication. Multiple features from each parameter declaration. Fewer bugs.
* **Robust**: Get production-ready code. With automatic interactive documentation.
* **Standards-based**: Based on (and fully compatible with) the open standards for APIs: OpenAPI (previously known as Swagger) and JSON Schema.

## 2. Why Black?
* **PEP8**: follows PEP8 coding standarts
* **Automation**: Allows to stop managing uniformity of coding styles manually.
* **Consistent**: Black reformates the code in a consistent way, several runs on the same file will result in the same result.

## 3. Why Isort
* **Order in imports**: sorts imports alphabetically, automatically separates into sections and divides by type
* **Multi-line imports**: intelligently Balances Multi-line imports
* **Automation**: Allows to stop managing uniformity of coding styles manually.

## 4. Why pyupgrade
* **Upgrade the syntax**: upgrades syntax for newer versions of the language.
* **Automation**: Allows to stop managing uniformity of coding styles manually.

## 5. Why Flake8-markdown
* **Pretty** Lints code blocks containing regular Python and Python interpreter code
* **Automation**: Allows to stop managing uniformity of coding styles manually.

## How to run
```bash
python -m black filename
isort filename
pyupgrade filename
flake8-markdown filename
```


# Best practices in testing

## Unit tests
* **Validation**: Unit testing validates that each piece of your software not only works properly today, but continues to work in the future, providing a solid foundation for future development.
* **Defects at early stages**: Unit testing identifies defects at early stages of the production process, which reduces the costs of fixing them in later stages of the development cycle.
* **Safer to refactor**: Unit-tested code is generally safer to refactor, since tests can be re-run quickly to validate that behavior has not changed.
* **Different perspective**: Writing unit tests forces developers to consider how well the production code is designed in order to make it suitable for unit testing, and makes developers look at their code from a different perspective, encouraging them to consider corner cases and error conditions in their implementation.

### 1. Unit Tests Should Be Trustworthy
* **Test fall == Code is broken**: Tests should fall if anf only if code is broken, so we can trust test when verifying code

### 2. Unit Tests Should Be Maintainable and Readable
* **Organise tests**: Organise and name your test so other developers understand them.
* **Easy to understand**: It must be easy to read, understand and update the test

### 3. Unit Tests Should Verify a Single-Use Case
* **One purpose**: Unit test should validate one thing and only one thing
* **Easy to maintain**: Tests that follow this practice are simpler and more understandable. In contrary, tests that test several things at once will become more and more complex with time
* **Easy to debug**: If the test that checks only one thing fails, you know exactly what is wrong

### 4. Unit Tests Should Be Isolated
* **Runnable without affecting other tests**: Tests should not affect each other
* **No dependencies on state**: Dependencies on environmental factors or external state make tests unstable and violate the first rule **Trustworthy**.

### 5. Unit Tests Should Be Automated
* **Continuous Integration or Delivery**: All changes to the production code should be tested
* **Logging**: Results of tests should be saved to address them when bugs occur

### 6. Code coverage should be high
* **More tests** Add more tests for more code paths
* **More use-cases** More use-cases of the method under test.


## My tests
* **Simple application**: My test checks that application is running and processing requests.

