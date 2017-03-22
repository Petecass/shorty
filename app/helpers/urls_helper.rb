# frozen_string_literal: true
module UrlsHelper
  def shortened_url(params)
    "#{request.base_url}/#{params}"
  end
end
