# ws-sample

Steps to reproduce:

1) get elixir deps and run app
2) get npm deps and run app
3) run client app

console logs 'catching up', socket is loaded and works

4) `yarn build` / `npm run build`
5) `yarn preview` / `npm run preview`

open app, get error:

```
500

Named export 'Socket' not found. The requested module 'phoenix' is a CommonJS module, which may not support all module.exports as named exports.
CommonJS modules can always be imported via the default export, for example using:

import pkg from 'phoenix';
const { Socket } = pkg;

SyntaxError: Named export 'Socket' not found. The requested module 'phoenix' is a CommonJS module, which may not support all module.exports as named exports.
CommonJS modules can always be imported via the default export, for example using:

import pkg from 'phoenix';
const { Socket } = pkg;
```

6) When building, suggested fix results in:

```
1: import pkg from "phoenix"
          ^
2: const { Socket } = pkg
3: let channel
> 'default' is not exported by node_modules/phoenix/priv/static/phoenix.esm.js, imported by src/lib/api.ts
```
