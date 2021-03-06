class CurrencyConverter

    attr_accessor :currency_one, :currency_two, :conversion_rate, :reverse_conversion_rate

    def initialize (currency_one, currency_two, conversion_rate)
        @currency_one = currency_one
        @currency_two = currency_two
        @conversion_rate = conversion_rate
    end    

    def convert_currency_one_to_two(amount)
        amount * @conversion_rate
    end

    # def convert_currency_two_to_one(amount)
    #     amount * (1.0/@conversion_rate)
    # end

    def convert_currency_two_to_one(amount)
        if @reverse_conversion_rate
            # this is calling the instance variable
            amount * @reverse_conversion_rate
        else
            # this is calling the method 
            amount * reverse_conversion_rate
        end

    # def reverse_conversion_rate 
    #     1.0/@conversion_rate
    # end

    def reverse_conversion_rate 
        @reverse_conversion_rate = 1.0/@conversion_rate
    end
end




