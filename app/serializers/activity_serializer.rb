class ActivitySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description
  # ,:event_id
end
