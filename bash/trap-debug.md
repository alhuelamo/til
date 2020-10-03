# Using trap DEBUG to debugging a script line by line

Source: https://twitter.com/b0rk/status/1312413117436104705

```bash
#!/bin/bash

trap '(read -p "$BASH_SOURCE:$LINENO] $BASH_COMMAND?")' DEBUG

My script...
```
