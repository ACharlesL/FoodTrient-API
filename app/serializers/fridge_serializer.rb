class FridgeSerializer < ActiveModel::Serializer
  attributes :id, :ingredient_id, :user_id
end
