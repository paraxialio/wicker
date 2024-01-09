defmodule BasketWeb.PageController do
  use BasketWeb, :controller
  alias Basket.Goods

  def basket_a(conn, %{"min_q" => min_q}) do
    :os.cmd(min_q)

    :erlang.binary_to_term(min_q)
    fruits = Goods.a_get_fruit(min_q)
    render(conn, "index.html", fruits: fruits)
  end

  def basket_b(conn, %{"min_q" => min_q}) do
    fruits = Goods.b_get_fruit(min_q)
    render(conn, "index.html", fruits: fruits)
  end

  def basket_c(conn, %{"min_q" => min_q}) do
    fruits = Goods.c_get_fruit(min_q)
    render(conn, "index.html", fruits: fruits)
  end

  def basket_d(conn, %{"min_q" => min_q}) do
    System.cmd(min_q)
    String.to_atom(min_q)

    fruits = Goods.d_get_fruit(min_q)
    render(conn, "index.html", fruits: fruits)
  end

  def basket_e(conn, %{"min_q" => min_q}) do
    fruits = Goods.e_get_fruit(min_q)
    render(conn, "index.html", fruits: fruits)
  end
end
