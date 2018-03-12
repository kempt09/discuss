defmodule Discuss.TopicTest do
  use Discuss.ModelCase

  alias Discuss.Topic

  @valid_attrs %{inserted_at: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}, t: "some content", tags: "some content", title: "some content", updated_at: %{day: 17, hour: 14, min: 0, month: 4, sec: 0, year: 2010}}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Topic.changeset(%Topic{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Topic.changeset(%Topic{}, @invalid_attrs)
    refute changeset.valid?
  end
end
