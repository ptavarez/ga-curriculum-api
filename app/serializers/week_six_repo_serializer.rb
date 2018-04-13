class WeekSixRepoSerializer < ActiveModel::Serializer
  attributes :id, :week, :day, :repo_url, :name, :category
end
