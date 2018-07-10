classdef ImagePropertiesCoMatrix
    properties
        Path
        CoMatrixProperties = [ Contrast, Correlation, Homogeneity, Energy]
        
    end
    methods
        function obj = set.Path(obj, adressPath)
            obj.Path = adressPath;
        end
        function obj = set.CoMatrixProperties(obj, vector)
            if size(vector,4)==1
            for i = 0: 4
                obj.CoMatrixProperties(i) = vector(i);
            end
            else
                error('Invalid Vector');
            end
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