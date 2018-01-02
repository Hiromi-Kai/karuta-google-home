class Result
  attr_reader :input, :karuta
  def initialize(input, karuta)
    @input = input
    @karuta = karuta
  end

  def next_intent
    if contexts.include?("answer")
      :question
    else
      :answer
    end
  end

  def user_answer
    case next_intent
      when :question
        query
      else
        nil
    end
  end

  def current_context
    if contexts.include?("answer")
      :answer
    else
      :question
    end
  end

  def contexts
    context_in.map{|f| f["name"] }
  end

  def context_in
    input["contexts"]
  end

  def context_out
    #[ { name: next_intent, lifespan: 1, parameters: {} } ]
  end

  def speech
    karuta.speech(current_context, user_answer: user_answer)
  end

  def display_text
    karuta.display_text(current_context, user_answer: user_answer)
  end

  def query
    input["resolvedQuery"]
  end

  def source
    input["source"]
  end

  def followup_event
    {}
  end

  def data
    {
        google: {
            expect_user_response: true,
            is_ssml: true,
            permissions_request: {
                opt_context: "test opt context",
                permissions: ["NAME", "DEVICE_PRECISE_LOCATION", "DEVICE_COARSE_LOCATION"]
            },
            expected_inputs: nil
        }
    }
  end

  def expected_inputs
  end

end