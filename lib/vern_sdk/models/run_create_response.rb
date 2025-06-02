# frozen_string_literal: true

module VernSDK
  module Models
    # @see VernSDK::Resources::Runs#create
    class RunCreateResponse < VernSDK::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the run
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute inputs
      #   The inputs provided for the task
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :inputs, VernSDK::Internal::Type::HashOf[VernSDK::Internal::Type::Unknown]

      # @!attribute queued_at
      #   Timestamp when the run was queued
      #
      #   @return [Time, nil]
      optional :queued_at, Time

      # @!method initialize(id: nil, inputs: nil, queued_at: nil)
      #   @param id [String] Unique identifier for the run
      #
      #   @param inputs [Hash{Symbol=>Object}] The inputs provided for the task
      #
      #   @param queued_at [Time] Timestamp when the run was queued
    end
  end
end
