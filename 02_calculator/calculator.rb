# write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum a
    a.sum
end

def multiply a,b
    a * b
end

def power a,b
    a**b
end

def factorial a
    if a == 0
        x = 0
    else
        x = 1
        (1..a).each do |i|
            x = x * i
        end
    end

    x
end
