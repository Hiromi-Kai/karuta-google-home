class RequestSolver
  attr_accessor :result
  def initialize(params)
    @input = params["result"]
    karuta = fetch_karuta(input["parameters"]["debug_karuta_id"])
    @result = Result.new(@input, karuta)
    @google_id = params.dig("originalRequest", "data", "user", "userId")
  end


  def fetch_karuta(debug_id = nil)
    if debug_id.blank?
      Karuta.all.sample
    else
      Karuta.find(debug_id)
    end
  end
end