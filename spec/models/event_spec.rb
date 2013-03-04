# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  user_id     :integer
#  description :string(255)
#  venue       :string(255)
#  start_date  :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  end_date    :datetime
#

require 'spec_helper'

describe Event do
  pending "add some examples to (or delete) #{__FILE__}"
end
