# Declare Expressions in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **declare expressions**: introduce
local constants/objects inside an expression (`declare … begin …`).
For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| declare in `return` | `Hypotenuse`, `Scaled_Sum` |
| Expression function body | `Midpoint`, `Describe_Pair` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 3).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
