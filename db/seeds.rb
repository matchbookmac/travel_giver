# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
{email:"admin@admin.com", password:"testtest", password_confirmation:"testtest", admin: true},
])

countries= Country.create([
{c_name: "Bangladesh", c_description:"In risk of major floods", continent:"Asia", image:"http://www.wateraid.org/~/media/Images/Global/Feature-or-static-carousel-1212x500-else-992x450/BG24_0612.jpg?h=500&la=en&w=1212"},
{c_name: "Nepal", c_description:"Just had a major earthquake", continent:"Asia", image:"http://www.matobo.co.uk/wp-content/uploads/2014/09/Nepal-2.jpg"},
{c_name: "Ghana", c_description:"Problems with environmental exploitation", continent:"Africa", image:"http://www.un.org/africarenewal/sites/www.un.org.africarenewal/files/ghana2.jpg"},
{c_name: "Ecuador", c_description:"Issues with overexploitation of food sources", continent:"South-America", image:"http://www.augustana.edu/Images/international/Ecuador/travelEcuador7.jpg"}
])

projects= Project.create([
{p_name:"Kathmandu Earthquake Relief", p_description:"A major earthquake recently hit Nepal. Kathmandu needs supplies.", p_image:"https://timedotcom.files.wordpress.com/2015/04/nepal_earthquake_adam_ferguson_2015_02217.jpg?quality=65&strip=color&w=838", total_needed: 100000, country_id: 2},
{p_name:"Books for Rural Schools", p_description: "Kids can't afford books in rural areas. Help them get textbooks.", p_image: "http://www.roomtoread.org/view.image?Id=3435", total_needed: 100000, country_id: 2},
{p_name:"Restore a monastery", p_description: "Mustang's monasteries need to be repaired. Help out!", p_image: "http://media.sacbee.com/static/weblogs/photos/images/2012/may12/weidman_mustang_sm/weidman_mustang_05.jpg", total_needed: 100000, country_id: 2}
])
