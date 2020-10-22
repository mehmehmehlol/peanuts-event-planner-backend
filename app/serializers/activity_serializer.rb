class ActivitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :event
  # ,:event_id
end
