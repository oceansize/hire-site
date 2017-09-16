module RequestSpecHelper
  def json_response
    JSON.parse(response.body)
  end

  def auth_get(url, headers: {}, **rest)
    get(url, headers: default_headers.merge(headers), **rest)
  end

  def jwt_get(url, headers: {}, **rest)
    get(url, headers: jwt_headers.merge(headers), **rest)
  end

  def auth_post(url, headers: {}, **rest)
    post(url, headers: default_headers.merge(headers), **rest)
  end

  def jwt_post(url, headers: {}, **rest)
    post(url, headers: jwt_headers.merge(headers), **rest)
  end

  def auth_put(url, headers: {}, **rest)
    put(url, headers: default_headers.merge(headers), **rest)
  end
  alias auth_patch auth_put

  def jwt_put(url, headers: {}, **rest)
    put(url, headers: jwt_headers.merge(headers), **rest)
  end
  alias jwt_patch jwt_put

  def auth_delete(url, headers: {}, **rest)
    delete(url, headers: default_headers.merge(headers), **rest)
  end

  def jwt_delete(url, headers: {}, **rest)
    delete(url, headers: jwt_headers.merge(headers), **rest)
  end

  def jwt_headers
    {
      HTTP_ACCEPT: 'application/json',
      HTTP_AUTHORIZATION: 'Bearer ' + JWT.encode({ exp: 5.minutes.from_now.to_i }, Rails.application.config.api_jwt_secret, 'HS512')
    }
  end

  def default_headers
    {
      HTTP_ACCEPT: 'application/json',
      HTTP_AUTHORIZATION: ActionController::HttpAuthentication::Basic.encode_credentials(AppConfig.dealers_site_api_username,
                                                                                         AppConfig.dealers_site_api_password)
    }
  end
end
