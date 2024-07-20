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
  # Represents a link to a video animation (H.264/MPEG-4 AVC video without sound). By default, this animated MPEG-4 file will be sent by the user with optional caption. Alternatively, you can use input_message_content to send a message with the specified content instead of the animation.
  class InlineQueryResultMpeg4Gif
    # Type of the result, must be mpeg4_gif
    attr_accessor :type

    # Unique identifier for this result, 1-64 bytes
    attr_accessor :id

    # A valid URL for the MPEG4 file. File size must not exceed 1MB
    attr_accessor :mpeg4_url

    # Optional. Video width
    attr_accessor :mpeg4_width

    # Optional. Video height
    attr_accessor :mpeg4_height

    # Optional. Video duration in seconds
    attr_accessor :mpeg4_duration

    # URL of the static (JPEG or GIF) or animated (MPEG4) thumbnail for the result
    attr_accessor :thumbnail_url

    # Optional. MIME type of the thumbnail, must be one of \"image/jpeg\", \"image/gif\", or \"video/mp4\". Defaults to \"image/jpeg\"
    attr_accessor :thumbnail_mime_type

    # Optional. Title for the result
    attr_accessor :title

    # Optional. Caption of the MPEG-4 file to be sent, 0-1024 characters after entities parsing
    attr_accessor :caption

    # Optional. Mode for parsing entities in the caption. See formatting options for more details.
    attr_accessor :parse_mode

    # Optional. List of special entities that appear in the caption, which can be specified instead of parse_mode
    attr_accessor :caption_entities

    # Optional. Inline keyboard attached to the message
    attr_accessor :reply_markup

    # Optional. Content of the message to be sent instead of the video animation
    attr_accessor :input_message_content

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'type' => :'type',
        :'id' => :'id',
        :'mpeg4_url' => :'mpeg4_url',
        :'mpeg4_width' => :'mpeg4_width',
        :'mpeg4_height' => :'mpeg4_height',
        :'mpeg4_duration' => :'mpeg4_duration',
        :'thumbnail_url' => :'thumbnail_url',
        :'thumbnail_mime_type' => :'thumbnail_mime_type',
        :'title' => :'title',
        :'caption' => :'caption',
        :'parse_mode' => :'parse_mode',
        :'caption_entities' => :'caption_entities',
        :'reply_markup' => :'reply_markup',
        :'input_message_content' => :'input_message_content'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'id' => :'String',
        :'mpeg4_url' => :'String',
        :'mpeg4_width' => :'Integer',
        :'mpeg4_height' => :'Integer',
        :'mpeg4_duration' => :'Integer',
        :'thumbnail_url' => :'String',
        :'thumbnail_mime_type' => :'String',
        :'title' => :'String',
        :'caption' => :'String',
        :'parse_mode' => :'String',
        :'caption_entities' => :'Array<MessageEntity>',
        :'reply_markup' => :'InlineKeyboardMarkup',
        :'input_message_content' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TelegramBotOpenapi::InlineQueryResultMpeg4Gif` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TelegramBotOpenapi::InlineQueryResultMpeg4Gif`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = nil
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      else
        self.id = nil
      end

      if attributes.key?(:'mpeg4_url')
        self.mpeg4_url = attributes[:'mpeg4_url']
      else
        self.mpeg4_url = nil
      end

      if attributes.key?(:'mpeg4_width')
        self.mpeg4_width = attributes[:'mpeg4_width']
      end

      if attributes.key?(:'mpeg4_height')
        self.mpeg4_height = attributes[:'mpeg4_height']
      end

      if attributes.key?(:'mpeg4_duration')
        self.mpeg4_duration = attributes[:'mpeg4_duration']
      end

      if attributes.key?(:'thumbnail_url')
        self.thumbnail_url = attributes[:'thumbnail_url']
      else
        self.thumbnail_url = nil
      end

      if attributes.key?(:'thumbnail_mime_type')
        self.thumbnail_mime_type = attributes[:'thumbnail_mime_type']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'caption')
        self.caption = attributes[:'caption']
      end

      if attributes.key?(:'parse_mode')
        self.parse_mode = attributes[:'parse_mode']
      end

      if attributes.key?(:'caption_entities')
        if (value = attributes[:'caption_entities']).is_a?(Array)
          self.caption_entities = value
        end
      end

      if attributes.key?(:'reply_markup')
        self.reply_markup = attributes[:'reply_markup']
      end

      if attributes.key?(:'input_message_content')
        self.input_message_content = attributes[:'input_message_content']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @mpeg4_url.nil?
        invalid_properties.push('invalid value for "mpeg4_url", mpeg4_url cannot be nil.')
      end

      if @thumbnail_url.nil?
        invalid_properties.push('invalid value for "thumbnail_url", thumbnail_url cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @type.nil?
      return false if @id.nil?
      return false if @mpeg4_url.nil?
      return false if @thumbnail_url.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          id == o.id &&
          mpeg4_url == o.mpeg4_url &&
          mpeg4_width == o.mpeg4_width &&
          mpeg4_height == o.mpeg4_height &&
          mpeg4_duration == o.mpeg4_duration &&
          thumbnail_url == o.thumbnail_url &&
          thumbnail_mime_type == o.thumbnail_mime_type &&
          title == o.title &&
          caption == o.caption &&
          parse_mode == o.parse_mode &&
          caption_entities == o.caption_entities &&
          reply_markup == o.reply_markup &&
          input_message_content == o.input_message_content
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, id, mpeg4_url, mpeg4_width, mpeg4_height, mpeg4_duration, thumbnail_url, thumbnail_mime_type, title, caption, parse_mode, caption_entities, reply_markup, input_message_content].hash
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
