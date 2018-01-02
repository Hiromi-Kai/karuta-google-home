class Result

  def initialize(params)
  end

  def context_in
  end

  def context_out
    []
  end

  def speech
  end

  def display_text
  end


  def query
  end

  def source
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