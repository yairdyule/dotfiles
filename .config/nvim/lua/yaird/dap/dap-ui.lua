local status_ok, ui = pcall(require, "dapui")

if not status_ok then
	print("DAP UI not found")
	return
end

ui.setup()
