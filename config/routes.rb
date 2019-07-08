Rails.application.routes.draw do
  get 'home/index' 
  get 'home/insertdata'
get 'home/deletedata'

get 'home/insert' , :as => 'insert'
get 'home/delete', :as => 'delete'

root :to => "home#index"  

end
