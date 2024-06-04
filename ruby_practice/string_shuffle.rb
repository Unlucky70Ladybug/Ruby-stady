#refinementsは上位のクラスを変える時に使う
module StringShuffle
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end
