module ApplicationHelper
	def avatar_url(user)
		if user.image
			"http://graph.facebook.com/#{user.id}/picture?type=large"
		else
			gravatar_id = Digest::MD5::hexdigest(user.email).downcase
			"https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identicon&s=150"
		end
	end

	def resource_name
		:user
	end

	def resource
		@resource ||= User.new
	end

	def devise_mapping
		@devise_mapping ||= Devise.mappings[:user]
	end
end
