# Lokka Tag Cloud

This plug-in provide tag cloud.

## Installation

    $ cd APP_ROOT/public/plugins/
    $ git clone git@github.com:daic-h/lokka-tag_cloud.git

## How to Use

e.g.

    <% tag_cloud :classes => %w(level1 level2 level3) do |tag, css_class| %>
      <%= link_to tag.name, tag.link, :class => css_class %>
    <% end %>

If you would like to sort by tag.name

    <% tag_cloud :classes => %w(level1 level2 level3), :sort => true do |tag, css_class| %>
      <%= link_to tag.name, tag.link, :class => css_class %>
    <% end %>

