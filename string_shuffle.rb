module StringShuffle
  refine String do
    char.shuffle.join
  end
end
