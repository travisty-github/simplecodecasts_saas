module UsersHelper

    # Show the approrpiate icon based on job title
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

    # Show a label if the user has a pro account (plan_id 2)
    def pro_label(user)
      if user.plan_id == 2
        return "<span class='label label-warning'>PRO</span>".html_safe
      else
        return
      end
    end

end
