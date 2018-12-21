class Api::V1::AssignmentController < ApplicationController
            def idex
                @assignments = Assignment.all
            end

end
