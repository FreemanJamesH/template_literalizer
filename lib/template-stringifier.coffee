{CompositeDisposable} = require 'atom'

module.exports = TemplateLiteralizer =
  subscriptions: null

  activate: (state) ->
    @subscriptions = new CompositeDisposable
    @subscriptions.add atom.commands.add 'atom-workspace', 'template-literalizer:convert': => @convert()

  deactivate: ->
    @subscriptions.dispose()

  convert: ->
    if editor = atom.workspace.getActiveTextEditor()
      selection = editor.getSelectedText()
      console.log selection
      editor.insertText('\`I\'m James\`')
