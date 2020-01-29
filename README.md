# GitHub Action Kotlin Linter

This GitHub action runs the Kotlin Linter, [ktlint](https://github.com/pinterest/ktlint).

## Inputs

### `patterns`

**Optional** A list of patterns to pass along to the `ktlint` command. Default: `**/src/**/*.kt`

## Example usage

```
name: ktlint

on:
  pull_request:
    paths:
      - "**/*.kt"
      - ".github/workflows/ktlint.yml"

 jobs:
   ktlint:
     runs-on: ubuntu-latest

     steps:
       - name: "checkout"
         uses: actions/checkout@v2

       - name: "ktlint"
         uses: "vroy/gha-kotlin-linter@v1"
```
