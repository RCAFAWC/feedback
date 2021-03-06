module Feedback
  class Engine < ::Rails::Engine
    isolate_namespace Feedback

    initializer "feedback", before: :load_config_initializers do |app|
      app.config.assets.precompile << "feedback/application.scss"
      app.config.assets.precompile << "feedback/feedbackFilter_controller.js"

      config.paths["db/migrate"].expanded.each do |expanded_path|
        Rails.application.config.paths["db/migrate"] << expanded_path
      end
    end
  end
end
