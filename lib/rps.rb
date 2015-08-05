class String
  define_method(:rps) do |player2|

  p1w = "Player 1 wins!"
  p2w = "Player 2 wins!"

    if self == player2
      "It's a tie!"
    elsif self == "r" && player2 == "s"
      p1w
    elsif self == "r" && player2 == "p"
      p2w
    elsif self == "s" && player2 == "r"
      p2w
    elsif self == "s" && player2 == "p"
      p1w
    elsif self == "p" && player2 == "r"
      p1w
    elsif self == "p" && player2 == "s"
      p2w
    else
      "Invalid Move!"
    end
  end
end
