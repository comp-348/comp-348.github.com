(setq org-html-htmlize-output-type 'css)

(defvar comp-348-build-root
  `("comp-348.github.io:root"
    :base-directory ,default-directory ; Emacs current file directory
    :publishing-directory ,(concat default-directory "/docs")
    :section-numbers nil
    :table-of-contents nil
    :publishing-function org-html-publish-to-html))

(defvar comp-348-build-assets 
  `("comp-348.github.io:assets"
    :base-directory ,(concat default-directory "/assets")
    :publishing-directory ,(concat default-directory "/docs/assets")
    :base-extension "css\\|el\\|js\\|jpg\\|gif\\|png"
    :publishing-function org-publish-attachment))

(add-to-list 'org-publish-project-alist comp-348-build-root)
(add-to-list 'org-publish-project-alist comp-348-build-assets)
(add-to-list 'org-publish-project-alist
             '("comp-348.github.io"
               :components ("comp-348.github.io:root"
                            "comp-348.github.io:assets")))
