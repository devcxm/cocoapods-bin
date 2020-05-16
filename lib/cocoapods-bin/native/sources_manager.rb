# frozen_string_literal: true

require 'cocoapods'
require 'cocoapods-bin/config/config'

module Pod
  class Source
    class Manager
      # 默认 source
      def default_source
        source_with_name_or_url(CBin.config.default_repo_url)
      end

      # 源码 source
      def code_source
        source_with_name_or_url(CBin.config.code_repo_url)
      end

      # 二进制 source
      def binary_source
        source_with_name_or_url(CBin.config.binary_repo_url)
      end
    end
  end
end
