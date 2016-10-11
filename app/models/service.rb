class Service < ApplicationRecord
  include AttachedFileModule

  attached_file_module(:image, '/service/:basename/:style/:basename.:extension', {
                         styles: { mini: '200x134>', small: '400x268>', large: '700x469>'},
                         google_headers: lambda { |attachment|
                                  { 'Content-Type' => attachment.content_type,
                                    'Content-Disposition' => "attachment; filename=#{attachment.original_filename}"
                                  }
                                },
                         convert_options: { all: '-strip -auto-orient -colorspace sRGB -quality 80 -interlace Plane' },
                         default_style: :small
                       })

  # Validate content type
  validates_attachment_content_type :image, :content_type => /\Aimage/

  # Validate filename
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]

  # Explicitly do not validate
  do_not_validate_attachment_file_type :image
end
