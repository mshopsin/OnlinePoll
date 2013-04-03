# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:username=>'HermesConrad', :email=>'hermes@planetexpress.net')
User.create(:username=>'PhilipFry', :email=>'fry@planetexpress.net')
User.create(:username=>'BenderRogriquez', :email=>'bender@planetexpress.net')
User.create(:username=>'LelaTuranga', :email=>'lela@planetexpress.net')
User.create(:username=>'AmyWong', :email=>'amy@planetexpress.net')
Poll.create(:name=>"Planet Express Poll", :user_id=>1)
Question.create(:poll_id=>1, :question=> "What's your favorite planet?")
ValidResponse.create(:question_id=>1,:response=>'Earth')
ValidResponse.create(:question_id=>1,:response=>'Mars')
ValidResponse.create(:question_id=>1,:response=>'Venus')
ValidResponse.create(:question_id=>1,:response=>'Mercury')
Question.create(:poll_id=>1, :question=> "What's your favorite type of Star?")
ValidResponse.create(:question_id=>2,:response=>'Quasar')
ValidResponse.create(:question_id=>2,:response=>'Pulsar')
ValidResponse.create(:question_id=>2,:response=>'Dwarfstar')
ValidResponse.create(:question_id=>2,:response=>'Blackhole')
Response.create(:valid_response_id=>1,:user_id=>2)
Response.create(:valid_response_id=>2,:user_id=>3)
FocusGroup.create(:poll_id=>1,:user_id=>2)
FocusGroup.create(:poll_id=>1,:user_id=>3)
