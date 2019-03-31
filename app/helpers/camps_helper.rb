module CampsHelper
  def current_camp
    @current_camp ||= find_camp
  end

  def find_camp
    if (camp_id = params[:camp_id])
      session[:camp_id] = camp_id
      Camp.find_by(id: camp_id)
    elsif camp_id.blank? && session[:camp_id]
      Camp.find_by(id: session[:camp_id])
    else
      Camp.first
    end
  end
end
