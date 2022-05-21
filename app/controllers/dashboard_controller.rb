class DashboardController < ApplicationController
    layout 'leaf'
    require 'action_view'
    include ActionView::Helpers::DateHelper

    def uptime
        time_ago_in_words(Leaf::BOOTED_AT)
    end

    def index
    respond_to do |format| 
            format.html
            format.json {         
                render json: {
                dashboard: {
                    uptime: uptime,
                    leaf_version: Leaf::Application::Version::FULL,
                }
            },
            content_type: 'application/json' }
    end 
    end
end
