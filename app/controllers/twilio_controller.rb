class TwilioController < ApplicationController
  def create
    account_sid = Rails.application.credentials.twilio["acc_sid"]
    auth_token = Rails.application.credentials.twilio["auth_token"]

    @client = Twilio::REST::Client.new(account_sid, auth_token)
    message = @client.messages.create(
      from: Rails.application.credentials.twilio["phone"],
      to: params["phone"],
      body: params[:text_body],
    )
  end
end
