module Brandwatch
  class Client
    module Projects
      module Tags

        # Get all tags in project
        #
        # @param id [Integer] Id of project
        # @option opts [Integer] :page Page of projects to retrieve
        # @option opts [Integer] :pageSize Results per page of results
        # @return [Hashie::Mash] All tags in project
        def tags id, opts={}
          get "projects/#{project_id}/tags"
        end

        # Get a specific tag in project
        #
        # @param project_id [Integer] Id of project
        # @param tag_id [Integer] Id of tag
        # @return [Hashie::Mash] Specific tag
        def get_tag project_id, tag_id
          get "projects/#{project_id}/tags/#{tag_id}"
        end

        # Create a new tag in project
        #
        # @param id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [String] id Id of the tag
        # @option opts [String] name Name of the tag
        # @return [Hashie::Mash] New tag
        def create_tag id, opts={}
          post "projects/#{project_id}/tags"
        end

        # Update an existing tag in project
        #
        # @param project_id [Integer] Id of project
        # @param tag_id [Integer] Id of tag
        # @param opts [Hash] options hash of parameters
        # @option opts [String] id Id of the tag
        # @option opts [String] name Name of the tag
        # @return [Hashie::Mash] Updated tag
        def update_tag project_id, tag_id, opts={}
          put "projects/#{project_id}/tags/#{tag_id}"
        end

        # Delete an existing tag in project
        #
        # @param project_id [Integer] Id of project
        # @param tag_id [Integer] Id of tag
        # @return [Hashie::Mash] Deleted tag
        def delete_tag project_id, tag_id
          deleted "projects/#{project_id}/tags/#{tag_id}"
        end

      end
    end
  end
end