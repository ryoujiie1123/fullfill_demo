class Client < ApplicationRecord
    validates :email, {uniqueness: { message: '既に登録されているメールアドレスです。' }, presence: { message: 'メールアドレスが空になっています' }}
    validates :name, {uniqueness: { message: '既に登録されている店舗名です。' }, presence: { message: '店舗名が入っていません。' }}
    validates :phone_number, {uniqueness: { message: '既に登録されている電話番号です。' }, presence: { message: '電話番号が入っていません。' }}
end
