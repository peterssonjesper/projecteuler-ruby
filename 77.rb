require 'prime'

NUM_FACTOR_THRESHOLD = 5000
$cache = []

def factor_permutations(left, right)
  result = []
  for l in left
    for r in right
      result.push(normalize_factors(l, r))
    end
  end
  result
end

def normalize_factors(left, right)
  result = left.clone
  for factor, exponent in right
    result[factor] = 0 if result[factor].nil?
    result[factor] += exponent
  end
  result
end

def prime_summations_from_cache(n)
  return $cache[n] if !$cache[n].nil?
  prime_summations(n)
end

def prime_summations(n)
  factors = []
  for i in 2..n/2 do
    factors += factor_permutations(
      prime_summations_from_cache(i),
      prime_summations_from_cache(n-i))
  end
  factors.push({ n => 1}) if n.prime?
  factors.uniq!

  $cache[n] = factors

  factors
end

i=1
while prime_summations_from_cache(i).length < NUM_FACTOR_THRESHOLD;
  i += 1
end

puts "The answer is #{i}. It has #{$cache[i].length} possible prime summations."
