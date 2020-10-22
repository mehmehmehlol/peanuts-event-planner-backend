class ActivitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :event
end
