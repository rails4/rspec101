require_relative '../lib/part3'

describe "BookInStock" do
  it "should be defined" do
    expect { BookInStock }.not_to raise_error
  end

  # In normal situation we do not test code that not belongs to us.
  # For example we do not test setters and getters.
  # These are implemented in Ruby.
  # We need to trust that these methods are implemented correctly.
  describe 'getters and setters' do
    # before(:each)  { @book = BookInStock.new('isbn1', 33.8) }

    # Use let! below.
    #  * bang (!) will force to call before test
    #  * use the book variable (without @)

    let!(:book) { BookInStock.new('isbn1', 33.8) }

    it 'should set ISBN' do
      # expect(@book.isbn).to eq('isbn1')
      expect(book.isbn).to eq('isbn1')
    end

    it 'should set price' do
      expect(book.price).to eq(33.8)
    end

    it 'should be able to change ISBN' do
      book.isbn = 'isbn2'
      expect(book.isbn).to eq('isbn2')
    end

    it 'should be able to change price' do
      book.price = 300.0
      expect(book.price).to eq(300.0)
    end
  end

  describe "#price_as_string" do
    it "should be defined" do
      expect(BookInStock.new('isbn1', 10)).to respond_to(:price_as_string)
    end

    # Will be good to add some negative tests too,
    # not only checking good path, but possible errors too, for example:
    #   expect(BookInStock.new(nil, nil)).to raise_error(...)
    it "should display 1.1 as $1.10" do
      expect(BookInStock.new('isbn11', 1.1).price_as_string).to eq('$1.10')
    end
  end
end
