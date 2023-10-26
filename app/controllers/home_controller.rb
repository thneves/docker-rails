class HomeController < ApplicationController
  def index
    (1..5).to_a.each do  |_number|
      sleep 1
      SendEmailJob.perform_later
    end
    @message = 'Loaded!'
  end
end
