module UsersHelper
  
  # Returns gravatar for given user 
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase) #not really necessary to downcase here since we downcase the DB. Just want to illustrate that should downcase the digest
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
