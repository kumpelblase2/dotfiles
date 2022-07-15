function teams --wraps teams --description 'alias teams teams --disable-seccomp-filter-sandbox'
 command teams --disable-seccomp-filter-sandbox $argv; 
end
