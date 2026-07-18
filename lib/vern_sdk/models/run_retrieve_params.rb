# frozen_string_literal: true

module VernSDK
  module Models
    # @see VernSDK::Resources::Runs#retrieve
    class RunRetrieveParams < VernSDK::Internal::Type::BaseModel
      extend VernSDK::Internal::Type::RequestParameters::Converter
      include VernSDK::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!method initialize(id:, request_options: {})
      #   @param id [String]
      #   @param request_options [VernSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
