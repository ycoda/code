while true
    h, w = gets.split.map(&:to_i)
    break if h && w
end
str = []
h.times do
    symbol = gets.chomp
    while true
        if symbol.length == w
            str << symbol
            break
        end
    end
end
p str
