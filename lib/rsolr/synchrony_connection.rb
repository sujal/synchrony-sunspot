require 'em-synchrony'
require 'em-synchrony/em-http'
require "rsolr"

module RSolr
  class SynchronyConnection
    
    def execute client, request_context
      
      method = request_context[:method]
      options = {}
      options[:head] = request_context[:headers] || {}
      options[:body] = request_context[:data] if request_context[:body].to_s
      options[:proxy] ||= request_context[:proxy] if request_context[:proxy]
      
      # add basic auth and remove it from URL
      if request_context[:uri].user && request_context[:uri].password      
        options[:head]['authorization'] = [ request_context[:uri].user, request_context[:uri].password ]
        request_context[:uri].user = nil
        request_context[:uri].password = nil
      end
      
      # create em http object
      http_request = EventMachine::HttpRequest.new(request_context[:uri].to_s)
      
      # send the call
      response = http_request.send(method, options)
      
      # return the response
      { status: response.response_header.status, headers: response.response_header, body: response.response }
      
    end
    
  end
end