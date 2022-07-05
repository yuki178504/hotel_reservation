class Reserve < ApplicationRecord
    belongs_to :register
    belongs_to :user
    validate :start_end_check

    def start_end_check
        errors.add(:end_date, "は開始日より前の日付は登録できません") unless
        self.starte_date < self.end_date
    end
end
