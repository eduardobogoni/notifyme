# frozen_string_literal: true

class TelegramChatsController < ApplicationController
  layout 'admin'
  before_action :require_admin

  active_scaffold :telegram_chat do |conf|
    conf.list.columns << :chat_id
    conf.show.columns << :chat_id
    conf.columns[:user].form_ui = :select
    conf.update.columns = [:user]
    conf.actions.exclude :create, :delete
  end
end
