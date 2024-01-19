module Value = struct
  type t = Value of int

  let pp fmt (Value v) = Stdlib.Format.fprintf fmt "value:%d" v
end

let%expect_test "write" =
  Eio_main.run
  @@ fun env ->
  Eio_writer.with_flow (Eio.Stdenv.stdout env)
  @@ fun w ->
  Eio_writer.write_sexp w [%sexp { text = "Hello, World!" }];
  Eio_writer.flush w;
  [%expect {| ((text "Hello, World!")) |}];
  Eio_writer.writef w "Hello, %s\n" "World!";
  Eio_writer.flush w;
  [%expect {| Hello, World! |}];
  Eio_writer.writef w "Hello Value %a\n" Value.pp (Value 42);
  Eio_writer.flush w;
  [%expect {| Hello Value value:42 |}];
  ()
;;

let%expect_test "stdio" =
  Eio_main.run
  @@ fun env ->
  Eio_writer.print_sexp ~env [%sexp { text = "Hello, World!" }];
  [%expect {| ((text "Hello, World!")) |}];
  Eio_writer.printf ~env "Hello, %s\n" "World!";
  [%expect {| Hello, World! |}];
  Eio_writer.aprintf ~env "Hello Value %a\n" Value.pp (Value 42);
  [%expect {| Hello Value value:42 |}];
  ()
;;
