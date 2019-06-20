require_relative '../lib/cart.rb'

describe "An instance of", Cart do
    before :each do
        @cart = Cart.new
    end

    it "should be properly initialize" do
        expect(@cart).to be_a(Cart)
    end

    context "when new" do
        it "contains no items" do
            expect(@cart).to be_empty
        end
    end
end