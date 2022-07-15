function pretty-csv --description 'Pretty-print a csv file'
column -t -s';' "$argv"
end
