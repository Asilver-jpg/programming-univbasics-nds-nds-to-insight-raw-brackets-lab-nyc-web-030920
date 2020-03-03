$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  arr= directors_database
  gross= {}
 
 binding.pry 
  arr.each do |director| 
    binding.pry
    total=0
    director[:movies].each do |d|
      total +=d[:worldwide_gross]
    end
    gross[director]= total
    
  end
  

gross
end
