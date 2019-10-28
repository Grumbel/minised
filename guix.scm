;; minised - Minimal sed replacement
;; Copyright (C) 2019 Ingo Ruhnke <grumbel@gmail.com>
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system python)
             (guix licenses)
             (gnu packages python))

(define %source-dir (dirname (current-filename)))

(define-public minised
  (package
    (name "minised")
    (version "0.3.1")
    (source
     (local-file %source-dir
                 #:recursive? #t
                 #:select? (git-predicate %source-dir)))
    (build-system python-build-system)
    (inputs
     `(("python" ,python)
       ("python:tk" ,python "tk")))
    (home-page "https://gitlab.com/grumbel/minised")
    (synopsis "Search&replace across multiple files")
    (description "A command line tool that allows search&replace
across multiple files, similar to the Unix tools `find` and `sed`.")
    (license gpl3+)))

minised

;; EOF ;;
