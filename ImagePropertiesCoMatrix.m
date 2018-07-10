classdef ImagePropertiesCoMatrix
    properties
        Path 
        CoMatrixProperties %Vector[ Contrast, Correlation, Homogeneity, Energy]
        
    end
    methods
        function obj = setPath(obj, adressPath)
            obj.Path = adressPath;
        end
        function obj = setCoMatrixProperties(obj,vector)
          obj.CoMatrixProperties = vector
           
        end
        function a = getConstrast(obj)
            a = obj.CoMatrixProperties(0);
        end
         function a = getCorrelation(obj)
            a = obj.CoMatrixProperties(1);
         end
         function a = getHomogeneity(obj)
            a = obj.CoMatrixProperties(2);
         end
         function a = getEnergy(obj)
            a = obj.CoMatrixProperties(3);
         end
    end    
end