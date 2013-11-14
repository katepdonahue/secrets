def decode(mixed_message)
  # reverse it
  reversed_message = mixed_message.reverse
  # put the vowels and spaces back in
  # At first I tried gsub_args still with the regexps in there
  # but I got an error so I turned them into strings.
  gsub_args = [
    ["BZZZ", "a"],
    ["FZZZ", "e"],
    ["TRZZZ", "i"],
    ["KRZZZ", "o"],
    ["PRZZZ", "u"],
    ["YRZZZ", " "]
   ]

   history = Hash.new(reversed_message)

   # I'm really not sure what's going on here but figured
   # if I reversed gsub_args I wouldn't have to change the code below
   gsub_args.each_with_index do |args, i|
    history[(i+1)] = history[i].send(:gsub, args[0], args[1])
  end

  puts history.values.last
end
