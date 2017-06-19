;;; packages.el --- org-jira Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Jean-Francois Im <jeanfrancois.im@gmail.com>
;; URL: https://github.com/jfim/org-jira
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar org-jira-packages '(org
                            (org-jira :location elpa)))

(defvar org-jira-excluded-packages '() "List of packages to exclude.")

(defun org-jira/init-org-jira ()
  (use-package org-jira
    :defer t
    :config
    (progn
      (spacemacs/declare-prefix-for-mode 'org-mode "mj" "jira")
      (spacemacs/declare-prefix-for-mode 'org-mode "mjp" "projects")
      (spacemacs/declare-prefix-for-mode 'org-mode "mji" "issues")
      (spacemacs/declare-prefix-for-mode 'org-mode "mjs" "subtasks")
      (spacemacs/declare-prefix-for-mode 'org-mode "mjc" "comments")
      (spacemacs/declare-prefix-for-mode 'org-mode "mjt" "todos")
      (spacemacs/set-leader-keys-for-major-mode 'org-mode
        "jpg" 'org-jira-get-projects
        "jib" 'org-jira-browse-issue
        "jig" 'org-jira-get-issues
        "jih" 'org-jira-get-issues-headonly
        "jif" 'org-jira-get-issues-from-filter-headonly
        "jiF" 'org-jira-get-issues-from-filter
        "jiu" 'org-jira-update-issue
        "jiw" 'org-jira-progress-issue
        "jir" 'org-jira-refresh-issue
        "jic" 'org-jira-create-issue
        "jik" 'org-jira-copy-current-issue-key
        "jsc" 'org-jira-create-subtask
        "jsg" 'org-jira-get-subtasks
        "jcu" 'org-jira-update-comment
        "jtj" 'org-jira-todo-to-jira)
      )
    ))
