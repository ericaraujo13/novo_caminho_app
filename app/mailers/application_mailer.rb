# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'noreply@novocaminho.br'
  layout 'mailer'
end
