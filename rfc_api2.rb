require 'httparty'

make_me_a_password = HTTParty.get('https://makemeapassword.ligos.net/api/v1/passphrase/json?pc=10&s=RandomLong')
make_me_a_password_json = JSON.parse(make_me_a_password.body)
#toronto_wards_json["objects"][0]["name"]
i = 0
make_me_a_password_json["pws"].each do |psswd|
  i +=1
  puts "#{i}. #{psswd}"
end
