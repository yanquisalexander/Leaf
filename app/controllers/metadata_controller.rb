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
      theme_color: "#FFF",

      icons: [
        {
          src: ActionController::Base.helpers.image_path("default/manifest/icon-192x192.png"),
          sizes: "192x192",
          type: "image/png"
        },
        {
          src: ActionController::Base.helpers.image_path("default/manifest/icon-256x256.png"),
          sizes: "256x256",
          type: "image/png"
        },
        {
          src: ActionController::Base.helpers.image_path("default/manifest/icon-384x384.png"),
          sizes: "384x384",
          type: "image/png"
        },
        {
          src: ActionController::Base.helpers.image_path("default/manifest/icon-512x512.png"),
          sizes: "512x512",
          type: "image/png"
        }
      ],
      shortcuts: [
        {
          name: 'View database',
          url: '/database'
        },
        {
          name: 'Manage users',
          url: '/users'
        }
      ],
    }


    webmanifest
  end

end
