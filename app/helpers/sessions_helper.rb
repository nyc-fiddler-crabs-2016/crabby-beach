helpers do
  def logged_in?
    !!current_crab
  end

  def current_crab
    Crab.find_by(id: session[:crab_id])
  end
end
