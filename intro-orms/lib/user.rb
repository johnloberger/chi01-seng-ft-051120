class User < OrmObject

  def initialize(args = {})
    @username = args['username']
  end

end