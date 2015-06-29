module ChefAPI
  class Resource::Role < Resource::Base
    collection_path '/roles'

    schema do
      attribute :name,                type: String, primary: true, required: true
      attribute :json_class,          type: String, default: "Chef::Role"
      attribute :chef_type,           type: String, default: "role"
      attribute :description,         type: String
      attribute :default_attributes,  type: Hash,   default: {}
      attribute :override_attributes, type: Hash,   default: {}
      attribute :run_list,            type: Array,  default: []
      attribute :env_run_lists,       type: Hash,   default: {}
    end

    has_many :environments
  end
end
