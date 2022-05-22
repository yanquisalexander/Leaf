class Leaf::UpdateCheckerController < ApplicationController
    config.cache_store = :null_store
    def index
        render json: {
            current: Leaf::Application::Version::FULL,
            git: {
                current_branch: Leaf.git_branch,
                current_hash: Leaf.git_version,
                remote_hash: nil,
            } 
        }
    end
end
