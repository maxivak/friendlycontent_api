module FriendlycontentApi
  class Client


    def self.download(source_info, path, opts={}, cont_default='')

      url = build_url source_info, path, opts
      p = build_query_params source_info, path, opts

      response = HTTParty.get(url, :query =>  p)


      if response.code!=200
        raise 'cannot get file from remote source'
      end

      data = JSON.parse(response.body)

      data
    end

    def self.build_url(source_info, path, opts={})
      url =  URI::join(source_info[:api_url], path)

    end

    def self.build_query_params (source_info, path, opts={})

      {
          lang: opts[:lang]
      }

    end
  end
end
