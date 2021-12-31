class OpenaiController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_openai_client

  def complettions
    
  end

  def summerize
    response = @client.completions(engine: "ada", parameters: { prompt: params[:prompt]+"\n\nI rephrased this in a plain language:", max_tokens: 30, temperature: 0.3 })

    respond_to do |format|
      format.json { render :response, json: response["choices"] }
    end
  end

  private
  def set_openai_client
    @client = OpenAI::Client.new
  end
end
