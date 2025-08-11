return {
  'robitx/gp.nvim',
  config = function()
    require('gp').setup {
      openai_api_key = { 'bash', '-c', 'cat ~/.openai' },
      default_chat_agent = 'ChatGPT4o-mini',
      default_command_agent = 'ChatGPT4o-mini',
      providers = {
        anthropic = {
          disable = false,
          endpoint = 'https://api.anthropic.com/v1/messages',
          secret = { 'bash', '-c', 'cat ~/.anthropic' },
        },
      },
    }
  end,
}
