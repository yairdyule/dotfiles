local status_ok, dap = pcall(require, "dap")
if not status_ok then
	return
end

dap.adapters.node2 = {
	type = "executable",
	command = "node",
	args = {
    "~/.local/share/nvim/dapinstall/jsnode/vscode-node-debug2/out/src/nodeDebug.js"
	},
}

dap.configurations.javascript = {
	{
		name = "Launch",
		type = "node2",
		request = "launch",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		console = "integratedTerminal",
	},
	{
		name = "Attach to process",
		type = "node2",
		request = "attach",
		processId = require("dap.utils").pick_process,
	},
}
dap.configurations.typescript = {
  {
    name = 'Run',
    type = 'node2',
    request = 'launch',
    program = '${file}',
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = 'inspector',
    console = 'integratedTerminal',
    outFiles = {"${workspaceFolder}/build/**/*.js"},
  },
  {
    name = 'Attach to process',
    type = 'node2',
    request = 'attach',
    processId = require'dap.utils'.pick_process,
  },
}
