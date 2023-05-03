local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local config = {
    cmd = {
      'java',
      '-Declipse.application=org.eclipse.jdt.ls.core.id1',
      '-Dosgi.bundles.defaultStartLevel=4',
      '-Declipse.product=org.eclipse.jdt.ls.core.product',
      '-Dlog.level=ALL',
      '-Xmx1G',
      --add-modules=ALL-SYSTEM \
      --add-opens java.base/java.util=ALL-UNNAMED \
      --add-opens java.base/java.lang=ALL-UNNAMED \
      '-jar',  '/Users/joaquinmellado/Downloads/jdt-language-server-1.19.0-202301090450/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
      '-configuration', '/Users/joaquinmellado/Downloads/jdt-language-server-1.19.0-202301090450/plugins/org.eclipse.equinox.launcher_1.6.400.v2/config_mac',
      '-data', vim.fn.expand('~/.cache/jdtls-workspace') .. workspace_dir,
    },
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)

local opts = { noremap=true, silent=true }
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>lA', '<cmd>lua require(\'jdtls\').code_action()<CR>', { silent = true })
