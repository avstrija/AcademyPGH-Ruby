require "io/console"

def displayGrid(grid, delay)
    for row in grid
        sleep(delay)
        for col in row
            print col
        end
        print "\n"
    end
end

def creator(grid, mark, grid_size)
    count = 0
    while(count<(grid_size-1))
        row = rand((grid_size-1))
        col = rand((grid_size-1))
        if (grid[row][col] == ". ")
            grid[row][col] = mark
            count += 1
        end
    end
grid
end

grid_size = 23
grid = Array.new(grid_size) { Array.new(grid_size) { ". " } }
row = grid_size/2 - 1
col = grid_size/2 - 1
grid[row][col] = "~Z"
#creating obstacles
grid = creator(grid, "||", grid_size)
#creating treasures
grid = creator(grid, " *", grid_size)
#creating enemies
grid = creator(grid, "o~", grid_size)
score = 0
lives = 3
puts "Here's the forest. Don't hit || walls, collect the * treasures, beware of 0~ snakes. Press Q to quit"
delay = 0.1
displayGrid(grid, delay)
delay = 0

quit = false
while quit == false
    puts "A - back, S — down, D — forward, W — up"
    input = STDIN.getch.downcase
    puts `clear`
    if "asdw".include?(input)
        grid[row][col] = ". "
        case input 
            when "a"
                new_col = col > 0 ? col - 1 : col 
                new_row = row
                output = "west"
            when "s"
                new_row = row < (grid_size-1) ? (row + 1) : row
                new_col = col
                output = "south"
            when "d"
                new_col = col < (grid_size-1) ? (col + 1) : col 
                new_row = row
                output = "east"
            when "w"
                new_row = row > 0 ? row - 1 : row 
                new_col = col
                output = " north"
        end

        if(grid[new_row][new_col] == "||" || (new_row == row && new_col == col))
            puts "Sorry, you can't move through walls, try again"
            puts ""
            grid[row][col] = "~Z"
            displayGrid(grid, delay)
        else
            row = new_row
            col = new_col
            puts "Moving #{output}"
            if grid[row][col] == " *"
                score += 1
                puts "You found a treasure! Your score: #{score}. ♥: #{lives}"
                if score == (grid_size-1)
                    puts "You found all the treasures! Congrats!"
                    grid = Array.new(grid_size) { Array.new(grid_size) { "★★" } }
                    delay = 0.1
                    quit = true
                else  
                end
            elsif grid[row][col] == "o~"
                lives -= 1
                puts "You stepped on a snake! Your score: #{score}. ♥: #{lives}"
                if lives < 1
                    puts "You die of snake bites! Sorry, bye!"
                    grid = Array.new(grid_size) { Array.new(grid_size) { "XX" } }
                    delay = 0.1
                    quit = true 
                end
            else 
                puts "Your score: #{score}. ♥: #{lives}"
            end
            grid[row][col] = "~Z"
            displayGrid(grid, delay)
        end
    
    elsif input == "q"
        puts "Exiting the game"
            quit = true
    end 
end