# encoding: utf-8
require 'json'

module FIR
  module DingDing
    def dingding(webhook)
      check_dingding_cannot_be_blank webhook

      write_config(dingdingwebhook: webhook)
      reload_config
      @testText=<<LongText
{
    "msgtype": "text",
    "text": {
        "content": "我是fir!"
    },
    "at": {
        "atMobiles": [
        ],
        "isAtAll": false
    }
}
LongText
      post(webhook, data = JSON.parse(@testText),header={'Content-Type'=>"application/json",'charset'=>"utf-8"})
      logger.info "DingDing webhook succeed, current  dingdingWebhook: #{config[:dingdingwebhook]}"
      logger_info_blank_line
    end
  end
end
