=begin
#telegram-bot-api

#Unofficial telegram-bot-api OpenAPI spec. Generated from the Bot API docs at https://core.telegram.org/bots/api

The version of the OpenAPI document: Bot API 7.2

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module TelegramBotOpenapi
  # This object represents a sticker.
  class Sticker
    # Identifier for this file, which can be used to download or reuse the file
    attr_accessor :file_id

    # Unique identifier for this file, which is supposed to be the same over time and for different bots. Can't be used to download or reuse the file.
    attr_accessor :file_unique_id

    # Type of the sticker, currently one of \"regular\", \"mask\", \"custom_emoji\". The type of the sticker is independent from its format, which is determined by the fields is_animated and is_video.
    attr_accessor :type

    # Sticker width
    attr_accessor :width

    # Sticker height
    attr_accessor :height

    # True, if the sticker is animated
    attr_accessor :is_animated

    # True, if the sticker is a video sticker
    attr_accessor :is_video

    # Optional. Sticker thumbnail in the .WEBP or .JPG format
    attr_accessor :thumbnail

    # Optional. Emoji associated with the sticker
    attr_accessor :emoji

    # Optional. Name of the sticker set to which the sticker belongs
    attr_accessor :set_name

    # Optional. For premium regular stickers, premium animation for the sticker
    attr_accessor :premium_animation

    # Optional. For mask stickers, the position where the mask should be placed
    attr_accessor :mask_position

    # Optional. For custom emoji stickers, unique identifier of the custom emoji
    attr_accessor :custom_emoji_id

    # Optional. True, if the sticker must be repainted to a text color in messages, the color of the Telegram Premium badge in emoji status, white color on chat photos, or another appropriate color in other places
    attr_accessor :needs_repainting

    # Optional. File size in bytes
    attr_accessor :file_size

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'file_id' => :'file_id',
        :'file_unique_id' => :'file_unique_id',
        :'type' => :'type',
        :'width' => :'width',
        :'height' => :'height',
        :'is_animated' => :'is_animated',
        :'is_video' => :'is_video',
        :'thumbnail' => :'thumbnail',
        :'emoji' => :'emoji',
        :'set_name' => :'set_name',
        :'premium_animation' => :'premium_animation',
        :'mask_position' => :'mask_position',
        :'custom_emoji_id' => :'custom_emoji_id',
        :'needs_repainting' => :'needs_repainting',
        :'file_size' => :'file_size'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'file_id' => :'String',
        :'file_unique_id' => :'String',
        :'type' => :'String',
        :'width' => :'Integer',
        :'height' => :'Integer',
        :'is_animated' => :'Boolean',
        :'is_video' => :'Boolean',
        :'thumbnail' => :'PhotoSize',
        :'emoji' => :'String',
        :'set_name' => :'String',
        :'premium_animation' => :'File',
        :'mask_position' => :'MaskPosition',
        :'custom_emoji_id' => :'String',
        :'needs_repainting' => :'Boolean',
        :'file_size' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TelegramBotOpenapi::Sticker` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TelegramBotOpenapi::Sticker`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'file_id')
        self.file_id = attributes[:'file_id']
      else
        self.file_id = nil
      end

      if attributes.key?(:'file_unique_id')
        self.file_unique_id = attributes[:'file_unique_id']
      else
        self.file_unique_id = nil
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'width')
        self.width = attributes[:'width']
      else
        self.width = nil
      end

      if attributes.key?(:'height')
        self.height = attributes[:'height']
      else
        self.height = nil
      end

      if attributes.key?(:'is_animated')
        self.is_animated = attributes[:'is_animated']
      else
        self.is_animated = nil
      end

      if attributes.key?(:'is_video')
        self.is_video = attributes[:'is_video']
      else
        self.is_video = nil
      end

      if attributes.key?(:'thumbnail')
        self.thumbnail = attributes[:'thumbnail']
      end

      if attributes.key?(:'emoji')
        self.emoji = attributes[:'emoji']
      end

      if attributes.key?(:'set_name')
        self.set_name = attributes[:'set_name']
      end

      if attributes.key?(:'premium_animation')
        self.premium_animation = attributes[:'premium_animation']
      end

      if attributes.key?(:'mask_position')
        self.mask_position = attributes[:'mask_position']
      end

      if attributes.key?(:'custom_emoji_id')
        self.custom_emoji_id = attributes[:'custom_emoji_id']
      end

      if attributes.key?(:'needs_repainting')
        self.needs_repainting = attributes[:'needs_repainting']
      end

      if attributes.key?(:'file_size')
        self.file_size = attributes[:'file_size']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @file_id.nil?
        invalid_properties.push('invalid value for "file_id", file_id cannot be nil.')
      end

      if @file_unique_id.nil?
        invalid_properties.push('invalid value for "file_unique_id", file_unique_id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @width.nil?
        invalid_properties.push('invalid value for "width", width cannot be nil.')
      end

      if @height.nil?
        invalid_properties.push('invalid value for "height", height cannot be nil.')
      end

      if @is_animated.nil?
        invalid_properties.push('invalid value for "is_animated", is_animated cannot be nil.')
      end

      if @is_video.nil?
        invalid_properties.push('invalid value for "is_video", is_video cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @file_id.nil?
      return false if @file_unique_id.nil?
      return false if @type.nil?
      return false if @width.nil?
      return false if @height.nil?
      return false if @is_animated.nil?
      return false if @is_video.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          file_id == o.file_id &&
          file_unique_id == o.file_unique_id &&
          type == o.type &&
          width == o.width &&
          height == o.height &&
          is_animated == o.is_animated &&
          is_video == o.is_video &&
          thumbnail == o.thumbnail &&
          emoji == o.emoji &&
          set_name == o.set_name &&
          premium_animation == o.premium_animation &&
          mask_position == o.mask_position &&
          custom_emoji_id == o.custom_emoji_id &&
          needs_repainting == o.needs_repainting &&
          file_size == o.file_size
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [file_id, file_unique_id, type, width, height, is_animated, is_video, thumbnail, emoji, set_name, premium_animation, mask_position, custom_emoji_id, needs_repainting, file_size].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = TelegramBotOpenapi.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
