;; 01

(str "Hello Pelé, king of football." "Olá Mark, king of ZapZap.")
(vector 1 2 3)
(list 1 (+ 1 1) 3)
(hash-map :Un "pasito" :pa "'alante María")
(hash-set "Nick" "La" "La" "Land")

;; 02

(defn add100
  "Adds 100. Holy shit!"
  [x]
  (+ 100 x))

;; 03

(defn dec-maker
  "Makes a sub-by-xer."
  [x]
  #(- % x))

(def dec6 (dec-maker 6))
(dec6 10)

;; 04

(defn mapset
  "Like map, but returns a set."
  [fn x]
  (map fn (hash-set x)))

;; 05

(defn match-fkn-aliens
  "Like that symmetrizer but this time
  for 5-limbed aliens."
  [part]
  (loop [5limbs ["right-" "rear-" "front-" "Kanye-"]
         [& rest] 5limbs]
    (recur rest
           {:name
            (clojure.string/replace
             (:name part) #"^left-" (first 5limbs))
            :size (:size part)})))

;; 06

