class MatchingController < ApplicationController
  def new
      @matching = Matching.new
  end
  
  def create
    @matching = Matching.new(matching_params)

#     respond_to do |format|
#     #   if @client.save
#     #     format.html { redirect_to @client, notice: '店舗登録を完了しました。' }
#     #     format.json { render :show, status: :created, location: @client }
#     #   else
#     #     format.html { render :new }
#     #     format.json { render json: @client.errors, status: :unprocessable_entity }
#     #   end
#     end
  end
end
