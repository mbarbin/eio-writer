module Value = struct
  type t = Value of int

  let pp fmt (Value v) = Stdlib.Format.fprintf fmt "value:%d" v
end

let%expect_test "hello" =
  Eio_main.run
  @@ fun env ->
  Eio_writer.with_flow (Eio.Stdenv.stdout env)
  @@ fun w ->
  Eio_writer.print_s w [%sexp { text = "Hello, World!" }];
  Eio_writer.flush w;
  [%expect {| ((text "Hello, World!")) |}];
  Eio_writer.printf w "Hello, %s\n" "World!";
  Eio_writer.flush w;
  [%expect {| Hello, World! |}];
  Eio_writer.aprintf w "Hello Value %a\n" Value.pp (Value 42);
  Eio_writer.flush w;
  [%expect {| Hello Value value:42 |}];
  ()
;;
