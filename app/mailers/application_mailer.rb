# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: "resa@mmacampbrazil.com"
  layout "mailer"
end
