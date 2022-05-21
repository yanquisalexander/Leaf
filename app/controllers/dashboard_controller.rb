class DashboardController < ApplicationController
    layout false
    require 'action_view'
    include ActionView::Helpers::DateHelper

    def uptime
        time_ago_in_words(Leaf::BOOTED_AT)
    end

    def index
        render json: {
            dashboard: {
                uptime: uptime
            }
        },
        content_type: 'application/json'
    end
end
