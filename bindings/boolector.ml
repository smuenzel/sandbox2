

type btor
type sort
type node

type solver =
  | Lingeling
  | MiniSat
  | CryptoMiniSat
  | Cadical
[@@deriving sexp]

external make : unit -> btor = "caml_boolector_new"
external print_stats : btor -> unit = "caml_boolector_print_stats"

external true_val : btor -> node = "caml_boolector_true"
external false_val : btor -> node = "caml_boolector_false"

external implies : node -> node -> node = "caml_boolector_implies"
external iff : node -> node -> node = "caml_boolector_iff"

external assert_ : node -> unit = "caml_boolector_assert" [@@noalloc]

type solver_result =
  | Unknown
  | Sat
  | Unsat
[@@deriving sexp]

external sat : btor -> solver_result = "caml_boolector_sat" [@@noalloc]


(*$ open! Core

  let () = print_endline "safs"
  *)
let () = safe
(*$*)
