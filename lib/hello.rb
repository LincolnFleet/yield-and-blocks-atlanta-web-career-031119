names = ["Tim", "Tom", "Jim"]

def hello_t(array)
  if block_given?
    i = 0
    while i < array.length
      yield array[i]
      i += 1
    end
  else
    puts "Hey! No block was given!"
  end
    return array
end

hello_t(names) {|name| if name.start_with?("T")
  puts "Hi, #{name}"
  end
}
