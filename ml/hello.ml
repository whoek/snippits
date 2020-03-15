(*   

https://github.com/ocaml/ocaml/

The stdlib module contains numbers, booleans, strings, exceptions, references, lists, arrays,
input-output channels, ...   This module is automatically opened at the beginning of each compilation.
All components of this module can therefore be referred by their short name.

Therefore array is in standard library, unix is not

To create a native executable:

ocamlfind ocamlopt -linkpkg -package unix map1.ml -o map1.exe

*)

let () = 
  let d = Unix.gettimeofday() in
  let b = Array.make 10_000_000 1.0 in
  print_float (Unix.gettimeofday() -. d);
  print_float b.(100)
