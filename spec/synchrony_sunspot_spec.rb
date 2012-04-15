require "spec_helper"

describe "Sunspot Synchrony Support" do

  it "it should execute a search" do
    EventMachine.synchrony do

      Sunspot.config.solr.url = "http://localhost:8983/solr"
      
      results = Sunspot.search(Post)
      
      results.should_not be_nil
      
      EventMachine.stop
    end
  end

end