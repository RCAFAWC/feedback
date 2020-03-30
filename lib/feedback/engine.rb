module Feedback
  class Engine < ::Rails::Engine
    isolate_namespace Feedback

    initializer "feedback.assets.precompile" do |app|
      app.config.assets.precompile += %w( application.css )
    end
  end
end
