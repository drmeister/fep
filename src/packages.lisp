;;;
;;;    File: packages.lisp
;;;

;; Open Source License
;; Copyright (c) 2016, Christian E. Schafmeister
;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.
;;  
;; This is an open source license for the CANDO software from Temple University, but it is not the only one. Contact Temple University at mailto:techtransfer@temple.edu if you would like a different license.

;; -^-
(cl:in-package #:common-lisp-user)

(defpackage #:jsme
  (:use #:common-lisp)
  (:export
   #:*sketch*
   #:sketch
   #:load-sketch
   #:save-sketch
   #:build-atom-vector
   #:parse-groups
   #:save-graph
   ))

(defpackage #:graph
  (:use #:common-lisp)
  (:export
   #:*graph-form*
   ))

(defpackage #:fep
  (:use #:common-lisp)
  (:shadowing-import-from :chem "ATOM")
  (:export
   #:job
   #:load-chem-draw-fep
   #:calculation
   #:jobs
   #:top-directory
   #:generate-files
   #:stage
   #:receptors
   #:version
   #:ligands
   #:setup-ligands
   #:argument
   #:node
   #:option
   #:name
   #:extension
   #:morph-string
   #:node-pathname
   #:morph
   #:stages
   #:windows
   #:inputs
   #:outputs
   #:users
   #:definers
   #:script
   #:drawing
   #:molecule
   #:fep-morph
   #:node-file
   #:morph-side-file
   #:load-feps
   #:save-feps
   #:solvent-box
   #:solvent-buffer
   #:solvent-closeness
   #:solvent-residue-name
   #:source
   #:target
   #:morphs
   #:nodes
   #:setup-feps
   #:build-feps
   #:layout-ligands
   #:layout-2
   #:build-ligands
   #:pose-ligands
   #:pose-ligands-using-pattern
   #:setup-am1-calculations
   #:check-am1-calculations
   #:read-am1-charges
   #:calculate-am1-bcc-charges
   #:complex
   #:sqm-job-mixin
   #:amber-job-mixin
   #:cpptraj-job-mixin
   #:pattern-atoms
   #:average-core-atom-positions))


(defpackage #:fepdot
  (:use #:common-lisp)
  (:export
   #:draw-graph-stream))
