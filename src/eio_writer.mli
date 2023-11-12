(** Writing to a [Eio.Buf_write.t] with an api that resembles [Stdio]. *)

(** This is equivalent to a [Eio.Buf_write.t]. The equality is not exposed
    because we might end up adding stuff in it, TBD. *)
type t

val buf_write : t -> Eio.Buf_write.t

(** Same as [Eio.Buf_write.with_flow]. *)
val with_flow : ?initial_size:int -> _ Eio.Flow.sink -> (t -> 'a) -> 'a

val flush : t -> unit
val printf : t -> ('a, unit, string, unit) format4 -> 'a
val aprintf : t -> ('a, Stdlib.Format.formatter, unit) format -> 'a

(** See [Stdio.print_s]. Default to [mach:false], which means uses
    [Sexp.to_string_hum] by default. *)
val print_s : ?mach:bool -> t -> Sexp.t -> unit

val print_string : t -> string -> unit

(** Print a newline character. *)
val print_newline : t -> unit

(** Print a string and print a newline. *)
val print_endline : t -> string -> unit

(** Run [print_endline] on all lines in the order supplied. *)
val print_lines : t -> string list -> unit
