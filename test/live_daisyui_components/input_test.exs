defmodule LiveDaisyuiComponents.InputTest do
  use ExUnit.Case

  import Phoenix.Component
  import Phoenix.LiveViewTest
  import LiveDaisyuiComponents.Input

  test "checkbox input" do
    assigns = %{}

    checkbox_input =
      rendered_to_string(~H"""
      <.input type="checkbox" color="primary" size="xs" value="false" />
      """)

    assert checkbox_input =~
             ~s(<input type="checkbox" value="false" class="checkbox checkbox-primary checkbox-xs">)
  end

  test "select input" do
    assigns = %{}

    select_input =
      rendered_to_string(~H"""
      <.input type="select" color="primary" size="xs">
        <option selected value="admin">admin</option>
      </.input>
      """)

    assert select_input =~ ~s(<select class="select select-primary select-xs">)
    assert select_input =~ ~s(<option selected value="admin">admin</option>)
  end

  test "textarea input" do
    assigns = %{}

    textarea_input =
      rendered_to_string(~H"""
      <.input type="textarea" color="primary" size="xs" value="text textarea" />
      """)

    assert textarea_input =~ ~s(<textarea class="textarea textarea-primary textarea-xs">)
    assert textarea_input =~ ~s(text textarea)
  end

  test "text input" do
    assigns = %{}

    text_input =
      rendered_to_string(~H"""
      <.input type="text" color="primary" size="xs" value="text input" />
      """)

    assert text_input =~
             ~s(<input type="text" class="input input-primary input-xs" value="text input">)
  end

  test "generic input" do
    assigns = %{}

    text_input =
      rendered_to_string(~H"""
      <.input type="password" color="primary" size="xs" value="my password" />
      """)

    assert text_input =~
             ~s(<input type="password" class="input input-primary input-xs" value="my password">)
  end
end
