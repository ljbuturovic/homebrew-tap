class LlmModels < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to list available LLM models from various providers"
  homepage "https://github.com/ljbuturovic/llm-models"
  url "https://files.pythonhosted.org/packages/89/f5/04191b54bb1b692b196d34b17cf2dce6c4059dae889e903df39c02c21280/llm_models-0.1.0.tar.gz"
  sha256 "1265d8933231f66fee79fb1c67a1a14e6f0ee5b8af59cfa0b3317535f824fa50"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/llm-models", "--help"
  end
end

