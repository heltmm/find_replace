require('rspec')
require('replace')

describe('#replace') do
  it('takes a sentence and replaces the given word with another word') do
    expect("Hello world".replace("world", "universe")).to(eq("Hello universe"))
  end
  it('takes a sentence and replaces the given word with another word') do
    expect("I am walking my cat to the cathedral".replace("cat", "dog").to(eq("I am walking my dog to the doghedral."))
  end
end
