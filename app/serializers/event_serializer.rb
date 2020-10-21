class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :venue, :location, :date, :time
end
