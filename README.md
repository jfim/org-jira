# org-jira Spacemacs layer

This Spacemacs layer allows using Jira from within org-mode. This uses the JIRA REST API; if you need support for the deprecated JIRA SOAP API, check out the soap-api branch.

## Installation

* Clone the git repository somewhere and add it as a private layer in spacemacs

```bash
git clone git@github.com:jfim/org-jira.git
ln -s "`pwd`/org-jira" ~/.emacs.d/private/org-jira
```

* Add the `org-jira` layer to your .spacemacs file
* Add the Jira url to your `.spacemacs` file. For example, if your Jira is installed at https://example:443/secure/Dashboard.jspa

```lisp
(setq jiralib-url "https://example:443")
```

* Configure the directory in which `org-jira` will create org files. You probably want to add it to your agenda files as well, so that org-agenda can show your jira tickets as part of your todo list. `org-jira` will create one file per Jira project in this directory. For example, if you're assigned projects FOO and BAR, it'll create `FOO.org` and `BAR.org` in this directory, each containing the tickets assigned to you.

```lisp
(setq org-jira-working-dir "~/org-jira")
(setq org-agenda-files '("~/org" "~/org-jira"))
```

## Get started

* Open a random org file, it doesn't matter which one.
* Press <kbd>, j i g</kbd> (`'org-jira-get-issues`) to retrieve all Jira tickets assigned to you. It'll ask for a login and password. This will create org files in the `org-jira-working-dir` previously configured.
* Start working on a Jira ticket by opening the relevant org file, moving your cursor onto a Jira ticket and then pressing <kbd>, j i w</kbd> (`'org-jira-progress-issue`)
* Comment on a ticket by adding :

```
** Comment:
This is a comment on this ticket.
``` 

You'll then need to synchronize the comment with <kbd>, j c u</kbd> (`'org-jira-update-comment`)
* You can change the ticket priority by editing the `:priority:` value in the `:PROPERTIES:` drawer and syncing it with <kbd>, j i u</kbd> (`'org-jira-update-issue`)
* To get the latest updates on a ticket, you can refresh it by pressing <kbd>, j i r</kbd> (`'org-jira-refresh-issue`)
* You can also view the current ticket in your browser by pressing <kbd>, j i b</kbd> (`'org-jira-browse-issue`)
* Finally, when you're done with the ticket, you can close it by doing <kbd>, j i w</kbd> (`'org-jira-progress-issue`) and selecting `Close issue`. You may need to hit backspace if the autocompletion suggestion is hiding the close option.

## Usage

When in org-mode:

* <kbd>, j p g</kbd> `'org-jira-get-projects`
* <kbd>, j i b</kbd> `'org-jira-browse-issue`
* <kbd>, j i g</kbd> `'org-jira-get-issues`
* <kbd>, j i h</kbd> `'org-jira-get-issues-headonly`
* <kbd>, j i f</kbd> `'org-jira-get-issues-from-filter-headonly`
* <kbd>, j i F</kbd> `'org-jira-get-issues-from-filter`
* <kbd>, j i u</kbd> `'org-jira-update-issue`
* <kbd>, j i w</kbd> `'org-jira-progress-issue`
* <kbd>, j i r</kbd> `'org-jira-refresh-issue`
* <kbd>, j i c</kbd> `'org-jira-create-issue`
* <kbd>, j i k</kbd> `'org-jira-copy-current-issue-key`
* <kbd>, j s c</kbd> `'org-jira-create-subtask`
* <kbd>, j s g</kbd> `'org-jira-get-subtasks`
* <kbd>, j c u</kbd> `'org-jira-update-comment`
* <kbd>, j t j</kbd> `'org-jira-todo-to-jira`
