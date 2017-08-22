def list names
  str = ''
  names.each_with_index do |x, idx|
    if names.length == 1 || names.length - 1 == idx
      str += x[:name]
    else
      str += x[:name]
      if (names.length - idx) > 2
        str += ", "
      else
        str += " & "
      end
    end
  end
  puts str
end

list([])
list([{name: 'Bob'}])
list([{name: 'Bob'}, {name: 'George'}])
list([{name: 'Bob'}, {name: 'George'}, {name: 'Jen'}])
list([{name: 'Bob'}, {name: 'George'}, {name: 'Jen'}, {name: 'Tony'}])