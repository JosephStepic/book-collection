require "rails_helper"

RSpec.describe Book2sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/book2s").to route_to("book2s#index")
    end

    it "routes to #new" do
      expect(get: "/book2s/new").to route_to("book2s#new")
    end

    it "routes to #show" do
      expect(get: "/book2s/1").to route_to("book2s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/book2s/1/edit").to route_to("book2s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/book2s").to route_to("book2s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/book2s/1").to route_to("book2s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/book2s/1").to route_to("book2s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/book2s/1").to route_to("book2s#destroy", id: "1")
    end
  end
end
