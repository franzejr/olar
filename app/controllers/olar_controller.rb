class OlarController < ApplicationController

  def generate
    content = params[:content]
    olar = OlarGenerator.new(content)
    @olars = olar.apply_r.apply_mais.result
    respond_to do |format|
      format.js { render :layout => false }
    end
  end
end
