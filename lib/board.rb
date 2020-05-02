class Board
  def self.winner?(arr, letter)
    return true if [
      arr[0..2].all?(letter),
      arr[3..5].all?(letter),
      arr[6..8].all?(letter),

      [arr[0], arr[3], arr[6]].all?(letter),
      [arr[1], arr[4], arr[7]].all?(letter),
      [arr[2], arr[5], arr[8]].all?(letter),

      [arr[0], arr[4], arr[8]].all?(letter),
      [arr[6], arr[4], arr[2]].all?(letter)
    ].any?

    false
  end

  def self.draw?(arr)
    return false if arr.include?(' ')

    true
  end
end
