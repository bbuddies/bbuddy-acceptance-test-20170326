require_relative 'page_base'

class LoginPage < PageBase

  def marked
    'Login'
  end

  def login(user)
    clear_then_enter_text('Username', user.email)
    clear_then_enter_text('Password', user.password)
    touch('Login')
  end

end