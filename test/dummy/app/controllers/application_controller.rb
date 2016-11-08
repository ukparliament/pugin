class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  	def header
  		render html: PuginPlugin::ApplicationController.get_component('master_header')
  	end

  	def footer
	    render html: PuginPlugin::ApplicationController.get_component('master_footer')
	end

	def members_card
		render html: PuginPlugin::ApplicationController.get_component('members_card', { member_name: 'Khaleesi Mother of Dragons' })
	end
end
