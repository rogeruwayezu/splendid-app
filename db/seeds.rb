Application.create!([
  {title: "Kepler", description: "something", user_id: 3, scholarship_id: 1}
])
Organization.create!([
  {title: "kepler", email: "sandrine@kepler.org", user_id: 3}
])
Role.create!([
  {user_type: "admin"},
  {user_type: "organization"},
  {user_type: "applicant"}
])
Scholarship.create!([
  {title: "kepler scholarships", description: "full scholarship", organization_id: 1}
])
User.create!([
  {first_name: "Roger", last_name: "Uwayezu", email: "rogeruwayezu@gmail.com", admin: nil, password_digest: nil, role_id: 1},
  {first_name: "Bertrande", last_name: "Nikuze", email: "Bertrande@gmail.com", admin: nil, password_digest: nil, role_id: 3},
  {first_name: "Sandrine", last_name: "Umuhire", email: "sandrine@gmail.com", admin: nil, password_digest: nil, role_id: 2}
])
