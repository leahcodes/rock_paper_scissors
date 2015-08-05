require('rspec')
require('rps')

describe('String#rps') do
  # it("handles ties") do
  #   expect()

  it('returns Player 1 Wins if player1=r, player2=s') do
    expect(("r".rps("s"))).to(eq("Player 1 wins!"))
  end

end
