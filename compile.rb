module tokenModule
    def getTokenType
      return @tokenYpe
    end
end
class Token
    extend tokenModule
    def initialize(tokenType)
      @tokenType = tokenType  
   end
end
