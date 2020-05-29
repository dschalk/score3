module Paths_score3 (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,2,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/home/z/score3/.stack-work/install/x86_64-linux-tinfo6/59bc4ff2d1edca160d803e6480473bc8760e483efc205237fbe657e371413eeb/7.10.2/bin"
libdir     = "/home/z/score3/.stack-work/install/x86_64-linux-tinfo6/59bc4ff2d1edca160d803e6480473bc8760e483efc205237fbe657e371413eeb/7.10.2/lib/x86_64-linux-ghc-7.10.2/score3-0.2.0.0-4kUMGWC6ejH2eyLbcFFdTx"
datadir    = "/home/z/score3/.stack-work/install/x86_64-linux-tinfo6/59bc4ff2d1edca160d803e6480473bc8760e483efc205237fbe657e371413eeb/7.10.2/share/x86_64-linux-ghc-7.10.2/score3-0.2.0.0"
libexecdir = "/home/z/score3/.stack-work/install/x86_64-linux-tinfo6/59bc4ff2d1edca160d803e6480473bc8760e483efc205237fbe657e371413eeb/7.10.2/libexec"
sysconfdir = "/home/z/score3/.stack-work/install/x86_64-linux-tinfo6/59bc4ff2d1edca160d803e6480473bc8760e483efc205237fbe657e371413eeb/7.10.2/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "score3_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "score3_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "score3_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "score3_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "score3_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
