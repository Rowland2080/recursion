# solving with ITERATION

def fibs(num,fib_seq=[])
  (0..num).each do |i|
  fib_seq << i if i < 2
  fib_seq << fib_seq[-1] + fib_seq[-2] if i >= 2
  end
  fib_seq
end
p fibs(8)

# solving with RECURSION

def fibs_rec(num)
  return [0] if num == 0
  return [0,1] if num == 1
  arr = fibs_rec(num - 1)
  arr << arr[-2] + arr[-1]
end

p fibs_rec(8)
