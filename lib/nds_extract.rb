$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  arr= directors_database
  gross= {}
  i=0 
  
  arr.each do |director| 
    total=0
    director[:movies].each do |d|
      total +=d[:worldwide_gross]
    end
    gross[director]= total
    
  end
  

gross
end
