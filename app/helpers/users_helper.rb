module UsersHelper
    
    def job_title_icon(user)
        case user.profile.job_title
            when "Developer"
                "<i class='fa fa-code'></i>".html_safe 
            when "Entrepreneur"
                "<i class='fa fa-lightbulb-o'></i>".html_safe 
            when "Investor"
                "<i class='fa fa-usd'></i>".html_safe 
        else
            return
        end
    end
    
end