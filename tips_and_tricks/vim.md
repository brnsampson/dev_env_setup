# Loops in Macros

Sometimes you really have a situation where being able to loop over a macro with a different input would be great.

One such situation is if you have a template that you need to duplicate many times with a different value templated in. While in NeoVim you could theoratically make a lua function for this and bind it to a user defined command, that requires thinking about it in advance and typically is too much work for a one-off.

Luckily, what vim IS great at is formatting and manipulting text, and we have access to a perfectly servicable scripting system in the shell.

First, make a shell array of the values you want to loop over and save it to a register. Say we have the following list:

"sumneko_lua", "rust_analyzer", "awk_ls", "bashls", "dotls", "dockerls", "gopls", "graphql", "remarkls", "pyright", "solargraph", "terraformls", "vimls"

And say we want to create a block like this for each of those values:

require('lspconfig')['~SERVER~'].setup {
  capabilities = capabilities
}

Well, manually creating those blocks would be a pain! We could manually create the blocks then use a search and replace to help a little bit, but that's still a lot of work for something that should just be a for-loop. First let's use the normal vim magic to easily transform the list into something a bash/zsh for loop would work on like this:

sumneko_lua rust_analyzer awk_ls bashls dotls dockerls gopls graphql remarkls pyright solargraph terraformls vimls

We also need to make sure whatever template block we want to use won't break. The main issue I have seen so far is that the vim carrage returns / newlines are not compatable with the shell, so just highlight the template block in visual mode and give it a quick :s/\n/\\n/g to convert all the newlines to literal "\n" characters. This means going from something like this:

require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
  capabilities = capabilities
}

To this:

require('lspconfig')['~SERVER~'].setup {\n  capabilities = capabilities\n}\n

NOTE: be careful with your quotation marks! If you mix single and double quotes you will make it hard on yourself when you need to write the echo out below.

We then can yank the list into register a with " + a + yy (There are no literal +'s, you would just type "ayy on the keyboard), and the actual template block into register b by highlighting it in visual mode and typing " + b + y

A shell command can be executed in vim by entering command mode with ":", then prepending the shell command with "!". We can also paste in the contents of a register by pressing <ctrl+r><register name>. In our case, we can loop over our array and echo each item to test as follows:

:!for server in <ctrl-r>a; do echo $server; done

The <ctrl-r>a keystrokes will expand to your entire array. At this point, we just need to echo the contents of our register b into sed, and we can get the output we want:

:!for server in <ctrl-r>a; do echo '<ctrl-r>b' | sed "s/~SERVER~/$server/"; done

This should give us the output we want, but it's all in this temporary command buffer that disappears when we hit enter. What a bummer! But luckily we can have vim place the output of the command into our document at the cursor location by starting the command with an "r". This means we would be typing out the literal keystrokes:


:r !for server in <ctrl-r>a; do echo '<ctrl-r>b' | sed "s/~SERVER~/$server/"; done

But really I would just enter command mode with ":" then press up, press <Ctrl-B> to go to the start of the line, and add the "r". Easy! Well, it's easy to do. Kind of tricky to describe honestly. Hopefully this made sense and was helpful.
