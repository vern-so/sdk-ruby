# frozen_string_literal: true

module VernSDK
  module Models
    # @see VernSDK::Resources::Runs#retrieve
    class RunRetrieveParams < VernSDK::Internal::Type::BaseModel
      extend VernSDK::Internal::Type::RequestParameters::Converter
      include VernSDK::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [VernSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
