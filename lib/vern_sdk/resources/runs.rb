# frozen_string_literal: true

module VernSDK
  module Resources
    class Runs
      # Executes a task with the provided inputs
      #
      # @overload create(task_id:, inputs: nil, profile_id: nil, url: nil, request_options: {})
      #
      # @param task_id [String] The ID of the task to execute
      #
      # @param inputs [Hash{Symbol=>Object}] The inputs required for the task
      #
      # @param profile_id [String] Optional user-specified UID for a profile linked via magic link
      #
      # @param url [String] An optional URL to be processed by the task
      #
      # @param request_options [VernSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VernSDK::Models::RunCreateResponse]
      #
      # @see VernSDK::Models::RunCreateParams
      def create(params)
        parsed, options = VernSDK::RunCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "runs",
          body: parsed,
          model: VernSDK::Models::RunCreateResponse,
          options: options
        )
      end

      # Retrieves the details of a specific task run
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the run to retrieve
      #
      # @param request_options [VernSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [VernSDK::Models::RunRetrieveResponse]
      #
      # @see VernSDK::Models::RunRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["runs/%1$s", id],
          model: VernSDK::Models::RunRetrieveResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [VernSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
