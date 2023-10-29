while true
    h, w = gets.split.map(&:to_i)
    break unless h.zero? && w.zero?
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


# 隣接する上下左右のマスが全て '#' である場合の座標を求める
def find_adjacent_hashes(map)
    h = map.length
    w = map[0].length

    result = []

    for y in 0..h-1
        for x in 0..w-1
            if map[y][x] == '#'
                # 上方向
                if y > 0 && map[y - 1][x] == '#' && (y == 1 || map[y - 2][x] != '#')
                    result << [y, x]
                end
                # 下方向
                if y < h - 1 && map[y + 1][x] == '#' && (y == h - 2 || map[y + 2][x] != '#')
                    result << [y, x]
                end
                # 左方向
                if x > 0 && map[y][x - 1] == '#' && (x == 1 || map[y][x - 2] != '#')
                    result << [y, x]
                end
                # 右方向
                if x < w - 1 && map[y][x + 1] == '#' && (x == w - 2 || map[y][x + 2] != '#')
                    result << [y, x]
                end
            end
        end
    end

    return result
end

# 座標の表示
adjacent_hashes = find_adjacent_hashes(str)
adjacent_hashes.each { |coord| puts "#{coord[0]} #{coord[1]}" }








# 座標の表示
adjacent_hashes = find_adjacent_hashes(str)
adjacent_hashes.each { |coord| puts "#{coord[0]} #{coord[1]}" }

count = 0
str.each_with_index do |row, idx|
    row.chars.each_with_index do |e, i|

    right_side = str[0][i]
    below = str[i][0]
    if right_side.include?("#") && below.include?("#")
        count += 1
    end
end

p count