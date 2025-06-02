# frozen_string_literal: true

# Standard libraries.
# rubocop:disable Lint/RedundantRequireStatement
require "English"
require "cgi"
require "date"
require "erb"
require "etc"
require "json"
require "net/http"
require "pathname"
require "rbconfig"
require "securerandom"
require "set"
require "stringio"
require "time"
require "uri"
# rubocop:enable Lint/RedundantRequireStatement

# We already ship the preferred sorbet manifests in the package itself.
# `tapioca` currently does not offer us a way to opt out of unnecessary compilation.
if Object.const_defined?(:Tapioca) &&
   caller.chain([$PROGRAM_NAME]).chain(ARGV).any?(/tapioca/) &&
   ARGV.none?(/dsl/)
  return
end

# Gems.
require "connection_pool"

# Package files.
require_relative "vern_sdk/version"
require_relative "vern_sdk/internal/util"
require_relative "vern_sdk/internal/type/converter"
require_relative "vern_sdk/internal/type/unknown"
require_relative "vern_sdk/internal/type/boolean"
require_relative "vern_sdk/internal/type/file_input"
require_relative "vern_sdk/internal/type/enum"
require_relative "vern_sdk/internal/type/union"
require_relative "vern_sdk/internal/type/array_of"
require_relative "vern_sdk/internal/type/hash_of"
require_relative "vern_sdk/internal/type/base_model"
require_relative "vern_sdk/internal/type/base_page"
require_relative "vern_sdk/internal/type/request_parameters"
require_relative "vern_sdk/internal"
require_relative "vern_sdk/request_options"
require_relative "vern_sdk/file_part"
require_relative "vern_sdk/errors"
require_relative "vern_sdk/internal/transport/base_client"
require_relative "vern_sdk/internal/transport/pooled_net_requester"
require_relative "vern_sdk/client"
require_relative "vern_sdk/models/run_create_params"
require_relative "vern_sdk/models/run_create_response"
require_relative "vern_sdk/models/run_retrieve_params"
require_relative "vern_sdk/models/run_retrieve_response"
require_relative "vern_sdk/models"
require_relative "vern_sdk/resources/runs"
