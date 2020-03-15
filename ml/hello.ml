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
  let lx = [1;2;3;4] in
  let ly = List.map (fun x -> x * x) lx in
  Printf.printf  "\nb.(100) = %f\n%!"  b.(100);
  List.iter  (Printf.printf "%d ") lx;
  List.iter  (Printf.printf "%d ") ly;
  Printf.printf "\n%f"(Unix.gettimeofday() -. d)


