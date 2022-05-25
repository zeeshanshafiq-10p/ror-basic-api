module ErrorHandler
  extend ActiveSupport::Concern

  def not_found_renderer(message:)
    render json: {error:  message}, status: 404
  end

end
