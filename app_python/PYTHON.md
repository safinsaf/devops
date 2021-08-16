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
```