require_relative '../lib/part2'

# https://www.relishapp.com/rspec/rspec-expectations/v/3-0/docs/built-in-matchers

describe "#hello" do
  it "should be defined" do
    expect { hello("Testing") }.not_to raise_error
  end

  it "The hello method prints the correct string" do
    expect(hello("Dan").class).to eq(String)
    expect(hello("Dan")).to eq('Hello, Dan'),
        "Incorrect results for input: \"Dan\""
  end
end

describe "#starts_with_vowel?" do
  it "should be defined" do
    expect { starts_with_vowel?("b") }.not_to raise_error
  end

  it "The starts_with_vowel? method returns the correct boolean" do
    expect(starts_with_vowel?("asdfgh")).to be(true),
         "Incorrect results for input: \"asdfgh\""
    expect(starts_with_vowel?("Veeeeeeee")).to be(false),
         "Incorrect results for input: \"Veeeeeeee\""
  end
end

describe "#binary_multiple_of_4?" do
  it "should be defined" do
    expect { binary_multiple_of_4?("yes") }.not_to raise_error
  end

  it "The binary_multiple_of_4? method returns the correct boolean" do
    expect(binary_multiple_of_4?("111111101")).to be(false),
        "Incorrect results for input: \"111111101\""
    expect(binary_multiple_of_4?("1010101010100")).to be(true),
        "Incorrect results for input: \"1010101010100\""
  end
end
