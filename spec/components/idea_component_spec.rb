require "rails_helper"

RSpec.describe IdeaComponent, type: :component do
  let(:idea) { Idea.new(name: 'Awesome Idea', description: 'おもしろいことを思いついたよ！', picture: 'awesome.png') }

  subject(:component) { render_inline(described_class.new(idea: idea)) }

  it "アイデアのタイトルを表示する" do
    expect(component.css("h4").to_html).to include idea.name
  end

  it "アイデアのDescriptionを表示する" do
    expect(component.to_html).to include idea.description
  end
end
