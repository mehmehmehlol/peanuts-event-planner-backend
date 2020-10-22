class EventSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :venue, :location, :date, :time, :activities
end
