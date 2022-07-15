function pdf-to-img --argument _file
  if test (string length "$_file") -eq 0
    echo "pdf-to-img: require file"
    exit 1
  end

  set file_name (basename $_file)
  set target_dir (dirname (realpath "$_file"))
  set simple_name (string split -r -m1 "." "$file_name")[1]
  set temp_dir (mktemp -d)
  cp "$_file" "$temp_dir"
  cd "$temp_dir"
  pdftoppm -png "$file_name" "$simple_name"
  rm "$file_name"
  convert $simple_name-*.png "$file_name"
  mv "$file_name" "$target_dir/$simple_name-converted.pdf"
  cd -
  rm -r "$temp_dir" 
end
