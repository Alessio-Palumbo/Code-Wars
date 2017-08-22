def song_decoder(song)
  a = song.gsub('WUB', ' ').split.join(' ')
  a
end

puts song_decoder("WUBIWUBLOVEWUBWUBYOU")