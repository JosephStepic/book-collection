require "rails_helper"

RSpec.describe Book3sController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/book3s").to route_to("book3s#index")
    end

    it "routes to #new" do
      expect(get: "/book3s/new").to route_to("book3s#new")
    end

    it "routes to #show" do
      expect(get: "/book3s/1").to route_to("book3s#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/book3s/1/edit").to route_to("book3s#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/book3s").to route_to("book3s#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/book3s/1").to route_to("book3s#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/book3s/1").to route_to("book3s#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/book3s/1").to route_to("book3s#destroy", id: "1")
    end
  end
end
