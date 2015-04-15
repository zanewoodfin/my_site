Rails.configuration.middleware.use Browser::Middleware do
  destination =
    case
    when browser.ie8?
      'ie8'
    when !browser.modern?
      'not_modern'
    else
      nil
    end
  redirect_to "/browser/#{ destination }" if destination
end