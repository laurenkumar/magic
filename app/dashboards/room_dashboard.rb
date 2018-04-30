require "administrate/base_dashboard"

class RoomDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    photos: Field::HasMany,
    reservations: Field::HasMany,
    guest_reviews: Field::HasMany,
    id: Field::Number,
    home_type: Field::String,
    room_type: Field::String,
    accommodate: Field::Number,
    bed_room: Field::Number,
    bath_room: Field::Number,
    listing_name: Field::String,
    summary: Field::Text,
    address: Field::String,
    is_tv: Field::Boolean,
    is_kitchen: Field::Boolean,
    is_air: Field::Boolean,
    is_heating: Field::Boolean,
    is_internet: Field::Boolean,
    price: Field::Number,
    active: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    latitude: Field::Number.with_options(decimals: 2),
    longitude: Field::Number.with_options(decimals: 2),
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :photos,
    :reservations,
    :guest_reviews,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :photos,
    :reservations,
    :guest_reviews,
    :id,
    :home_type,
    :room_type,
    :accommodate,
    :bed_room,
    :bath_room,
    :listing_name,
    :summary,
    :address,
    :is_tv,
    :is_kitchen,
    :is_air,
    :is_heating,
    :is_internet,
    :price,
    :active,
    :created_at,
    :updated_at,
    :latitude,
    :longitude,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :photos,
    :reservations,
    :guest_reviews,
    :home_type,
    :room_type,
    :accommodate,
    :bed_room,
    :bath_room,
    :listing_name,
    :summary,
    :address,
    :is_tv,
    :is_kitchen,
    :is_air,
    :is_heating,
    :is_internet,
    :price,
    :active,
    :latitude,
    :longitude,
  ].freeze

  # Overwrite this method to customize how rooms are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(room)
  #   "Room ##{room.id}"
  # end
end
