# typed: strong

module VernSDK
  module Resources
    class Runs
      # Executes a task with the provided inputs
      sig do
        params(
          task_id: String,
          inputs: T::Hash[Symbol, T.anything],
          profile_id: String,
          url: String,
          request_options: VernSDK::RequestOptions::OrHash
        ).returns(VernSDK::Models::RunCreateResponse)
      end
      def create(
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

      # Retrieves the details of a specific task run
      sig do
        params(
          id: String,
          request_options: VernSDK::RequestOptions::OrHash
        ).returns(VernSDK::Models::RunRetrieveResponse)
      end
      def retrieve(
        # The ID of the run to retrieve
        id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: VernSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
