(* The record is not needed, it is just added to make sure we could add fields
   in the implementation if we needed. *)
type t = { buf_write : Eio.Buf_write.t }

let buf_write t = t.buf_write

let with_flow ?initial_size flow f =
  Eio.Buf_write.with_flow ?initial_size flow (fun buf_write -> f { buf_write })
;;

let flush t = Eio.Buf_write.flush t.buf_write
let print_string t str = Eio.Buf_write.string t.buf_write str
let print_newline t = print_string t "\n"

let print_endline t str =
  print_string t str;
  print_newline t
;;

let print_lines t lines = List.iter lines ~f:(fun line -> print_endline t line)

let print_s ?(mach = false) t sexp =
  print_endline t (if mach then Sexp.to_string_mach sexp else Sexp.to_string_hum sexp)
;;

let printf t fmt = Printf.ksprintf (fun str -> print_string t str) fmt
let aprintf t fmt = Stdlib.Format.kasprintf (fun str -> print_string t str) fmt
