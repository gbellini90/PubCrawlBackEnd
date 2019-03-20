class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload) #{ user_id}
    JWT.encode(payload, ENV['SECRET_KEY']) #issue a token, store payload in token
  end

  def auth_header
      request.headers['Authorization'] # Bearer <JWT>
    end

    def decoded_token
      if auth_header
        token = auth_header.split(' ')[1] #[Bearer, <token>]
        begin
          JWT.decode(token, ENV['SECRET_KEY'], true, algorithm: 'HS256')
          # JWT.decode => [{ "user_id"=>"2" }, { "alg"=>"HS256" }]
        rescue JWT::DecodeError
          nil
        end
      end
    end

    def current_user
      if decoded_token
        user_id = decoded_token[0]['user_id'] #[{ "user_id"=>"2" }, { "alg"=>"HS256" }]
        @user = User.find_by(id: user_id)
      else
        nil
      end
    end

    def logged_in?
      !!current_user
    end

    def authorized
      render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
    end

# def secret_key
#   ENV['SECRET_KEY']
# end
#
# def payload
#   {
#     sub: @user.id,
#     iat: Time.now.to_i,
#   }
# end
#
# def gen_token
#   JWT.encode payload(), secret_key(), "HS256"
# end
#
# def get_token
#   request.headers['Authorization']
# end
#
# def decoded_token
#   begin
#     JWT.decode get_token(), secret_key(), true
#   rescue JWT::DecodeError => e
#     nil
#   end
# end
#
# def logged_in?
#   !!decoded_token
# end
#
# def authenticate?
#   if !logged_in?
#     render json: {
#       message: 'Authorization failed'
#     }, status: :unauthorized
#   end
# end
#
# def is_user
#   @user = User.find(params[:id])
#   if decoded_token()[0]['sub'] != @user.id
#     render json: {
#       message: 'Authorization failed'
#     }, status: :unauthorized
#   end
# end
#
# def get_token_payload(key)
#    begin
#      decoded_token[0][key]
#    rescue NoMethodError => e
#      nil
#    end
#  end

end
