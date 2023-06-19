(module core
  (:import
    [dom :from piglet:dom]
    [react :from "react"]
    [react-dom :from "react-dom"]
    [solid :from "solid-js"]
    [solid-web :from "solid-js/web"]
    ))

(println "Hello world from console")

(def app (dom:find-by-id js:document "app"))
(println app)

;; (find-module react)

(def r-hello
  (react:createElement "div" {} "Hello world from react"))
(react-dom:render r-hello app)

(defn HelloWorld []
  (fn []
    "Hello World from Solid"))

(solid-web:render
  (fn [] (solid:createComponent HelloWorld #js {}))
  (dom:find-by-id js:document "solid-app"))
