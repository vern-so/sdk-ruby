# frozen_string_literal: true

module VernSDK
  module Models
    # @see VernSDK::Resources::Runs#retrieve
    class RunRetrieveResponse < VernSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the run
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute completed_at
      #   Timestamp when the run completed
      #
      #   @return [Time, nil]
      optional :completed_at, Time

      # @!attribute created_at
      #   Timestamp when the run was created
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute inputs
      #   The inputs provided for the task
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :inputs, VernSDK::Internal::Type::HashOf[VernSDK::Internal::Type::Unknown]

      # @!attribute response
      #   The response data from the task execution
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :response, VernSDK::Internal::Type::HashOf[VernSDK::Internal::Type::Unknown]

      # @!attribute started_at
      #   Timestamp when the run started executing
      #
      #   @return [Time, nil]
      optional :started_at, Time

      # @!attribute status
      #   The current status of the run
      #
      #   @return [Symbol, VernSDK::Models::RunRetrieveResponse::Status, nil]
      optional :status, enum: -> { VernSDK::Models::RunRetrieveResponse::Status }

      # @!attribute task
      #   The name of the task that was executed
      #
      #   @return [String, nil]
      optional :task, String

      # @!method initialize(id: nil, completed_at: nil, created_at: nil, inputs: nil, response: nil, started_at: nil, status: nil, task: nil)
      #   @param id [String] Unique identifier for the run
      #
      #   @param completed_at [Time] Timestamp when the run completed
      #
      #   @param created_at [Time] Timestamp when the run was created
      #
      #   @param inputs [Hash{Symbol=>Object}] The inputs provided for the task
      #
      #   @param response [Hash{Symbol=>Object}] The response data from the task execution
      #
      #   @param started_at [Time] Timestamp when the run started executing
      #
      #   @param status [Symbol, VernSDK::Models::RunRetrieveResponse::Status] The current status of the run
      #
      #   @param task [String] The name of the task that was executed

      # The current status of the run
      #
      # @see VernSDK::Models::RunRetrieveResponse#status
      module Status
        extend VernSDK::Internal::Type::Enum

        QUEUED = :queued
        RUNNING = :running
        COMPLETE = :complete
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
