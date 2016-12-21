# index

The package index for zulu

## Packages

Packages are specified by creating a JSON file in this repository with the name
of the package.

Below is an example JSON file with comments added for explanatory purposes.
Comments should *not* be included in any submissions.

> **NOTE:** Zulu uses a very simple JSON parses, which has one big limitation, in that nested objects or arrays within the JSON object **must not** contain any newlines. Follow the formatting below and you should be fine.

```json
{
  "name": "my-awesome-package",
  "description": "A short description of the package",
  "author": "Your Name <https://github.com/your-username>",
  "repository": "https://github.com/your-username/your-repository",

  // (optional) Can be one of 'script', 'plugin' or 'theme'
  "type": "script",

  // (optional) A list of packages this package depends on, and which
  // will be installed at the same time
  "dependencies": ["a-package", "another-package"],

  // (optional) An object containing files in the repository, and the name
  // of a symlink that will be created and placed in $PATH
  "bin": {"path/to/executable": "command-name"}

  // (optional) An object containing files in the repository, and the name
  // of a symlink that will be created and placed in $fpath
  "share": {"path/to/script": "module-name"}

  // (optional) An object containing files in the repository, and the name
  // of a symlink that will be created and sourced on shell startup
  "init": {"path/to/script": "script-name"}
}
```
