
(setq org-publish-gsk "~/src/web/gsk/publish/")
(add-to-list 'org-publish-project-alist
             `("gsk-org"
               :base-directory "~/src/web/gsk/"
               :recursive t
               :base-extension "org"
               :publishing-directory ,org-publish-gsk
               :publishing-function org-publish-org-to-html
               :jekyll-sanitize-permalinks t
               :section-numbers nil
               :headline-levels 4
               :table-of-contents nil
               :auto-index nil
               :auto-preamble nil
               :body-only t
               :auto-postamble nil))

(add-to-list 'org-publish-project-alist
             `("gsk-img"
               :base-directory "~/src/web/gsk/"
               :recursive t
               :exclude "^publish"
               :base-extension "jpg\\|gif\\|png"
               :publishing-directory ,org-publish-gsk
               :publishing-function org-publish-attachment))

(add-to-list 'org-publish-project-alist
             '("gsk" :components ("gsk-org"
                                  "gsk-img")))

