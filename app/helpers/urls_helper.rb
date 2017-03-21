module UrlsHelper

  def shortened_url(params)
    "#{request.base_url}/#{params}"
  end
end
