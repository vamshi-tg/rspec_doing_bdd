require_relative '../lib/cart.rb'

describe "An instance of", Cart do
    before :each do
        @cart = Cart.new
        Cart.item_value = {
            dairy_milk: 5,
            gooday: 10,
            bru: 2,
            icecream: 10
        }
    end

    it "should be properly initialize" do
        expect(@cart).to be_a(Cart)
    end

    context "when new" do
        it "contains no items" do
            expect(@cart).to be_empty
        end

        it "total value should be 0" do
            expect(@cart.total).to be 0
        end
    end

    context "when items added" do
        it "should not be empty" do
            @cart.add_item(:dairy_milk, 1)
            expect(@cart.items).to_not be_empty
        end

        it "value should be equal to sum of each items value times its quantity" do
            @cart.add_item(:dairy_milk, 2)
            @cart.add_item(:bru, 3)
            expected_total_cart_value = (@cart.get_item_value(:dairy_milk) * 2) + (@cart.get_item_value(:bru) * 3)

            total_cart_value = @cart.total
            expect(total_cart_value).to be expected_total_cart_value 
        end

        it "should get unique items count" do
            @cart.add_item(:dairy_milk, 3)
            @cart.add_item(:bru, 3)
            @cart.add_item(:icecream, 4)
            @cart.add_item(:bru, 1)
            expect(@cart.unique_items_count).to be 3
        end

        it "should increment quantity if item already exists" do
            @cart.add_item(:dairy_milk, 2)
            @cart.add_item(:dairy_milk, 1)
            expect(@cart.items[:dairy_milk]).to be 3
        end

    end
end