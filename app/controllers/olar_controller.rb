class OlarController < ApplicationController

  def generate
    content = params[:content]
    @olars = OlarGenerator.olar(content)
    respond_to do |format|
      format.js { render :layout => false }
    end
  end
end
