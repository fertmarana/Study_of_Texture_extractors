classdef LBPProperties
    properties
        Path 
        arrayLBP
        distance
    end
     methods
         function arrayFeatures = extractFeatures(I)
             arrayFeatures = calculaLBP(I)
         end
          function obj = setPath(obj, adressPath)
            obj.Path = adressPath;
        end
        function obj = setLBPProperties(obj,vector)
          obj.CoMatrixProperties = vector
           
        end
        function a = setarrayLBP(obj)
            a = obj.distance(obj);
        end
     end
end