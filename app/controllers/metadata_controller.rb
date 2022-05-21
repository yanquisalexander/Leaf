class MetadataController < ApplicationController
    layout false

    def webmanifest
        expires_in 1.minutes
        render json: default_webmanifest.to_json, content_type: 'application/manifest+json'
      end

      private

  def default_webmanifest
    display = "standalone"
    webmanifest = {
      name: 'Leaf',
      short_name: 'Leaf',
      display: display,
      start_url: "/",
      background_color: "#FFF",
      theme_color: "#4527a0",
      icons: [
          #TODO
      ]
    }


    webmanifest
  end

end
