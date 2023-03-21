class Map < ApplicationRecord
    enum status: {
        uncharted: 0, walked: 1
  }

end
