# frozen_string_literal: true

require_relative "../test_helper"

class VernSDK::Test::Resources::RunsTest < VernSDK::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @vern.runs.create(task_id: "task_123456")

    assert_pattern do
      response => VernSDK::Models::RunCreateResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        inputs: ^(VernSDK::Internal::Type::HashOf[VernSDK::Internal::Type::Unknown]) | nil,
        queued_at: Time | nil
      }
    end
  end

  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @vern.runs.retrieve("id")

    assert_pattern do
      response => VernSDK::Models::RunRetrieveResponse
    end

    assert_pattern do
      response => {
        id: String | nil,
        completed_at: Time | nil,
        created_at: Time | nil,
        inputs: ^(VernSDK::Internal::Type::HashOf[VernSDK::Internal::Type::Unknown]) | nil,
        response: ^(VernSDK::Internal::Type::HashOf[VernSDK::Internal::Type::Unknown]) | nil,
        started_at: Time | nil,
        status: VernSDK::Models::RunRetrieveResponse::Status | nil,
        task: String | nil
      }
    end
  end
end
