require "rails_helper"

RSpec.describe BanksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/banks").to route_to("banks#index")
    end

    it "routes to #new" do
      expect(get: "/banks/new").to route_to("banks#new")
    end

    it "routes to #show" do
      expect(get: "/banks/1").to route_to("banks#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/banks/1/edit").to route_to("banks#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/banks").to route_to("banks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/banks/1").to route_to("banks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/banks/1").to route_to("banks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/banks/1").to route_to("banks#destroy", id: "1")
    end
  end
end
