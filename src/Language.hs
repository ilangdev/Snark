{-# LANGUAGE DeriveFunctor #-}

module Language where


-- Type for free monad
data Free f a = Pure | Free (f (Free f a))  

data CLang t a = Add t t (t -> a)
               | Mul t t (t -> a)
               | Div t t (t -> a)
               | Inptut (t -> a)
               | Output t a
  deriving (Functor)
  



  
