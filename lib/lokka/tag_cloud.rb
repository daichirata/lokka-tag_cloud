module Lokka
  module TagCloud
    def self.registered(app)
      app.helpers do
        def tag_cloud(opt = {}, &block)
          tags = Tag.all
          if opt[:sort] == true
            tags.sort_by!(&:name)
          end

          classes = opt[:classes]

          max_count = 0
          tags.each {|tag| max_count = tag.taggings.count if tag.taggings.count > max_count }

          tags.each do |tag|
            if max_count > 1
              index = ((tag.taggings.count.to_f / max_count.to_f) * (classes.size - 1)).round
            else
              index = 0
            end
            block.call(tag, classes[index])
          end
        end
      end
    end
  end
end
