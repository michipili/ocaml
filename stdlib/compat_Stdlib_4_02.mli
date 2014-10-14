(* This module contains signatures for modules of the standard library
which are compatible with OCaml 4.02. Thus, if using newest versions
of the standard library breaks your code by shadowing some
identifiers, you can fix this by opening Compat_Stdlib_4_02 at the
beginning of your module definition. *)

module Bytes :
sig
  val length : bytes -> int
  val set : bytes -> int -> char -> unit
  val create : int -> bytes
  val make : int -> char -> bytes
  val init : int -> (int -> char) -> bytes
  val empty : bytes
  val of_string : string -> bytes
  val to_string : bytes -> string
  val sub : bytes -> int -> int -> bytes
  val sub_string : bytes -> int -> int -> string
  val fill : bytes -> int -> int -> char -> unit
  val blit : bytes -> int -> bytes -> int -> int -> unit
  val blit_string : string -> int -> bytes -> int -> int -> unit
  val concat : bytes -> bytes list -> bytes
  val cat : bytes -> bytes -> bytes
  val iter : (char -> unit) -> bytes -> unit
  val iteri : (int -> char -> unit) -> bytes -> unit
  val map : (char -> char) -> bytes -> bytes
  val mapi : (int -> char -> char) -> bytes -> bytes
  val trim : bytes -> bytes
  val escaped : bytes -> bytes
  val index : bytes -> char -> int
  val rindex : bytes -> char -> int
  val index_from : bytes -> int -> char -> int
  val rindex_from : bytes -> int -> char -> int
  val contains : bytes -> char -> bool
  val rcontains_from : bytes -> int -> char -> bool
  val uppercase : bytes -> bytes
  val lowercase : bytes -> bytes
  val capitalize : bytes -> bytes
  val uncapitalize : bytes -> bytes
  type t = bytes
  val unsafe_to_string : bytes -> string
  val unsafe_of_string : string -> bytes
  val unsafe_get : bytes -> int -> char
  val unsafe_set : bytes -> int -> char -> unit
  val unsafe_blit : bytes -> int -> bytes -> int -> int -> unit
  val unsafe_fill : bytes -> int -> int -> char -> unit
end

module String :
sig
  val length : string -> int
  val get : string -> int -> char
  val set : bytes -> int -> char -> unit
    [@@ocaml.deprecated]
  val create : int -> bytes
    [@@ocaml.deprecated]
  val make : int -> char -> string
  val init : int -> (int -> char) -> string
  val copy : string -> string
    [@@ocaml.deprecated]
  val sub : string -> int -> int -> string
  val fill : bytes -> int -> int -> char -> unit
    [@@ocaml.deprecated]
  val blit : string -> int -> bytes -> int -> int -> unit
  val iter : (char -> unit) -> string -> unit
  val iteri : (int -> char -> unit) -> string -> unit
  val map : (char -> char) -> string -> string
  val mapi : (int -> char -> char) -> string -> string
  val trim : string -> string
  val escaped : string -> string
  val index : string -> char -> int
  val rindex : string -> char -> int
  val index_from : string -> int -> char -> int
  val rindex_from : string -> int -> char -> int
  val contains : string -> char -> bool
  val contains_from : string -> int -> char -> bool
  val rcontains_from : string -> int -> char -> bool
  val uppercase : string -> string
  val lowercase : string -> string
  val capitalize : string -> string
  val uncapitalize : string -> string
  type t = string
  val compare: t -> t -> int
  val unsafe_get : string -> int -> char
  val unsafe_set : bytes -> int -> char -> unit
    [@@ocaml.deprecated]
  val unsafe_blit : string -> int -> bytes -> int -> int -> unit
  val unsafe_fill : bytes -> int -> int -> char -> unit
    [@@ocaml.deprecated]
end
