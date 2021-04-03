class ApplicationController < ActionController::API

  def encode_token(user_id)
    JWT.encode({user_id: user_id}, JWT_SECRET)
  end
  JWT_SECRET = ENV["JWT_SECRET"]

  def get_token
    request.headers["Authorization"]
  end

  def decode_token
    begin
      JWT.decode(get_token, JWT_SECRET)[0]["user_id"]
    rescue
      nil
    end
  end

  def curr_user
    User.find_by(id: decode_token)
  end
end
