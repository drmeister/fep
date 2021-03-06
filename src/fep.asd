(in-package :asdf-user)

(defsystem "fep"
  :description "FEP setup code"
  :version "0.0.1"
  :author "Christian Schafmeister <chris.schaf@verizon.net>, Nagai Shiho"
  :licence "Private"
  :depends-on ( :cl-markup
                :cando
                :charges
                :leap
                :amber
                :alexandria
                :cl-jupyter
                (:version :esrap "0.15")
                :parser.common-rules
                :PARSER.COMMON-RULES.OPERATORS
                :architecture.builder-protocol
                :cl-ppcre)
  :serial t
;;;  :build-operation asdf:monolithic-compile-bundle-op
;;;  :build-pathname #P"/tmp/fep.fasb"
  :components
  ((:file "packages")
   (:file "jsme")
   (:file "graph2")
   (:file "fep-version")
   (:file "fep")
   (:file "script")
   (:file "ti")
   (:file "graphviz")
   ))

#+(or)
(defsystem "fep/build"
  :description "FEP build code"
  :version "0.0.1"
  :author "Christian Schafmeister <chris.schaf@verizon.net>, Nagai Shiho"
  :licence "Private"
  :depends-on (:fep)
  :serial t
  :build-operation asdf:monolithic-compile-bundle-op
  :build-pathname #P"/tmp/fep.fasb")
