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

      sig { returns(String) }
      attr_accessor :id

      sig do
        params(
          id: String,
          request_options: VernSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, request_options: {})
      end

      sig do
        override.returns(
          { id: String, request_options: VernSDK::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
