class Comment < ApplicationRecord
    t.references :article, index: true
end
