Rails.application.routes.draw do
  
  get '/greet' => 'greet#salutation'
  get '/contact' => 'contact#submit'
  get '/contact_submitted' =>'contact_submitted#display'
  get '/rps' => 'rps#start'
  get '/rps/play' => 'rps#play'
  get '/dice' => 'dice#start'
  get '/dice/roll' => 'dice#roll'

end
