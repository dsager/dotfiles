# These methods will be available in all IRB shells
def pbcopy(input)
  input.to_s.tap do |str|
    IO.popen('xclip -selection clipboard', 'w') { |f| f << str }
  end
end

def pbpaste
  `xclip -selection clipboard -o`
end
