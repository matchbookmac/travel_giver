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
{p_name:"Women's Health Project", p_description:"Women in rural Bangladesh are in need of health care.", p_image:"http://muslimvoices.org/wp-content/uploads/2010/09/bang.jpg", total_needed: 30000, country_id: 1},
{p_name:"Bangladesh flood relief", p_description: "Flooding is a problem in the delta. Help mitigate this!", p_image: "http://coolgeography.co.uk/A-level/AQA/Year%2012/Rivers_Floods/Flooding/Bangladesh/bangladesh_floods_3column00_nospace_landscape.jpg", total_needed: 25000, country_id: 1},
{p_name:"Organic Farm", p_description: "Suport an organic rice farm!", p_image: "http://static.guim.co.uk/sys-images/Guardian/Pix/pictures/2011/9/9/1315564902458/Bangladesh-007.jpg", total_needed: 5000, country_id: 1}

{p_name:"Kathmandu Earthquake Relief", p_description:"A major earthquake recently hit Nepal. Kathmandu needs supplies.", p_image:"https://timedotcom.files.wordpress.com/2015/04/nepal_earthquake_adam_ferguson_2015_02217.jpg?quality=65&strip=color&w=838", total_needed: 700000, country_id: 2},
{p_name:"Books for Rural Schools", p_description: "Kids can't afford books in rural areas. Help them get textbooks.", p_image: "http://www.roomtoread.org/view.image?Id=3435", total_needed: 500000, country_id: 2},
{p_name:"Restore a monastery", p_description: "Mustang's monasteries need to be repaired. Help out!", p_image: "http://media.sacbee.com/static/weblogs/photos/images/2012/may12/weidman_mustang_sm/weidman_mustang_05.jpg", total_needed: 100000, country_id: 2}

{p_name:"Build school in Ghana", p_description:"Build a school for primary school kids to learn reading and math!", p_image:"https://camfed.org/media/assets/c8/96dfebfe28152df721a4c3405f0d8f563f7504.jpg", total_needed: 100000, country_id: 3},
{p_name:"Support legislation for rainforest animals", p_description: "Many species in Ghana are endangered or threatened.", p_image: "http://www.rainforest-alliance.org/sites/default/files/styles/multimedia_kids_slideshow/public/multimedia/slideshow/kids/8.jpg?itok=HE4-TnTV", total_needed: 100000, country_id: 3},
{p_name:"Dig a well in rural Ghana", p_description: "Villagers have to walk an hour to the nearest water source. By digging a well, villagers will have access to clean water.", p_image: "http://cdn.c.photoshelter.com/img-get/I0000QOmqw7N.7yI/s/750/019332-01.jpg", total_needed: 100000, country_id: 3}

{p_name:"Indigenous Learning project for Achuar community", p_description:"Support indigenous learning.", p_image:"http://www.pachamama.org/wp-content/uploads/2011/09/smiling-achuar-community.png", total_needed: 100000, country_id: 4},
{p_name:"Watershed Restoration", p_description: "Support planting trees and reforestation in watershed", p_image: "http://www.pro-ecuador.com/images/andes-mountains-ecuador.jpg", total_needed: 100000, country_id: 4},
{p_name:"Protect giant land turtle habitat", p_description: "Support for research and habitat protection.", p_image: "http://media3.washingtonpost.com/wp-srv/photo/gallery/090514/GAL-09May14-2033/media/PHO-09May14-162082.jpg", total_needed: 100000, country_id: 4}

])
