require "sunspot"
require "rsolr/synchrony_connection"

module Sunspot
  class Session

    private

    # override connection to return a synchrony ready connection
    def connection
      @connection ||=
        self.class.connection_class.connect(RSolr::SynchronyConnection,
                                            { :url          => config.solr.url })
    end


  end
end

