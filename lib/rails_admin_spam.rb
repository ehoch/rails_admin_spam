require 'rails_admin/config/actions'
require 'rails_admin/config/actions/base'

module RailsAdmin
  module Config
    module Actions
      class Spam < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :member do
          true
        end

        register_instance_option :bulkable? do        
          true
        end

        register_instance_option :link_icon do
          'icon-ban-circle'
        end
              
        register_instance_option :controller do
          Proc.new do
            if params[:bulk_ids]
              params[:bulk_ids].each {|id| @abstract_model.find(id).spam }
              flash[:success] = "#{params[:bulk_ids].size} Spammed"
            else
              @object.spam
              flash[:success] = "Deleted and Marked as spam."
            end
            
            redirect_to back_or_index
          end
        end
      end

      class Unspam < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :member do
          true
        end

        register_instance_option :bulkable? do        
          true
        end

        register_instance_option :link_icon do
          'icon-ok'
        end

        register_instance_option :controller do
          Proc.new do
            if params[:bulk_ids]
              params[:bulk_ids].each {|id| @abstract_model.find(id).unspam }
              flash[:success] = "#{params[:bulk_ids].size} Unspammed"
            else
              @object.unspam
              flash[:success] = "Comment restored and Akismet notified."
            end

            redirect_to back_or_index
          end
        end    
      end
      
    end
  end
end

