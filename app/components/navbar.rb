class Components::Navbar < Components::Base
  ITEM_CLASS = "text-black/75 dark:text-white/75 grow basis-0 justify-center text-center py-2"

  def view_template(&block)
    nav class: "container bg-light dark:bg-dark fixed md:sticky bottom-0 w-full h-auto " do
      div class: "flex-nowrap flex items-center" do
        a href: root_path, class: "hidden md:block p-2 ps-0 pe-12" do
          Heading(level: 1) { "Brand" }
        end

        div class: "flex wrap justify-between w-full" do
          yield(self) if block_given?

          ThemeToggle(class: [ ITEM_CLASS, "cursor-pointer" ]) do |toggle|
            SetLightMode do
              element("Theme", icon: "bi bi-brightness-high")
            end

            SetDarkMode do
              element("Theme", icon: "bi bi-moon")
            end
          end
        end
      end
    end
  end

  def item(text, href, icon:)
    a(class: ITEM_CLASS, href:) do
      element(text, icon:)
    end
  end

  private

  def element(text, icon:)
    div do
      div { i(class: "text-2xl relative #{icon}") }
      div(class: "text-sm") do
        Text { text }
      end
    end
  end
end
