class ApplicationController < ActionController::API

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, JWT_SECRET)
    # JWT.encode({user_id: user_id}, "12345")
    # rand(36**8).to_s(36)
  end
  #
  JWT_SECRET = ENV["JWT_SECRET"]



  def get_token
    request.headers["Authorization"]
  end
  #
  def decode_token
    begin
    #  get_token =, "12345")[0]["user_id"]
      JWT.decode(get_token, JWT_SECRET)[0]["user_id"]
      # JWT.decode(get_token, "12345")[0]["user_id"]


    rescue
      # Token invalid, return nil
      nil
    end
  end


  def curr_user
    User.find_by(id: decode_token)
  end
end
