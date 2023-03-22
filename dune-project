(lang dune 3.7)
(using ctypes 0.1)
(using cinaps 1.2)

(name smtcaml)

(generate_opam_files true)

(source
 (github username/reponame))

(authors "Author Name")

(maintainers "Maintainer Name")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name smtcaml)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune)
 (allow_empty true)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
