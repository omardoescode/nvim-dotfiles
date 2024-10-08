return {
	"Civitasv/cmake-tools.nvim",
	config = function()
		require("cmake-tools").setup({
			cmake_soft_link_compile_commands = true,
			cmake_regenerate_on_save = true,
			cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
			cmake_build_directory = "build/${variant:buildType}",
		})
	end,
}
