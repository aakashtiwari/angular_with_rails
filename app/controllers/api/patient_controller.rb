class Api::PatientController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @patient = Patient.all.includes(:doctor,:quote).includes(:specialization)
    respond_to do |format|
      format.json  { render :json => @patient.to_json(include: [:doctor, :specialization, :quote]) } 
    end
  end

  def set_favourite
    patient = Patient.find(params[:id])
    starred = patient.starred
    patient.update(starred: !starred)
    render json: { message: 'Successfully changed status' }, status: 200
  end

  def create_patient_quote
    patient = Patient.find(params[:id])
    quote = patient.create_quote(quotes_params)
    render json: { quote: quote }, status: 200
  end

  private

  def quotes_params
    quote = params.require(:quote).permit(
                            :procedure,
                            :cost,
                            :remark
                          )
    quote
  end
end
