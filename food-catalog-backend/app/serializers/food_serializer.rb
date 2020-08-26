class FoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :cost, :description, :image_url, :catalog
end
