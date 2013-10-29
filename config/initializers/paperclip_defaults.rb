# Setting up Paperclip for Rackspace Cloud Files

Paperclip::Attachment.default_options.update({
	:path => "images/:class/:id/:attachment/:style/img_:fingerprint",
	:storage => :fog,
	:fog_credentials => {
		:provider           => 'Rackspace',
		:rackspace_username => ENV['RACKSPACE_USERNAME'],
		:rackspace_api_key  => ENV['RACKSPACE_API_KEY],
		:persistent => false
	},
	:fog_directory => 'omrails',
	:fog_public => true,
	:fog_host => 'http://b4a40795c3617b91d320-25e3ca868ca0d6d10545d68f23f5a8ed.r9.cf2.rackcdn.co'
})