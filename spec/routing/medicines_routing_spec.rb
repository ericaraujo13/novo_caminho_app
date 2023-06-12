require "rails_helper"

RSpec.describe MedicinesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/medicines").to route_to("medicines#index")
    end

    it "routes to #new" do
      expect(get: "/medicines/new").to route_to("medicines#new")
    end

    it "routes to #show" do
      expect(get: "/medicines/1").to route_to("medicines#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/medicines/1/edit").to route_to("medicines#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/medicines").to route_to("medicines#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/medicines/1").to route_to("medicines#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/medicines/1").to route_to("medicines#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/medicines/1").to route_to("medicines#destroy", id: "1")
    end
  end
end
