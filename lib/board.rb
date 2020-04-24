class Board
  def self.winner?(arr, player)
    return true if [
      arr[0..2].all?(player),
      arr[3..5].all?(player),
      arr[6..8].all?(player),

      [arr[0], arr[3], arr[6]].all?(player),
      [arr[1], arr[4], arr[7]].all?(player),
      [arr[2], arr[5], arr[8]].all?(player),

      [arr[0], arr[4], arr[8]].all?(player),
      [arr[6], arr[4], arr[2]].all?(player)
    ].any?

    false
  end

  def self.draw?(arr)
    return false if arr.include?(' ')

    true
  end
end
