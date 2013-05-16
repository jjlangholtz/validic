# encoding: utf-8

module Validic
  module TobaccoCessation

    ##
    # Get TobaccoCessation Activities base on `access_token`
    # 
    # @return [Hashie::Mash] with list of TobaccoCessation
    def get_tobacco_cessations(options={})
      options = {
        start_date: options[:start_date],
        end_date: options[:end_date]
      }
      response = get("/#{Validic.api_version}/tobacco_cessation.json", options)
      response if response
    end

    ##
    # Create TobaccoCessation base on `access_token`
    # 
    # @return success
    def create_tobacco_cessation(options={})
      options = {
        tobacco_cessation: {
          cigarettes_allowed: options[:cigarettes_allowed],
          cigarettes_smoked: options[:cigarettes_smoked],
          cravings: options[:cravings],
          last_smoked: options[:last_smoked],
          timestamp: options[:timestamp],
          source: options[:source]
        }
      }

      response = post("/#{Validic.api_version}/tobacco_cessation.json", options)
      response if response
    end

  end
end
