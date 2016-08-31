(* See docs/lbx-format for the original delphi code *)

type graphics_header = {
  width : int;
  height : int;
  unknown1 : int;
  bitmap_count : int;
  unknown2 : int;
  unknown3 : int;
  unknown4 : int;
  palette_info_offset : int;
  unknown5 : int
}

type graphics_palette = {
  palette_offset : int;
  first_palette_color_index : int;
  count : int;
  unknown : int
}

type palette_entry = {
  red : int;
  green : int;
  blue : int
}

(*
 * TGfxPalette = Array [0..255] of TColor;
 *)
type palette = palette_entry list;;

let default_palette : palette =
 let make r g b = {red = r; green = g; blue = b;} in
 [(make 0x0  0x0  0x0);
 (make 0x8  0x4  0x4);
 (make 0x24 0x1c 0x18);
 (make 0x38 0x30 0x2c);
 (make 0x48 0x40 0x3c);
 (make 0x58 0x50 0x4c);
 (make 0x68 0x60 0x5c);
 (make 0x7c 0x74 70);
 (make 0x8c 0x84 0x80);
 (make 0x9c 0x94 0x90);
 (make 0xac 0xa4 0xa0);
 (make 0xc0 0xb8 0xb4);
 (make 0xd0 0xc8 0xc4);
 (make 0xe0 0xd8 0xd4);
 (make 0xf0 0xe8 0xe4);
 (make 0xfc 0xfc 0xfc);
 (make 0x38 0x20 0x1c);
 (make 0x40 0x2c 0x24);
 (make 0x48 0x34 0x2c);
 (make 0x50 0x3c 0x30);
 (make 0x58 0x40 0x34);
 (make 0x5c 0x44 0x38);
 (make 0x60 0x48 0x3c);
 (make 0x64 0x4c 0x3c);
 (make 0x68 0x50 0x40);
 (make 0x70 0x54 0x44);
 (make 0x78 0x5c 0x4c);
 (make 0x80 0x64 0x50);
 (make 0x8c 0x70 0x58);
 (make 0x94 0x74 0x5c);
 (make 0x9c 0x7c 0x64);
 (make 0xa4 0x84 0x68);
 (make 0xec 0xc0 0xd4);
 (make 0xd4 0x98 0xb4);
 (make 0xbc 0x74 0x94);
 (make 0xa4 0x54 0x7c);
 (make 0x8c 0x38 0x60);
 (make 0x74 0x24 0x4c);
 (make 0x5c 0x10 0x34);
 (make 0x44 0x4 0x20);
 (make 0xec 0xc0 0xc0);
 (make 0xd4 0x94 0x94);
 (make 0xbc 0x74 0x74);
 (make 0xa4 0x54 0x54);
 (make 0x8c 0x38 0x38);
 (make 0x74 0x24 0x24);
 (make 0x5c 0x10 0x10);
 (make 0x44 0x4 0x4);
 (make 0xec 0xd4 0xc0);
 (make 0xd4 0xb4 0x98);
 (make 0xbc 0x98 0x74);
 (make 0xa4 0x7c 0x54);
 (make 0x8c 0x60 0x38);
 (make 0x74 0x4c 0x24);
 (make 0x5c 0x34 0x10);
 (make 0x44 0x24 0x4);
 (make 0xec 0xec 0xc0);
 (make 0xd4 0xd4 0x94);
 (make 0xbc 0xbc 0x74);
 (make 0xa4 0xa4 0x54);
 (make 0x8c 0x8c 0x38);
 (make 0x74 0x74 0x24);
 (make 0x5c 0x5c 0x10);
 (make 0x44 0x44 0x4);
 (make 0xd4 0xec 0xbc);
 (make 0xb8 0xd4 0x98);
 (make 0x98 0xbc 0x74);
 (make 0x7c 0xa4 0x54);
 (make 0x60 0x8c 0x38);
 (make 0x4c 0x74 0x24);
 (make 0x38 0x5c 0x10);
 (make 0x24 0x44 0x4);
 (make 0xc0 0xec 0xc0);
 (make 0x98 0xd4 0x98);
 (make 0x74 0xbc 0x74);
 (make 0x54 0xa4 0x54);
 (make 0x38 0x8c 0x38);
 (make 0x24 0x74 0x24);
 (make 0x10 0x5c 0x10);
 (make 0x4 0x44 0x4);
 (make 0xc0 0xec 0xd8);
 (make 0x98 0xd4 0xb8);
 (make 0x74 0xbc 0x98);
 (make 0x54 0xa4 0x7c);
 (make 0x38 0x8c 0x60);
 (make 0x24 0x74 0x4c);
 (make 0x10 0x5c 0x38);
 (make 0x4 0x44 0x24);
 (make 0xf4 0xc0 0xa0);
 (make 0xe0 0xa0 0x84);
 (make 0xcc 0x84 0x6c);
 (make 0xc8 0x8c 0x68);
 (make 0xa8 0x78 0x54);
 (make 0x98 0x68 0x4c);
 (make 0x8c 0x60 0x44);
 (make 0x7c 0x50 0x3c);
 (make 0xc0 0xd8 0xec);
 (make 0x94 0xb4 0xd4);
 (make 0x70 0x98 0xbc);
 (make 0x54 0x7c 0xa4);
 (make 0x38 0x64 0x8c);
 (make 0x24 0x4c 0x74);
 (make 0x10 0x38 0x5c);
 (make 0x4 0x24 0x44);
 (make 0xc0 0xc0 0xec);
 (make 0x98 0x98 0xd4);
 (make 0x74 0x74 0xbc);
 (make 0x54 0x54 0xa4);
 (make 0x3c 0x38 0x8c);
 (make 0x24 0x24 0x74);
 (make 0x10 0x10 0x5c);
 (make 0x4 0x4 0x44);
 (make 0xd8 0xc0 0xec);
 (make 0xb8 0x98 0xd4);
 (make 0x98 0x74 0xbc);
 (make 0x7c 0x54 0xa4);
 (make 0x60 0x38 0x8c);
 (make 0x4c 0x24 0x74);
 (make 0x38 0x10 0x5c);
 (make 0x24 0x4 0x44);
 (make 0xec 0xc0 0xec);
 (make 0xd4 0x98 0xd4);
 (make 0xbc 0x74 0xbc);
 (make 0xa4 0x54 0xa4);
 (make 0x8c 0x38 0x8c);
 (make 0x74 0x24 0x74);
 (make 0x5c 0x10 0x5c);
 (make 0x44 0x4 0x44);
 (make 0xd8 0xd0 0xd0);
 (make 0xc0 0xb0 0xb0);
 (make 0xa4 0x90 0x90);
 (make 0x8c 0x74 0x74);
 (make 0x78 0x5c 0x5c);
 (make 0x68 0x4c 0x4c);
 (make 0x5c 0x3c 0x3c);
 (make 0x48 0x2c 0x2c);
 (make 0xd0 0xd8 0xd0);
 (make 0xb0 0xc0 0xb0);
 (make 0x90 0xa4 0x90);
 (make 0x74 0x8c 0x74);
 (make 0x5c 0x78 0x5c);
 (make 0x4c 0x68 0x4c);
 (make 0x3c 0x5c 0x3c);
 (make 0x2c 0x48 0x2c);
 (make 0xc8 0xc8 0xd4);
 (make 0xb0 0xb0 0xc0);
 (make 0x90 0x90 0xa4);
 (make 0x74 0x74 0x8c);
 (make 0x5c 0x5c 0x78);
 (make 0x4c 0x4c 0x68);
 (make 0x3c 0x3c 0x5c);
 (make 0x2c 0x2c 0x48);
 (make 0xd8 0xdc 0xec);
 (make 0xc8 0xcc 0xdc);
 (make 0xb8 0xc0 0xd4);
 (make 0xa8 0xb8 0xcc);
 (make 0x9c 0xb0 0xcc);
 (make 0x94 0xac 0xcc);
 (make 0x88 0xa4 0xcc);
 (make 0x88 0x94 0xdc);
 (make 0xfc 0xf0 0x90);
 (make 0xfc 0xe4 0x60);
 (make 0xfc 0xc8 0x24);
 (make 0xfc 0xac 0xc);
 (make 0xfc 0x78 0x10);
 (make 0xd0 0x1c 0x0);
 (make 0x98 0x0 0x0);
 (make 0x58 0x0 0x0);
 (make 0x90 0xf0 0xfc);
 (make 0x60 0xe4 0xfc);
 (make 0x24 0xc8 0xfc);
 (make 0xc 0xac 0xfc);
 (make 0x10 0x78 0xfc);
 (make 0x0 0x1c 0xd0);
 (make 0x0 0x0 0x98);
 (make 0x0 0x0 0x58);
 (make 0xfc 0xc8 0x64);
 (make 0xfc 0xb4 0x2c);
 (make 0xec 0xa4 0x24);
 (make 0xdc 0x94 0x1c);
 (make 0xcc 0x88 0x18);
 (make 0xbc 0x7c 0x14);
 (make 0xa4 0x6c 0x1c);
 (make 0x8c 0x60 0x24);
 (make 0x78 0x54 0x24);
 (make 0x60 0x44 0x24);
 (make 0x48 0x38 0x24);
 (make 0x34 0x28 0x1c);
 (make 0x90 0x68 0x34);
 (make 0x90 0x64 0x2c);
 (make 0x94 0x6c 0x34);
 (make 0x94 0x70 0x40);
 (make 0x8c 0x5c 0x24);
 (make 0x90 0x64 0x2c);
 (make 0x90 0x68 0x30);
 (make 0x98 0x78 0x4c);
 (make 0x60 0x3c 0x2c);
 (make 0x54 0xa4 0xa4);
 (make 0xc0 0x0 0x0);
 (make 0xfc 0x88 0xe0);
 (make 0xfc 0x58 0x84);
 (make 0xf4 0x0 0xc);
 (make 0xd4 0x0 0x0);
 (make 0xac 0x0 0x0);
 (make 0xe8 0xa8 0xfc);
 (make 0xe0 0x7c 0xfc);
 (make 0xd0 0x3c 0xfc);
 (make 0xc4 0x0 0xfc);
 (make 0x90 0x0 0xbc);
 (make 0xfc 0xf4 0x7c);
 (make 0xfc 0xe4 0x0);
 (make 0xe4 0xd0 0x0);
 (make 0xa4 0x98 0x0);
 (make 0x64 0x58 0x0);
 (make 0xac 0xfc 0xa8);
 (make 0x74 0xe4 0x70);
 (make 0x0 0xbc 0x0);
 (make 0x0 0xa4 0x0);
 (make 0x0 0x7c 0x0);
 (make 0xac 0xa8 0xfc);
 (make 0x80 0x7c 0xfc);
 (make 0x0 0x0 0xfc);
 (make 0x0 0x0 0xbc);
 (make 0x0 0x0 0x7c);
 (make 0x30 0x30 0x50);
 (make 0x28 0x28 0x48);
 (make 0x24 0x24 0x40);
 (make 0x20 0x1c 0x38);
 (make 0x1c 0x18 0x34);
 (make 0x18 0x14 0x2c);
 (make 0x14 0x10 0x24);
 (make 0x10 0xc 0x20);
 (make 0xa0 0xa0 0xb4);
 (make 0x88 0x88 0xa4);
 (make 0x74 0x74 0x90);
 (make 0x60 0x60 0x80);
 (make 0x50 0x4c 0x70);
 (make 0x40 0x3c 0x60);
 (make 0x30 0x2c 0x50);
 (make 0x24 0x20 0x40);
 (make 0x18 0x14 0x30);
 (make 0x10 0xc 0x20);
 (make 0x14 0xc 0x8);
 (make 0x18 0x10 0xc);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0);
 (make 0x0 0x0 0x0)];;

let combine_bytes bytes =
  List.fold_left (fun total now -> total * 256 + now) 0 bytes
;;

type offsets = Offset of int * int;; 

(* this seems to process the list backwards, but im not sure why exactly *)
let rec do_successive_pairs (things : int list) (doer : int -> int -> 'a) : 'a list =
  match things with
  (* base case *)
  | a :: b :: [] -> [(doer a b)]
  (* recursive cases *)
  | a :: b :: rest -> (doer a b) :: (do_successive_pairs (b :: rest) doer)
  (* failure case *)
  | _ :: [] | [] -> raise (Failure "Need more than 1 pair")
;;

let render bitmap palette start_rle_value offset make_read =
  let reader start xend =
    (*
    Printf.printf "Make reader at %d for %d bytes\n" start xend;
    *)
    let read = make_read start in
    let index = ref 0 in
    let do_read bytes =
      if !index < xend then begin
        index := !index + bytes;
        Utils.inject (fun _ -> (read 1)) bytes
      end else
        []
    in
    do_read
  in
  let size, read =
    match offset with
    | Offset (start, xend) -> xend - start, reader start (xend - start)
  in
  let x = ref 0 in
  let y = Allegro.get_bitmap_height bitmap in
  let rec loop rle_value =
    match (read 1) with
    | [] -> ignore();
    | [0xff] -> (* Printf.printf "  Reset rle\n"; *) loop start_rle_value
    | rle -> begin
      let rle_value =
        (match rle with
        | [0] -> start_rle_value
        | [0x80] -> 0xe0
        | [what] -> raise (Failure (Printf.sprintf "unexpected rle data %d"
        what))
        | [] -> raise (Failure "unexpected end of data"))
      in
      (*
      Printf.printf "  RLE value is %d\n" rle_value;
      *)
      match (read 3) with
      | [next; data; y] -> begin
        if next = 0 then
          raise (Failure "Next bitmap location cannot be 0");
        let total_read = ref 0 in
        let read n =
          total_read := !total_read + 1;
          read n
        in
        (*
        Printf.printf "  Read data next: %d data: %d y: %d\n" next data y;
        *)
        let y = ref y in
        let rec loop data =
          let do_rle length palette_index =
            if length + !y > Allegro.get_bitmap_height bitmap then
              raise (Failure (Printf.sprintf "RLE length overrun %d at %d"
              length !y));
              (*
            Printf.printf "  RLE length %d at %d, %d Palette index %d\n" length
            !x !y palette_index;
            *)
            let color = 
              match (List.nth palette palette_index) with
              | {red = 0xa0; green = 0xa0; blue = 0xb4} -> Allegro.makecol 00 0xff 00
              | x -> Allegro.makecol x.red x.green x.blue
            in
            for run = 0 to length - 1 do
              Allegro.putpixel bitmap !x !y color;
              y := !y + 1
            done
          in
          let do_pixel index =
            (*
            Printf.printf "  Put pixel %d at %d, %d\n" index !x !y;
            *)
            let color = 
              match (List.nth palette index) with
              | {red = 0xa0; green = 0xa0; blue = 0xb4} -> Allegro.makecol 00 0xff 00
              | x -> Allegro.makecol x.red x.green x.blue
            in
            Allegro.putpixel bitmap !x !y color;
            y := !y + 1
          in
          if data > 0 then
            match (read 1) with
            | [value] ->
                if value >= rle_value then begin
                  (*
                  Printf.printf "  Value for rle is %d\n" value;
                  *)
                  let rle_length = value - rle_value + 1 in
                  let index = List.hd (read 1) in
                  do_rle rle_length index;
                  loop (data - 2)
                end else begin
                  do_pixel value;
                  loop (data - 1)
                end
        in
        loop data;
        (*
        Printf.printf "  Total read is %d\n" !total_read;
        *)
        if !total_read < next - 2 then
          match (read 2) with
          | [new_data; new_y] ->
              (*
              Printf.printf "  Read more %d at %d\n" new_data new_y;
              *)
              y := !y + new_y;
              loop new_data 
      end;
      x := !x + 1;
      loop rle_value
    end
  in
  begin
  match (read 1) with
  | [1] -> ignore(Allegro.clear_to_color bitmap (Allegro.makecol 0xff 0 0xff))
  | _ -> ignore ()
  end;
  loop start_rle_value;
  bitmap
;;

let lbxToSprite (lbx : Lbxreader.lbxfile) output_directory =
  (* returns a function that produces integers of length n
   * skips the first `offset' bytes.
   *)
  let reader offset =
    let data = ref lbx.Lbxreader.data in
    let get_bytes n = 
      let rec all n = 
        match n with
        | 0 -> []
        | z -> let element = List.hd !data in
        data := List.tl !data;
        element :: (all (z-1))
        in
        List.rev (all n)
    in
    let read n =
      combine_bytes (get_bytes n)
    in
    (* avoid creating the number, just skip `offset' positions *)
    ignore (get_bytes offset);
    read
  in
  let read = reader 0 in
  let read_word () = read 2 in
  (* Printf.printf "Real width is %d\n" (read_word ()); *)
  let read_header () =
    let width = read_word () in
    let height = read_word () in
    let unknown1 = read_word () in
    let bitmap_count = read_word () in
    let unknown2 = read_word () in
    let unknown3 = read_word () in
    let unknown4 = read_word () in
    let palette_info_offset = read_word () in
    let unknown5 = read_word () in
    {width = width;
    height = height;
    unknown1 = unknown1;
    bitmap_count = bitmap_count;
    unknown2 = unknown2;
    unknown3 = unknown3;
    unknown4 = unknown4;
    palette_info_offset = palette_info_offset;
    unknown5 = unknown5} in
  let read_palette_info offset =
    let read = reader offset in
    let read_word () = read 2 in
    let palette_offset = read_word () in
    let first_palette_color_index = read_word () in
    let count = read_word () in
    let unknown = read_word () in
    {palette_offset = palette_offset;
    first_palette_color_index = first_palette_color_index;
    count = count;
    unknown = unknown}
  in
  let read_palette offset =
    if offset > 0 then
      let info = read_palette_info offset in
      (* Printf.printf "Colors %d\n" info.count; *)
      (* FIXME: read the palette *)
      default_palette
    else
      default_palette
  in
  let header = read_header () in
  let offsets =
    if header.bitmap_count = 0 then
      raise (Failure "Bitmap count is 0")
    else
      let pairs = Utils.inject (fun _ -> (read 4)) (header.bitmap_count + 1) in
      do_successive_pairs pairs (fun from xto -> Offset (from, xto))
  in
  let palette_info = if header.palette_info_offset > 0 then
    read_palette_info header.palette_info_offset
  else
    {palette_offset = 0;
    first_palette_color_index = 0;
    count = 255;
    unknown = 0}
  in
  let palette = read_palette header.palette_info_offset in
  let rle_value = palette_info.first_palette_color_index + palette_info.count in
  let bitmap =
    let bitmap = Allegro.create_bitmap header.width header.height in
    Allegro.clear_to_color bitmap (Allegro.makecol 0xff 0 0xff);
    bitmap
  in
  let print_stuff () =
    Printf.printf "Lbx %d\n" lbx.Lbxreader.id;
    Printf.printf "Width is %d\n" header.width;
    Printf.printf "Height is %d\n" header.height;
    Printf.printf "Bitmaps %d\n" header.bitmap_count;
    Printf.printf "Palette info offset %d\n" header.palette_info_offset;
    Printf.printf "Palette offset %d\n" palette_info.palette_offset;
    Printf.printf "RLE value %d\n" rle_value;
    Printf.printf "Palette color index %d count %d\n"
    palette_info.first_palette_color_index palette_info.count;
    List.iter (fun a -> match a with
    | Offset (start, xto) -> Printf.printf "Bitmap Offset %d - %d\n"
    start xto) offsets;
  in
  (*
  print_stuff();
  *)
  let bitmaps = List.map (function offset ->
    try
      let bitmap = render bitmap palette rle_value offset reader
      in
      let start = match offset with
                  | Offset (s, e) -> e
      in
      Allegro.save_bitmap (Printf.sprintf "%s/image_%d_%d.bmp" output_directory lbx.Lbxreader.id
      start) bitmap;
      bitmap
    with Failure (what) -> 
      Printf.printf "Failed to render: %s\n" what;
      bitmap)
  offsets in
  ignore ();
;;

let convert file =
  Printf.printf "Converting %s\n" file;
  let dir = Printf.sprintf "%s-out" (Filename.basename file) in
  begin
  try
    Unix.mkdir dir 0o770
  with _ ->
    ignore ()
  end;
  try
    List.map (fun lbx ->
      try
        Some (lbxToSprite lbx dir)
      with Failure (what) ->
        Printf.printf "Could not extract sprites from lbx %d because %s\n"
        lbx.Lbxreader.id what;
        None
      ) (Lbxreader.read_lbx file)
  with Failure (what) ->
    Printf.printf " failure.. %s\n" what;
    []
;;

let init () =
  Allegro.allegro_init ();
  Allegro.set_color_depth 16;
;;

init ();

List.map convert (List.tl (Array.to_list Sys.argv))
