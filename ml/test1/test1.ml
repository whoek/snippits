(*

Use this to compile code below to native executable :
    ocamlfind ocamlopt -o map1.exe -linkpkg -package unix test1.ml

or use following dune file
```
(executable
 (name test1)
 (libraries unix))
```
Then:
dune build
dune exec ./test1

*)


let () =
  let d = Unix.gettimeofday() in
  let b = Array.make 10_000_000 1.0 in
  let lx = [1;2;3;4] in
  let ly = List.map (fun x -> x * x) lx in
  Printf.printf  "\nb.(100) = %f\n%!"  b.(100);
  List.iter  (Printf.printf "%d ") lx;
  print_string "\n";
  List.iter  (Printf.printf "%d ") ly;
  Printf.printf "\n%f"(Unix.gettimeofday() -. d)

