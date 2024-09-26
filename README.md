# eio-writer

[![CI Status](https://github.com/mbarbin/eio-writer/workflows/ci/badge.svg)](https://github.com/mbarbin/eio-writer/actions/workflows/ci.yml)
[![Coverage Status](https://coveralls.io/repos/github/mbarbin/eio-writer/badge.svg?branch=main)](https://coveralls.io/github/mbarbin/eio-writer?branch=main)

This is an experimental library to write to an `Eio.Buf_write` with an api that resembles [Stdio](https://github.com/janestreet/stdio) or [Async.Writer](https://github.com/janestreet/async_unix), depending on the context.

## Acknowledgements

We would like to express our gratitude to the `Eio` developers for their work on the [eio](https://github.com/ocaml-multicore/eio) project.

We're also thankful for the api exposed by the `Stdio` and `Async_unix.Writer` modules which we took inspiration from in this project. `Stdio` and `Async_unix` are released under the terms of an `MIT` License. Their copyright and permission notice are included at the root of this project, in the file `LICENSE.janestreet`.

## Code Documentation

The code documentation of the latest release is built with `odoc` and published to `GitHub` pages [here](https://mbarbin.github.io/eio-writer).
