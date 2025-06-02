# typed: strong

module VernSDK
  module Models
    class RunRetrieveResponse < VernSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            VernSDK::Models::RunRetrieveResponse,
            VernSDK::Internal::AnyHash
          )
        end

      # Unique identifier for the run
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Timestamp when the run completed
      sig { returns(T.nilable(Time)) }
      attr_reader :completed_at

      sig { params(completed_at: Time).void }
      attr_writer :completed_at

      # Timestamp when the run was created
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The inputs provided for the task
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :inputs

      sig { params(inputs: T::Hash[Symbol, T.anything]).void }
      attr_writer :inputs

      # The response data from the task execution
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :response

      sig { params(response: T::Hash[Symbol, T.anything]).void }
      attr_writer :response

      # Timestamp when the run started executing
      sig { returns(T.nilable(Time)) }
      attr_reader :started_at

      sig { params(started_at: Time).void }
      attr_writer :started_at

      # The current status of the run
      sig do
        returns(
          T.nilable(VernSDK::Models::RunRetrieveResponse::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(
          status: VernSDK::Models::RunRetrieveResponse::Status::OrSymbol
        ).void
      end
      attr_writer :status

      # The name of the task that was executed
      sig { returns(T.nilable(String)) }
      attr_reader :task

      sig { params(task: String).void }
      attr_writer :task

      sig do
        params(
          id: String,
          completed_at: Time,
          created_at: Time,
          inputs: T::Hash[Symbol, T.anything],
          response: T::Hash[Symbol, T.anything],
          started_at: Time,
          status: VernSDK::Models::RunRetrieveResponse::Status::OrSymbol,
          task: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier for the run
        id: nil,
        # Timestamp when the run completed
        completed_at: nil,
        # Timestamp when the run was created
        created_at: nil,
        # The inputs provided for the task
        inputs: nil,
        # The response data from the task execution
        response: nil,
        # Timestamp when the run started executing
        started_at: nil,
        # The current status of the run
        status: nil,
        # The name of the task that was executed
        task: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            completed_at: Time,
            created_at: Time,
            inputs: T::Hash[Symbol, T.anything],
            response: T::Hash[Symbol, T.anything],
            started_at: Time,
            status: VernSDK::Models::RunRetrieveResponse::Status::TaggedSymbol,
            task: String
          }
        )
      end
      def to_hash
      end

      # The current status of the run
      module Status
        extend VernSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, VernSDK::Models::RunRetrieveResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        QUEUED =
          T.let(
            :queued,
            VernSDK::Models::RunRetrieveResponse::Status::TaggedSymbol
          )
        RUNNING =
          T.let(
            :running,
            VernSDK::Models::RunRetrieveResponse::Status::TaggedSymbol
          )
        COMPLETE =
          T.let(
            :complete,
            VernSDK::Models::RunRetrieveResponse::Status::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            VernSDK::Models::RunRetrieveResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[VernSDK::Models::RunRetrieveResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
