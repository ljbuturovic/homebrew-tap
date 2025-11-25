class LlmModels < Formula
  include Language::Python::Virtualenv

  desc "CLI tool to list available LLM models from various providers"
  homepage "https://github.com/ljbuturovic/llm-models"
  url "https://files.pythonhosted.org/packages/.../llm-models-0.1.0.tar.gz"
  sha256 "YOUR_SHA256_HERE"

  depends_on "python@3.9"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/llm-models", "--help"
  end
end
