class Components::Flash < Components::Base
  def initialize(flash)
    @flash = flash
  end

  def view_template
    div(**default_attrs) do
      @flash[:flash].each do |type, message|
        next if message.blank?

        Alert(
          variant: variant(type),
          class: "relative transition transform duration-1000 hidden",
          data: {
            controller: "notification",
            notification_delay_value: 40000,
            transition_enter_from: "opacity-0 translate-x-6",
            transition_enter_to: "opacity-100 translate-x-0",
            transition_leave_from: "opacity-100 translate-x-0",
            transition_leave_to: "opacity-0 translate-x-6"
          }
        ) do
          AlertTitle { title(type) }
          AlertDescription { message }
          div(class: "fixed top-2 right-2") do
            button(class: "cursor-pointer", aria: { label: "Close" }, data: { action: "notification#hide" }) do
              i(class: "bi bi-x-lg")
            end
          end
        end
      end
    end
  end

  private

  def default_attrs
    { class: "flex border-0 items-end justify-end p-4 pb-12 fixed bottom-20 md:bottom-0 right-0 w-auto z-20" }
  end


  def variant(type)
   { notice: :warning, alert: :destructive, success: :success }[type.to_sym]
  end

  def title(type)
    { notice: "Let's be clear", alert: "Oopsie daisy!", success: "Nice!" }[type.to_sym]
  end
end
