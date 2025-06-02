# frozen_string_literal: true

module VernSDK
  module Models
    # @see VernSDK::Resources::Runs#create
    class RunCreateParams < VernSDK::Internal::Type::BaseModel
      extend VernSDK::Internal::Type::RequestParameters::Converter
      include VernSDK::Internal::Type::RequestParameters

      # @!attribute task_id
      #   The ID of the task to execute
      #
      #   @return [String]
      required :task_id, String, api_name: :taskId

      # @!attribute inputs
      #   The inputs required for the task
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :inputs, VernSDK::Internal::Type::HashOf[VernSDK::Internal::Type::Unknown]

      # @!attribute profile_id
      #   Optional user-specified UID for a profile linked via magic link
      #
      #   @return [String, nil]
      optional :profile_id, String, api_name: :profileId

      # @!attribute url
      #   An optional URL to be processed by the task
      #
      #   @return [String, nil]
      optional :url, String

      # @!method initialize(task_id:, inputs: nil, profile_id: nil, url: nil, request_options: {})
      #   @param task_id [String] The ID of the task to execute
      #
      #   @param inputs [Hash{Symbol=>Object}] The inputs required for the task
      #
      #   @param profile_id [String] Optional user-specified UID for a profile linked via magic link
      #
      #   @param url [String] An optional URL to be processed by the task
      #
      #   @param request_options [VernSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
