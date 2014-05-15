def cities_water_summ(land)
  left_max, right_max, left, volume = 0, 0, 0, 0
  right = land.length - 1

  while left < right
    if land[left] > left_max
      left_max = land[left]
    end

    if land[right] > right_max
      right_max = land[right]
    end

    if left_max >= right_max
      volume += right_max - land[right]
      right -= 1
    else
      volume += left_max - land[left]
      left += 1
    end
  end
  volume
end
