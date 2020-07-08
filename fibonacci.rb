def fibs(num)
  return [0] if num == 1
  return [0, 1] if num == 2
  ary = [0, 1]
  (2..num-1).each do |i|
    ary[i] = ary[i-1] + ary[i-2]
  end
  return ary
end

p fibs(5)
p fibs(10)

def fibs_rec(num)
  return [0] if num == 1
  return [0, 1] if num == 2
  return fibs_rec(num - 1) << fibs_rec(num - 1)[-1] + fibs_rec(num - 1)[-2]
end

p fibs_rec(5)
p fibs_rec(10)