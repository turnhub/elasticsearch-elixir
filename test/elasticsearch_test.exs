defmodule ElasticsearchTest do
  use ExUnit.Case

  alias Elasticsearch.Query

  doctest Elasticsearch

  setup do
    on_exit fn ->
      for index <- ["test1", "test2", "nonexistent"] do
        Elasticsearch.delete("/#{index}")
      end
    end
  end
end
