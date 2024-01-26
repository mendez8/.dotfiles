local config = {
  cmd = {'jdtls', 
        "--jvm-arg=" .. string.format("-javaagent:%s", vim.fn.expand("$HOME/workplace/lib/lombok.jar"))},
  root_dir = vim.fs.dirname(vim.fs.find({'gradlew','.git','mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
