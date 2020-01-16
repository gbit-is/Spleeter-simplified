
import sys 

import warnings
warnings.filterwarnings('ignore')




input = sys.argv[1]
output = sys.argv[2]



from spleeter.separator import Separator
separator = Separator('spleeter:2stems')

separator.separate_to_file(input,output)

