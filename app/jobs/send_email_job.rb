class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "================= Sending email... ================="
    # processing heavy email sending
    sleep 10
    puts "================ Email sent! ================="
  end
end
