class RequestSolver
  attr_accessor :result
  attr_reader :input
  #TODO 将来的にはパラメータを元に出典ゲームを区別したい
  def initialize(params)
    @input = params["result"]
    #ここでいうkaruta_idは前の問題のID
    karuta = fetch_karuta(fetch_karuta_id)
    @result = Result.new(input, karuta)
    @google_id = params.dig("originalRequest", "data", "user", "userId")
  end

  def fetch_karuta_id
    input["parameters"]["karuta_id"]||
        input["parameters"]["debug_karuta_id"] ||
        input["contexts"].find{|f| f["name"] == "answer"}.try(:dig, "parameters", "karuta_id")
  end


  def fetch_karuta(specified_id = nil)
    if specified_id.blank?
      Karuta.all.sample
    else
      Karuta.find(specified_id.to_i)
    end
  end
end