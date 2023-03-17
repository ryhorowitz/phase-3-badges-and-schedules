def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator arr
  arr.map { |name| badge_maker name }
end

def assign_rooms attendees
  # "Hello, Arel! You'll be assigned to room 1!"
  attendees.map.with_index do  |attendee, index| 
    "Hello, #{attendee}! You'll be assigned to room #{index + 1}!"
  end
end

def printer arr
  batch_badge_creator(arr).each { |b| puts b}
  assign_rooms(arr).each { |r| puts r }
end

printer ['Arel', 'Sam']