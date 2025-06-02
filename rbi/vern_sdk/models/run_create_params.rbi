# typed: strong

module VernSDK
  module Models
    class RunCreateParams < VernSDK::Internal::Type::BaseModel
      extend VernSDK::Internal::Type::RequestParameters::Converter
      include VernSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(VernSDK::RunCreateParams, VernSDK::Internal::AnyHash)
        end

      # The ID of the task to execute
      sig { returns(String) }
      attr_accessor :task_id

      # The inputs required for the task
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :inputs

      sig { params(inputs: T::Hash[Symbol, T.anything]).void }
      attr_writer :inputs

      # Optional user-specified UID for a profile linked via magic link
      sig { returns(T.nilable(String)) }
      attr_reader :profile_id

      sig { params(profile_id: String).void }
      attr_writer :profile_id

      # An optional URL to be processed by the task
      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig do
        params(
          task_id: String,
          inputs: T::Hash[Symbol, T.anything],
          profile_id: String,
          url: String,
          request_options: VernSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the task to execute
        task_id:,
        # The inputs required for the task
        inputs: nil,
        # Optional user-specified UID for a profile linked via magic link
        profile_id: nil,
        # An optional URL to be processed by the task
        url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            task_id: String,
            inputs: T::Hash[Symbol, T.anything],
            profile_id: String,
            url: String,
            request_options: VernSDK::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
