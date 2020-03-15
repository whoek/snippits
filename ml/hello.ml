(*   

https://github.com/ocaml/ocaml/

The stdlib module contains numbers, booleans, strings, exceptions, references, lists, arrays,
input-output channels, ...   This module is automatically opened at the beginning of each compilation.

For code below - Array is in standard library, Unix is not -- so need to be added during compilation

To create a native executable:
ocamlfind ocamlopt -linkpkg -package unix hello.ml -o hello.exe

*)

let () = 
  let d = Unix.gettimeofday() in
  let b = Array.make 10_000_000 1.0 in
  print_float (Unix.gettimeofday() -. d);
  print_float b.(100)
  
