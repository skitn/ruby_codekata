class KarateChop
  def chop(search, target_arr)
    if target_arr.size > 0
      target_arr.each_with_index { |elem, i|
        if search == elem
          return i
        end
      }
    end
    return -1
  end
end
