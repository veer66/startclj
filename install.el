(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(defconst pkg-names '(cider
		      paredit))

(dolist (pkg-name pkg-names)
    (package-install pkg-name))
