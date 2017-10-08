def acronomyze(e)
  if e.length > 30
    e = e.split('-') - ["the","of","in","from","by","with","and", "or", "for", "to", "at", "a"]
    acronym = e.map(&:chr).join
    return acronym
  end
  e.gsub('-', ' ')
end

def generate_bc(url, separator)
# puts "#{url} #{separator}"
  result = []
  history = '/'
  arr = url.slice((url.index('//') || 0), url.length).split('/').reject(&:empty?)
  # puts "#{arr.length}"
  puts "#{arr}"
  arr.pop if arr.last.include? "index"
  return '<span class="active">HOME</span>' if arr.length == 1

  arr.each do |e|
    if e == arr.first 
      result.push('<a href="/">HOME</a>')
    elsif e == arr.last
    e = e.slice(0, (e.index(/[\.\?\=#]/) || e.length))
    result.push('<span class="active">' + acronomyze(e).upcase + '</span>')
    else
      result.push('<a href="' + history + e + '/">' + acronomyze(e).upcase + '</a>')
      history.concat(e + '/')
    end
  end
  result.join(separator)
end

puts generate_bc("mysite.com/pictures/holidays.html", " : ")  #, '<a href="/">HOME</a> : <a href="/pictures/">PICTURES</a> : <span class="active">HOLIDAYS</span>')
puts generate_bc("www.codewars.com/users/GiacomoSorbi?ref=CodeWars", " / ") #, '<a href="/">HOME</a> / <a href="/users/">USERS</a> / <span class="active">GIACOMOSORBI</span>')
puts generate_bc("www.microsoft.com/important/confidential/docs/index.htm#top", " * ")  #, '<a href="/">HOME</a> * <a href="/important/">IMPORTANT</a> * <a href="/important/confidential/">CONFIDENTIAL</a> * <span class="active">DOCS</span>')
puts generate_bc("mysite.com/very-long-url-to-make-a-silly-yet-meaningful-example/example.asp", " > ")  #, '<a href="/">HOME</a> > <a href="/very-long-url-to-make-a-silly-yet-meaningful-example/">VLUMSYME</a> > <span class="active">EXAMPLE</span>')
puts generate_bc("www.very-long-site_name-to-make-a-silly-yet-meaningful-example.com/users/giacomo-sorbi", " + ") #, '<a href="/">HOME</a> + <a href="/users/">USERS</a> + <span class="active">GIACOMO SORBI</span>')

puts generate_bc("https://www.linkedin.com/in/giacomosorbi", "*")
puts generate_bc("www.agcpartners.co.uk/", "*")
puts generate_bc('codewars.com/or-from-research-transmutation/games/issues/index.html', ' . ')