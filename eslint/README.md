# Eslint setup

## Dev dependencies

```bash
yarn add --dev babel-eslint eslint eslint-config-alloy eslint-plugin-babel eslint-plugin-html eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-node eslint-plugin-promise eslint-plugin-react eslint-plugin-react-hooks
```

## My React eslint conf

[.eslintrc.json](https://github.com/spidergon/dev-config/blob/master/eslint/.eslintrc.json)

## My WordPress eslint conf

```json
{
  "root": true,
  "extends": ["alloy"],
  "parser": "babel-eslint",
  "env": {
    "es6": true,
    "browser": true,
    "node": true,
    "jquery": true
  },
  "globals": { "Howl": true, "Howler": true },
  "plugins": ["babel"],
  "rules": {
    "no-debugger": 1,
    "no-alert": 0,
    "no-console": 0,
    "no-var": "error",
    "prefer-const": [
      "error",
      {
        "destructuring": "all"
      }
    ],
    "no-param-reassign": [
      "error",
      {
        "props": false
      }
    ],
    "radix": ["error", "as-needed"],
    "no-shadow": [
      2,
      {
        "hoist": "all",
        "allow": ["resolve", "reject", "done", "next", "err", "error"]
      }
    ],
    "indent": 0,
    "no-invalid-this": 0, // for arrow functions
    "babel/no-invalid-this": 1,
    "babel/new-cap": 1,
    "babel/no-unused-expressions": 1,
    "babel/valid-typeof": 1
  }
}
```
