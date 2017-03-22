class Inventory
    
    attr_reader :name, :inventory
    
   def initialize(name)
       @name = name
       @inventory = []
   end
   
   def add_inventory(item, quantity)
       @inventory.push({item: item, quantity: quantity})
   end
   
  def update_inventory(item, quantity)
      @inventory.each do |index|
          if index[:item] == item
              index[:quantity] += quantity.to_i
          end
      end
  end
   
   def print_inventory
       puts "-" * 40
       puts "Item".ljust(30) + "Quantity".rjust(10)
       puts "-" * 40
       @inventory.each do |index|
           puts index[:item].ljust(30) + index[:quantity].to_s.rjust(10)
       end
       puts "-" * 40
   end
   
end

cookies = Inventory.new("Cookies")

cookies.add_inventory("Chocolate", 5)
cookies.add_inventory("Sugar", 10)
cookies.add_inventory("Oatmeal", 3)

cookies.print_inventory

cookies.update_inventory("Chocolate", 6)
cookies.update_inventory("Sugar", 1)
cookies.update_inventory("Oatmeal", 8)

cookies.print_inventory
