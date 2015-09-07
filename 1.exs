handle_open = fn
  { :ok, file  } -> IO.puts "Read data: #{IO.read(file, :line)}"
  { _  , error } -> IO.puts "Error: #{:file.format_error(error)}"
end

handle_open.(File.open("1"))
handle_open.(File.open("2"))
