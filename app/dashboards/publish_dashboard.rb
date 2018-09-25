require "administrate/base_dashboard"

class PublishDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    description: Field::Text,
    country: Field::String,
    image_file_name: Field::String,
    image_content_type: Field::String,
    image_file_size: Field::Number,
    image_updated_at: Field::DateTime,
    public: Field::Boolean,
    views: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :description,
    :country,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :description,
    :country,
    :image_file_name,
    :image_content_type,
    :image_file_size,
    :image_updated_at,
    :public,
    :views,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :description,
    :country,
    :image_file_name,
    :image_content_type,
    :image_file_size,
    :image_updated_at,
    :public,
    :views,
  ].freeze

  # Overwrite this method to customize how publishes are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(publish)
  #   "Publish ##{publish.id}"
  # end
end
