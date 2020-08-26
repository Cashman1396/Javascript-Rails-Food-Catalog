class CatalogSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :foods
end
