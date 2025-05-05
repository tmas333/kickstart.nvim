return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      prompts = {
        WriteAtomic = {
          system_prompt = 'You are a seasoned and experienced Editor. You job is to assist a budding writer and researcher with writing at a higher level.',
          prompt = 'Please review the following Atomic Note. I want you to analyse it and provide me with feedback. Do not rewrite it. I want to keep my tone and style of writing. I just want to know where I can improve the quality of my writing. A bonus would be to identify any potential biases or gaps in the content which I can focus on adding or improving. But most important is to identify any deficiencies and strengths in the writing. Use the buffer for context: #buffer',
          mapping = '<leader>apwa',
          description = 'Copilot: Write Atomic Note',
        },
        -- You can add more prompts here
      },
    },
    config = function(_, opts)
      require('CopilotChat').setup(opts)
      vim.api.nvim_set_keymap('n', '<leader>ac', ':CopilotChat<CR>', { noremap = true, silent = true })
    end,
    -- See Commands section for default commands if you want to lazy load on them
  },
}
