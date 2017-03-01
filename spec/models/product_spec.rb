require 'rails_helper'

RSpec.describe Product, type: :model do
  # Use .alphabetical because it's a class method. Example: Product.alphabetical
  # Use #long_name when #long_name is an instance method. Example: @product.long_name
  describe ".alphabetical" do
    it "returns [] when there are no products" do
      expect(Product.alphabetical).to eq ([])
    end

    it "returns [a] when there is only one product a" do
      # a = Product.create!(...)
      a = Product.create(name: "non bao hiem", price_vnd: 12000, weight: 4)
      expect(Product.alphabetical).to eq ([a])
    end

    it "returns [a,b,c] after I create 3 products c, b, a" do
      c = Product.create(name: "non bao hiem 3", price_vnd: 12000, weight: 4)
      b = Product.create(name: "non bao hiem 2", price_vnd: 32000, weight: 2)
      a = Product.create(name: "non bao hiem 1", price_vnd: 122000, weight: 9)
      expect(Product.alphabetical).to eq [a,b,c]
    end
  end
end
