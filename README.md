# tailwind-ppx starter

A starter project to play around with [`tailwind-ppx`](https://github.com/dylanirlbeck/tailwind-ppx) in a ReasonReact project.

## Run Project

Inside the project directory run the following:

```sh
yarn # Builds project dependencies
yarn re:watch # Compiles Reason, builds Tailwind CSS and watches for file changes
```

and then in a separate shell run

```sh
yarn dev # Starts the server
```

### Tailwind CSS Generator

This demo project ships with a built-in "generator" inside the `bsconfig.json`.
Essentially, the generator will watch for changes to your `index.css` file, and
if it changes your `tailwind.css` file will be automatically re-generated.

Unfortunately, there is a slight delay in generating the `tailwind.css` file
initially (and every time you clean the project), so if you get a compiler error
followed by the `Building ... /../src/index.css` message from Tailwind, simply
edit a Reason file to get the PPX to recognize the newly-generated Tailwind
file.

<img src="./LandingPage.png" height="500" width="500">
