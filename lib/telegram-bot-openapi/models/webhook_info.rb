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
  # Describes the current status of a webhook.
  class WebhookInfo
    # Webhook URL, may be empty if webhook is not set up
    attr_accessor :url

    # True, if a custom certificate was provided for webhook certificate checks
    attr_accessor :has_custom_certificate

    # Number of updates awaiting delivery
    attr_accessor :pending_update_count

    # Optional. Currently used webhook IP address
    attr_accessor :ip_address

    # Optional. Unix time for the most recent error that happened when trying to deliver an update via webhook
    attr_accessor :last_error_date

    # Optional. Error message in human-readable format for the most recent error that happened when trying to deliver an update via webhook
    attr_accessor :last_error_message

    # Optional. Unix time of the most recent error that happened when trying to synchronize available updates with Telegram datacenters
    attr_accessor :last_synchronization_error_date

    # Optional. The maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery
    attr_accessor :max_connections

    # Optional. A list of update types the bot is subscribed to. Defaults to all update types except chat_member
    attr_accessor :allowed_updates

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'url' => :'url',
        :'has_custom_certificate' => :'has_custom_certificate',
        :'pending_update_count' => :'pending_update_count',
        :'ip_address' => :'ip_address',
        :'last_error_date' => :'last_error_date',
        :'last_error_message' => :'last_error_message',
        :'last_synchronization_error_date' => :'last_synchronization_error_date',
        :'max_connections' => :'max_connections',
        :'allowed_updates' => :'allowed_updates'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'url' => :'String',
        :'has_custom_certificate' => :'Boolean',
        :'pending_update_count' => :'Integer',
        :'ip_address' => :'String',
        :'last_error_date' => :'Integer',
        :'last_error_message' => :'String',
        :'last_synchronization_error_date' => :'Integer',
        :'max_connections' => :'Integer',
        :'allowed_updates' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TelegramBotOpenapi::WebhookInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TelegramBotOpenapi::WebhookInfo`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      else
        self.url = nil
      end

      if attributes.key?(:'has_custom_certificate')
        self.has_custom_certificate = attributes[:'has_custom_certificate']
      else
        self.has_custom_certificate = nil
      end

      if attributes.key?(:'pending_update_count')
        self.pending_update_count = attributes[:'pending_update_count']
      else
        self.pending_update_count = nil
      end

      if attributes.key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.key?(:'last_error_date')
        self.last_error_date = attributes[:'last_error_date']
      end

      if attributes.key?(:'last_error_message')
        self.last_error_message = attributes[:'last_error_message']
      end

      if attributes.key?(:'last_synchronization_error_date')
        self.last_synchronization_error_date = attributes[:'last_synchronization_error_date']
      end

      if attributes.key?(:'max_connections')
        self.max_connections = attributes[:'max_connections']
      end

      if attributes.key?(:'allowed_updates')
        if (value = attributes[:'allowed_updates']).is_a?(Array)
          self.allowed_updates = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      if @has_custom_certificate.nil?
        invalid_properties.push('invalid value for "has_custom_certificate", has_custom_certificate cannot be nil.')
      end

      if @pending_update_count.nil?
        invalid_properties.push('invalid value for "pending_update_count", pending_update_count cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @url.nil?
      return false if @has_custom_certificate.nil?
      return false if @pending_update_count.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          url == o.url &&
          has_custom_certificate == o.has_custom_certificate &&
          pending_update_count == o.pending_update_count &&
          ip_address == o.ip_address &&
          last_error_date == o.last_error_date &&
          last_error_message == o.last_error_message &&
          last_synchronization_error_date == o.last_synchronization_error_date &&
          max_connections == o.max_connections &&
          allowed_updates == o.allowed_updates
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [url, has_custom_certificate, pending_update_count, ip_address, last_error_date, last_error_message, last_synchronization_error_date, max_connections, allowed_updates].hash
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
