require 'faraday'
require 'nokogiri'
require 'pry'

#调用云片接口，生成对应的apikey，然后输入参数，发送对应模板信息到手机中
  conn = Faraday.new(:url=>'https://sms.yunpian.com')
  response = conn.post do |req|
    req.url '/v2/sms/single_send.json'
    req.body = {"apikey": '###',"text": "【运维服务系统】有#{'0001'}订单，用户名：#{ARGV[0]}，手机号：#{ARGV[1]} , 请尽快联系。","mobile": "#{ARGV[1]}"}
  end
