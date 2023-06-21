Mjml.setup do |config|
  # Use :haml as a template language
  config.template_language = :erb

  # Ignore errors silently
  config.raise_render_exception = true

  # Optimize the size of your emails
  config.beautify = true
  config.minify = false

  # Render MJML templates with errors
  config.validation_level = "soft"
end
