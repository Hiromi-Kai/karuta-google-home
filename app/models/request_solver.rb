class RequestSolver
  attr_accessor :result
  attr_reader :input
  #TODO 将来的にはパラメータを元に出典ゲームを区別したい
  #FIXME 解答時にパラメータ使って前の問題を取得できるようにする
  def initialize(params)
    @input = params["result"]
    #ここでいうkaruta_idは前の問題のID
    karuta_id = input["parameters"]["karuta_id"] || input["parameters"]["debug_karuta_id"]
    karuta = fetch_karuta(karuta_id.to_i)
    @result = Result.new(input, karuta)
    @google_id = params.dig("originalRequest", "data", "user", "userId")
  end


  def fetch_karuta(specified_id = nil)
    if specified_id.blank?
      Karuta.all.sample
    else
      Karuta.find(specified_id)
    end
  end
end