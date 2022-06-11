{-# LANGUAGE DataKinds #-}

module Unbalanced where

import Data.Proxy (Proxy (Proxy))
import Data.Tree.AVL.FullExtern (mkAVL)
import Data.Tree.ITree (ITree (EmptyITree, ForkITree))
import Data.Tree.Node (mkNode)

-- | Proxies for the node keys
p0 = Proxy :: Proxy 0
p1 = Proxy :: Proxy 1
p2 = Proxy :: Proxy 2

tree =
  ForkITree
    EmptyITree
    (mkNode p0 'a')
    (ForkITree EmptyITree (mkNode p1 True) (ForkITree EmptyITree (mkNode p2 ['a', 'b']) EmptyITree))

nonAVL = mkAVL tree
