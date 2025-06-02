# typed: strong

module VernSDK
  module Models
    class RunRetrieveParams < VernSDK::Internal::Type::BaseModel
      extend VernSDK::Internal::Type::RequestParameters::Converter
      include VernSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(VernSDK::RunRetrieveParams, VernSDK::Internal::AnyHash)
        end

      sig do
        params(request_options: VernSDK::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: VernSDK::RequestOptions }) }
      def to_hash
      end
    end
  end
end
