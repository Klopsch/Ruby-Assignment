# Part 9: Currency Conversion
class Numeric
 @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}
 def in(currency)
   @money = currency.to_s.gsub( /s$/, '')
   return self/@@currencies[@money]
 end
 def method_missing(method_id)
   singular_currency = method_id.to_s.gsub( /s$/, '')
   if @@currencies.has_key?(singular_currency)
     self * @@currencies[singular_currency]
   else
     super
   end
 end
end
puts "Part 9: Currency Conversion"
puts 5.dollars.in(:euros)
puts 10.euros.in(:rupees)
puts 1.dollars.in(:yen)
