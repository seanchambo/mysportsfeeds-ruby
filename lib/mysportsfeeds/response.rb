module MySportsFeeds
  module Response
    class Success
      attr_reader :body, :status

      def initialize(body, status = 200)
        @body   = body
        @status = status
      end

      def success?
        true
      end
    end

    class Error
      attr_reader :status

      def initialize(error, status = 422)
        @error  = error
        @status = status
      end

      def body
        { error: @error }
      end

      def success?
        false
      end
    end
  end
end
