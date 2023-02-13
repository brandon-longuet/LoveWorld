User.create!([
  {full_name: "Raul Escobar", email: "raulescobar_g@tamu.edu", phone_number: "9566070144"},
  {full_name: "Brandon Longuet", email: "brandon@tamu.edu", phone_number: "0001112222"}
])
Group.create!([
  {name: "LoveWorld", description: "our team"},
  {name: "Another group", description: "this is another group"}
])
GroupMember.create!([
  {group_id: 2, user_id: 2}
])
Event.create!([
  {name: "meeting", start: "2023-02-10 11:22:00", end: "2023-02-10 00:22:00"},
  {name: "audit", start: "2023-02-17 11:22:00", end: "2023-02-17 00:22:00"}
])
EventMember.create!([
  {event_id: 1, user_id: 1}
])
