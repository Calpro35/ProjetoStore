package br.com.store.projetostore.model;

import java.time.LocalDate;

public class Produto {

   private int codigo;
   private String name;
   private Double valor;
   private int quantidade;
   private LocalDate dataFabricacao;
   private Categoria categoria;

  public Produto() {}

  public Produto(int codigo, String name, Double valor, int quantidade, LocalDate dataFabricacao) {
      this.codigo = codigo;
      this.name = name;
      this.valor = valor;
      this.quantidade = quantidade;
      this.dataFabricacao = dataFabricacao;

  }


    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setDataFabricacao(LocalDate dataFabricacao) {
        this.dataFabricacao = dataFabricacao;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }


    public LocalDate getDataFabricacao() {
        return dataFabricacao;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }
}
