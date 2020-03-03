$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  arr= directors_database
  gross= {}
 

  arr.each do |director| 
   
    total=0
    director[:movies].each do |arr|
      #binding.pry
      total +=arr[:worldwide_gross]
    end
    gross[director]= total
    
  end
  

gross
end
