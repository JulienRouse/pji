{-# LANGUAGE ForeignFunctionInterface #-}

import Foreign hiding (void)
import Foreign.C.Types
import Control.Monad

foreign import ccall "math.h sin" c_sin :: CDouble -> CDouble
fastsin :: Double -> Double
fastsin x = realToFrac $  c_sin  $ realToFrac x 



foreign import ccall "myprintf" c_myprintf ::  CDouble -> IO CInt
hprintf :: Double -> IO ()
hprintf x =  void $ c_myprintf $  realToFrac x 
	


main =   hprintf (4/10)
--mapM_ (print . fastsin) [0/10,1/10 .. 10/10]


















