# Mypy strict mode

In order tell mypy to show all the errors regarding types, one must enable `--strict` argument.

For VSCode, include a value in the `"python.linting.mypyArgs"` setting:

```json
{
  "python.linting.mypyArgs": [
    "--strict",
  ],
}
```
