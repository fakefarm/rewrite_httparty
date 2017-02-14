module RewriteHttparty
<<~HEREDOC
  Default connection adapter that returns a new Net::HTTP each time

  == Custom Connection Factories

  If you like to implement your own connection adapter, subclassing HTTParty::ConnectionAdapter will make it easier. Just override teh #connection method. The uri and options attributes will have all the info you need to construct your http connection. Whatever you return from your connecton method needs to adhere to the Net::HTTP interface as this is what HTTParty expects.

  @example log the uri and options
      class LoggingConnectionAdapter < HTTParty::ConnectionAdapter
        def connection
          puts uri
          puts options
          Net::HTTP.new(url)
        end
      end

  @example count the number of http calls
    class CountingConnectionAdapter < HTTParty::ConnectionAdapter
      @@count = 0
      self.count
        @@count
      end

      def connection
        self.count += 1
        super
      end
    end
=== Configuration
There is lots of configuration data available for your connection adapter in the #options attribute. It is up to you to interpret them within your connection adapter. Take a look at the implementation of HTTParty::ConnectionAdapter#connection for examples of how they are used.

# === Configuration
_dw TODO add this part later...

HEREDOC

  class ConnectionAdapter
    # Private: Regex used to strip brackets from IPv6 URIs.
  end
end
