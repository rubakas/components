class Views::Passwords::Edit < Views::Base
  def initialize(token:)
    @token = token
  end

  def view_template
    div(class: "mx-auto md:w-2/3 w-full grid gap-3") do
      Heading(level: 1) { "Forgot your password?" }
      Form(action: password_url(@token), method: :put, class: "w-2/3 space-y-6") do
        FormField do
          FormFieldLabel(for: "password") { "Password" }
          Input(
            type: "password",
            id: "password",
            required: true,
            autocomplete: "new-password",
            placeholder: "Enter new password",
            maxlength: 72
          )
          FormFieldError()
        end

        FormField do
          FormFieldLabel(for: "password_confirmation") { "Password confirmation" }
          Input(
            type: "password",
            id: "password_confirmation",
            required: true,
            autocomplete: "new-password",
            placeholder: "Repeat new password",
            maxlength: 72
          )
          FormFieldError()
        end

        div(class: "col-span-6 sm:flex sm:items-center sm:gap-4") do
          Button(type: "submit") { "Email reset instructions" }
        end
      end
    end
  end
end
