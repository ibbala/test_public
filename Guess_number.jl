println("Welcome!")
start, last = 1, 100
rand_number = rand((start:last))
counter = 0
while true
    println("$counter. Guess a number between $start and $last")
    guess = tryparse(Int, readline())
    if guess != nothing
        global counter += 1
        if guess == rand_number
            println("Bravo!")
            break
        elseif guess < rand_number
            println("bigger")
        else
            println("smaller")
        end
    end
end
