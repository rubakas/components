
class Views::Sessions::New < Views::Base
  def initialize(email_address: nil)
    @email_address = email_address
  end

  def view_template
    div(class: "mx-auto md:w-2/3 w-full grid gap-3") do
      Heading(level: 1) { "Sign in" }
      Form(action: session_url, method: :post, class: "sm:w-2/3 space-y-6") do
        FormField do
          FormFieldLabel(for: "email") { "Email" }
          Input(
            type: "email",
            name: "email_address",
            id: "email",
            required: true,
            autofocus: true,
            autocomplete: "username",
            placeholder: "Enter your email address",
            value: @email_address
          )
          FormFieldError()
        end
        FormField do
          FormFieldLabel(for: "password") { "Password" }
          Input(
            type: "password",
            name: "password",
            id: "password",
            required: true,
            autocomplete: "current-password",
            placeholder: "Enter your password",
            maxlength: 72

          )
          FormFieldError()
        end
        div(class: "col-span-6 sm:flex sm:items-center sm:gap-4") do
          Button(type: "submit") { "Sign in" }
          Link(href: new_password_path) { "Forgot password?" }
        end
      end
    end
  end
end
