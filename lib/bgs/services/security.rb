module BGS
  class SecurityWebService < BGS::Base
    def self.service_name
      "security"
    end

    # Gets a users' participant id from their station and css ids
    def find_participant_id(station_id:, css_id:)
      response = request(:find_ptcpnt_id, "stationNumber": station_id, "userId": css_id)
      response.body[:find_ptcpnt_id_response][:return]
    end
  end
end
