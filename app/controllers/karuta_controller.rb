class KarutaController < ApplicationController
  def index
    @result = Result.new(params)
  end
end
