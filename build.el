;;; build.el --- Build system for comp-348 website
;;; Commentary:
;; This is the build system for the COMP-348 website.
;;
;; While not strictly necessary, each subdirectory that we want to be building
;; has it's own variable dedicated to it. The variables are an association list
;; composed of the options for how to build that directory.
;;
;; `:base-directory' is the directory to be build
;; `:publishing-directory' is the directory for build to be output to
;; `:section-numbers' Whether or not the headers are numbers
;; `:table-of-contents' Is the table of contents should be included in the output
;; `:publishing-function' The Elisp function to be called to publish the build
;; `:base-extension' The extensions for the files to be published
;; `:components' A list of all the components belonging to a single build
;;
;;; Code:

(setq org-html-htmlize-output-type 'css)

(defvar comp-348-build-root
  `("comp-348.github.io:root"
    :base-directory ,default-directory ; Emacs current file directory
    :publishing-directory ,(concat default-directory "/docs")
    :section-numbers nil
    :table-of-contents nil
    :publishing-function org-html-publish-to-html))

(defvar comp-348-build-examples
  `("comp-348.github.io:examples"
    :base-directory ,(concat default-directory "/exercises") ; Emacs current file directory
    :publishing-directory ,(concat default-directory "/docs/exercises")
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
(add-to-list 'org-publish-project-alist comp-348-build-examples)
(add-to-list 'org-publish-project-alist
             '("comp-348.github.io"
               :components ("comp-348.github.io:root"
                            "comp-348.github.io:examples"
                            "comp-348.github.io:assets")))

(provide 'build)

;;; build.el ends here
