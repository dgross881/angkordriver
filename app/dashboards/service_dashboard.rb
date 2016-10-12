require "administrate/base_dashboard"

class ServiceDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    image: PaperclipField,
    title: Field::String,
    body: Field::Text,
    service_type: ServiceField,
    show_homepage: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :image,
    :service_type,
    :title,
    :body,
    :show_homepage,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :image,
    :service_type,
    :title,
    :body,
    :show_homepage,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :image,
    :service_type,
    :title,
    :body,
    :show_homepage
  ].freeze

  # Overwrite this method to customize how services are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(service)
  #   "Service ##{service.id}"
  # end
end
