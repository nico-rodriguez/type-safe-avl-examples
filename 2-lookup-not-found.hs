{-# LANGUAGE DataKinds #-}

module LookupNotFound where

import Data.Proxy (Proxy (Proxy))
import Data.Tree.BST.FullExtern (lookup)
import Data.Tree.ITree (ITree (EmptyITree, ForkITree))
import Data.Tree.Node (mkNode)
import Prelude hiding (lookup)

-- | Proxies for the node keys
p0 = Proxy :: Proxy 0
p1 = Proxy :: Proxy 1
p2 = Proxy :: Proxy 2

tree =
  ForkITree
    (ForkITree EmptyITree (mkNode p0 True) EmptyITree)
    (mkNode p1 'a')
    (ForkITree EmptyITree (mkNode p2 ['a', 'b']) EmptyITree)

error = lookup (Proxy :: Proxy 3) tree
