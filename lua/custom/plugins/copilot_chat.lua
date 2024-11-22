return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'github/copilot.vim' },
      { 'nvim-lua/plenary.nvim' },
    },
    build = 'make tiktoken',
    config = function()
      require('CopilotChat').setup {
        -- Override prompt in Japanese
        prompts = {
          Explain = {
            prompt = '/COPILOT_EXPLAIN カーソル上のコードの説明を段落をつけて書いてください。',
          },
          Review = {
            prompt = '/COPILOT_REVIEW カーソル上のコードをレビューしてください。コードの問題点、改善点、およびその他のコメントを書いてください。',
          },
          Tests = {
            prompt = '/COPILOT_TESTS カーソル上のコードの詳細な単体テスト関数を書いてください。',
          },
          Fix = {
            prompt = '/COPILOT_FIX このコードには問題があります。バグを修正したコードに書き換えてください。',
          },
          Optimize = {
            prompt = '/COPILOT_REFACTOR 選択したコードを最適化し、パフォーマンスと可読性を向上させてください。',
          },
          Docs = {
            prompt = '/COPILOT_REFACTOR 選択したコードのドキュメントを書いてください。ドキュメントをコメントとして追加した元のコードを含むコードブロックで回答してください。使用するプログラミング言語に最も適したドキュメントスタイルを使用してください（例：JavaScriptのJSDoc、Pythonのdocstringsなど）',
          },
          FixDiagnostic = {
            prompt = 'ファイル内の次のような診断上の問題を解決してください：',
            selection = require('CopilotChat.select').diagnostics,
          },
        },
      }
    end,
    opts = {},
  },
}
