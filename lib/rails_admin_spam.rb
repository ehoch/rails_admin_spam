require "rails_admin_spam/engine"

module RailsAdminSpam
end

require 'rails_admin/config/actions'

module RailsAdmin
  module Config
    module Actions
      class Spam < Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :object_level do
          true
        end

        register_instance_option :bulkable? do        
          true
        end

        register_instance_option :authorization_key do
          :spam
        end
                
        register_instance_option :controller do
          Proc.new do
            
            if params[:bulk_ids]
              params[:bulk_ids].each {|id| Comment.find(id).spam }
              flash[:success] = "#{params[:bulk_ids].size} Comments Spammed"
            else
              @object.spam
              flash[:success] = "Single spammed."
            end
            
            redirect_to back_or_index
          end
        end
                
      end
    end
  end
end

