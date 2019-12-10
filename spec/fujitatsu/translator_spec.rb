RSpec.describe Fujitatsu::Translator do
  it "入力した文字に濁点をつけて返す" do
    expect(Fujitatsu::Translator.shout("どうしてなんだよぉおお！！うわぁぁあああああああああああ")).to eql("ど゛う゛し゛て゛な゛ん゛だ゛よ゛ぉ゛お゛お゛！゛！゛う゛わ゛ぁ゛ぁ゛あ゛あ゛あ゛あ゛あ゛あ゛あ゛あ゛あ゛あ゛あ゛")
  end
end