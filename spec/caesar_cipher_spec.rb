require_relative '../lib/caesar_cipher'

describe "the letter function" do

  it "display another letter according to the key you entered" do
    expect(letter("A", 3)).to eq("D")
    expect(letter("Z", 3)).to eq("C")
    expect(letter("a", 3)).to eq("d")
    expect(letter("z", 3)).to eq("c")
  end

    it "if the parameter entered is not a letter it displays an error message" do
    expect(letter(1, 3)).to eq("Sorry it's not a letter")
  end


end