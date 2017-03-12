class AccountsPage < PageBase

  def go_to_add_account
    touch_navigation_button(0)
    AddAccountPage.open
  end

  def go_to_edit_account(account)
    wait_for_text_and_then_touch("#{account.name}")
    EditAccountPage.open
  end

end