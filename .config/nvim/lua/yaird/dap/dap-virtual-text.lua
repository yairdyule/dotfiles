local status_ok, virt_text = pcall(require, "nvim-dap-virtual-text")

if not status_ok then
	print("dap virtual text not found")
	return
end

virt_text.setup()
