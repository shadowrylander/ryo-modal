;;; sorrow-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "naked" "naked.el" (0 0 0 0))
;;; Generated autoloads from naked.el

(autoload 'naked-read-kbd-macro "naked" "\
Read the region as a keyboard macro definition.
Like `read-kbd-macro', but does not use angle brackets, by default.

With a prefix arg use angle brackets, exactly like `read-kbd-macro'.
That is, with non-nil arg ANGLES, expect key descriptions to use angle
brackets (<...>).  Otherwise, expect key descriptions not to use angle
brackets.  For example:

 (naked-read-kbd-macro  \"mode-line\"  t)   returns [mode-line]
 (naked-read-kbd-macro \"<mode-line>\" t t) returns [mode-line]

\(fn START &optional END ANGLES)" t nil)

(register-definition-prefixes "naked" '("naked"))

;;;***

;;;### (autoloads nil "sorrow" "sorrow.el" (0 0 0 0))
;;; Generated autoloads from sorrow.el

(autoload 'sorrow-key "sorrow" "\
Bind KEY to TARGET in `sorrow-mode'.

TARGET can be one of:

naked-string Pressing KEY will simulate TARGET as a keypress.
command      Calls TARGET interactively.
list         Each element of TARGET is sent to `sorrow-key' again, with
             KEY as a prefix key.  ARGS are copied, except for :name.
             :name will be used by `which-key' (if installed) to name
             the prefix key, if `which-key-enable-extended-define-key'
             is t.
keymap       Similarly to list, each keybinding of provided keymap
             is sent to `sorrow-key' again with all keyword arguments applied.
             It also works with keymap that bind other keymaps like `ctl-x-map'.
:hydra       If you have hydra installed, a new hydra will be created and
             bound to KEY.  The first element of ARGS should be a list
             containing the arguments sent to `defhydra'.
:hydra+      If you have hydra installed, an old hydra will be added to.
             The first element of ARGS should be a list containing the
             arguments sent to `defhydra+'.
:deino       If you have deino installed, a new deino will be created and
             bound to KEY.  The first element of ARGS should be a list
             containing the arguments sent to `defdeino'.
:deino+      If you have deino installed, an old deino will be added to.
             The first element of ARGS should be a list containing the
             arguments sent to `defdeino+'.

ARGS should be of the form [:keyword option]... if TARGET is a naked-string
or a command.  The following keywords exist:

:name      A string, naming the binding.  If ommited get name from TARGET.
:exit      If t then exit `sorrow-mode' after the command.
:read      If t then prompt for a string to insert after the command.
:mode      If set to a major or minor mode symbol (e.g. 'org-mode) the key will
           only be bound in that mode.
:norepeat  If t then do not become a target of `sorrow-repeat'.
:then      Can be a quoted list of additional commands that will be run after
           the TARGET.  These will not be shown in the name of the binding.
           (use :name to give it a nickname).
:first     Similar to :then, but is run before the TARGET.
:mc-all    If t the binding's command will be added to `mc/cmds-to-run-for-all'.
           If 0 the binding's command will be added to `mc/cmds-to-run-once'.

If any ARGS other han :mode, :norepeat or :mc-all are given, a
new command named sorrow:<hash>:<name> will be created. This is to
make sure the name of the created command is unique.

\(fn KEY TARGET &rest ARGS)" nil nil)

(autoload 'sorrow-keys "sorrow" "\
Bind several keys in `sorrow-mode'.
Typically each element in ARGS should be of the form (key target [keywords]).
The target should not be quoted.
The first argument may be a list of keywords; they're applied to all keys:

  (:exit t :then '(kill-region)).

See `sorrow-key' for more information.

\(fn &rest ARGS)" nil t)

(autoload 'sorrow-major-mode-keys "sorrow" "\
Bind several keys in `sorrow-mode', but only if major mode is MODE.
ARGS is the same as `sorrow-keys'.

\(fn MODE &rest ARGS)" nil t)

(autoload 'sorrow-command-then-sorrow "sorrow" "\
Define key BINDING to COMMAND in KEYMAP. Then activate `sorrow-mode'.
If COMMAND is excluded, use what is bound to right now in KEYMAP.
If KEYMAP is excluded, use `current-global-map'.

\(fn BINDING &optional COMMAND KEYMAP)" nil nil)

(autoload 'sorrow-set-key "sorrow" "\
Give KEY a binding as COMMAND in `sorrow-mode-map'.

This function is meant to be used interactively, if you want to
temporarily bind a key in sorrow.

See `global-set-key' for more info.

\(fn KEY COMMAND)" t nil)

(autoload 'sorrow-unset-key "sorrow" "\
Remove `sorrow-mode-map' binding of KEY.
KEY is a string or vector representing a sequence of keystrokes.

This function is meant to unbind keys set with `sorrow-set-key'.

\(fn KEY)" t nil)

(autoload 'sorrow-bindings "sorrow" "\
Display a buffer of all bindings in `sorrow-mode'." t nil)

(autoload 'sorrow-mode "sorrow" "\
Toggle `sorrow-mode'.

This is a minor mode.  If called interactively, toggle the
`sorrow mode' mode.  If the prefix argument is positive, enable
the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `sorrow-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "sorrow" '("mc/cmds-to-run-" "sorrow-"))

;;;***

;;;### (autoloads nil nil ("sorrow-tests.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; sorrow-autoloads.el ends here
