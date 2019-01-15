require_relative '../lib/caesar_cipher'

describe "the letter cipher function" do

  it "display another letter according to the key you entered" do
    expect(letter_cipher("A", 3)).to eq("D")
    expect(letter_cipher("Z", 3)).to eq("C")
    expect(letter_cipher("a", 3)).to eq("d")
    expect(letter_cipher("z", 3)).to eq("c")
  end

    it "if the parameter entered is not a letter it displays an error message" do
    expect(letter_cipher(1, 3)).to eq(false)
  end


end

describe "the string caesar cipher function" do

	it "transform each letter of a string into another letter according to a key" do
		expect(string_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
	end

end
