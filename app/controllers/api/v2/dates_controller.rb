class Api::V2::DatesController < Api::V2::BaseController
  def index
    @dates = TermDates.for_institution(params[:inst_code]).this_year

    respond_with padded_response @dates
  end

  def current
    respond_with padded_response TermDates.for_institution(params[:inst_code]).current_week
  end

  def year
    year = Date.new(params[:year].to_i, 1, 1)

    respond_with padded_response TermDates.for_institution(params[:inst_code]).for_year(year).for_semester(params[:semester]).order("week ASC")
  end
end
