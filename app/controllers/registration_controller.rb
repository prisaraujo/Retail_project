class MyOwnDevise::RegistrationsController < Devise::RegistrationsController
  def new
    super
    #need some extra vars in your view? Init them here
  end

  def create
    super
    # do your own fancy stuff here
  end
end