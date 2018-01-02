class KarutaController < ApplicationController
  def index
    @result = RequestSolver.new(params).result
  end
end
