class Tagging < ApplicationRecord
  belongs_to :rag
  belongs_to :article
end
