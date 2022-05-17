local saga = require("lspsaga")

saga.init_lsp_saga {
  code_action_prompt = {
    enable=true,
    sign=false,
    virtual_text=true
  }
}
