(lang dune 3.12)

(name eio-writer)

(generate_opam_files)

(license MIT)

(authors "Mathieu Barbin")

(maintainers "Mathieu Barbin")

(source
 (github mbarbin/eio-writer))

(documentation "https://mbarbin.github.io/eio-writer/")

(package
 (name eio-writer)
 (synopsis "Write to an [Eio.Buf_write] with an api that resembles [Stdio]")
 (depends
  (ocaml
   (>= 5.1))
  (base
   (and
    (>= v0.16)
    (< v0.17)))
  (eio
   (>= 0.14))
  (eio_main
   (and
    :with-test
    (>= 0.14)))
  (expect_test_helpers_core
   (and
    :with-test
    (>= v0.16)
    (< v0.17)))
  (ppx_jane
   (and
    (>= v0.16)
    (< v0.17)))
  (ppx_js_style
   (and
    (>= v0.16)
    (< v0.17)))))