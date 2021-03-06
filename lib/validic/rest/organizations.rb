require 'validic/organization'

module Validic
  module REST
    module Organizations
      def get_organization(params = {})
        resp = get_request(:organizations, params)
        build_response_attr(resp)
      end
    end
  end
end
