require 'ox'

Ox::default_options[:with_xml] = true

module ActionView
  module Template::Handlers
    class Ox
      class_attribute :default_format
      self.default_format = Mime[:html]

      class << self
        def call(template)
          "#{name}.render(begin;#{template.source};end)"
        end

        def render(ox_object)
          ::Ox.dump(ox_object, render_options)
        end

        private

        def render_options
          { :with_xml => true }
        end
      end
    end
  end
end

ActionView::Template.register_template_handler(:ox, ActionView::Template::Handlers::Ox)
