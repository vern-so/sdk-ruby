# typed: strong

module VernSDK
  module Models
    class RunCreateResponse < VernSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(VernSDK::Models::RunCreateResponse, VernSDK::Internal::AnyHash)
        end

      # Unique identifier for the run
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The inputs provided for the task
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :inputs

      sig { params(inputs: T::Hash[Symbol, T.anything]).void }
      attr_writer :inputs

      # Timestamp when the run was queued
      sig { returns(T.nilable(Time)) }
      attr_reader :queued_at

      sig { params(queued_at: Time).void }
      attr_writer :queued_at

      sig do
        params(
          id: String,
          inputs: T::Hash[Symbol, T.anything],
          queued_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the run
        id: nil,
        # The inputs provided for the task
        inputs: nil,
        # Timestamp when the run was queued
        queued_at: nil
      )
      end

      sig do
        override.returns(
          { id: String, inputs: T::Hash[Symbol, T.anything], queued_at: Time }
        )
      end
      def to_hash
      end
    end
  end
end
