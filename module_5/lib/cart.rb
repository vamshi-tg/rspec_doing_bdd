class Cart
    attr_accessor :items, :item_value

    @@item_value = {
        apple: 7,
        mango: 10,
        watermelon: 2,
        orange: 4
    }
    def self.item_value=(item_value)
        @@item_value = item_value
    end
    
    def initialize
        @items = {}
        @total = 0
    end

    def empty?
        @items.empty?
    end

    def add_item(item, quantity)
        if @items.key?(item)
            previous_quantity = @items[item]
            @items[item] = quantity + previous_quantity 
        else 
            @items[item] = quantity
        end
    end

    def total
        @items.each do |item, quantity|
            @total += get_item_value(item) * quantity
        end
        return @total
    end

    def get_item_value(item)
        @@item_value[item]
    end

    def unique_items_count
        @items.keys.size
    end
end