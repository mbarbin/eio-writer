## 0.0.6 (2024-03-13)

### Changed

- Upgrade `eio` to `1.0` (no change required).
- Uses `expect-test-helpers` (reduce core dependencies)
- Upgrade `eio` to `0.15`.
- Run `ppx_js_style` as a linter & make it a `dev` dependency.
- Upgrade GitHub workflows `actions/checkout` to v4.
- In CI, specify build target `@all`, and add `@lint`.
- List ppxs instead of `ppx_jane`.

## 0.0.5 (2024-02-14)

### Changed

- Upgrade dune to `3.14`.
- Build the doc with sherlodoc available to enable the doc search bar.

## 0.0.4 (2024-02-09)

### Added

- Setup `bisect_ppx` for test coverage.

### Changed

- Internal changes related to the release process.
- Upgrade dune and internal dependencies.

## 0.0.3 (2024-01-19)

### Changed

- Refactor the interface, use `Async.Writer` as model for the part operating on
  `Eio_writer.t` and convert the `Stdio` part (`print_*`) into quick one-off
  helpers. This is a breaking change.

## 0.0.2 (2024-01-18)

### Changed

- Internal changes related to build and release process.

## 0.0.1 (2023-11-12)

Initial release.
