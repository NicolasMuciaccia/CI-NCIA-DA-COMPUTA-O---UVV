using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herança_POO.Modelos
{
    internal class Animais
    {

        public string _Nome { get; set; }
        public string _Raca { get; set; }
        public int _Idade { get; set; }
        public string _Predador { get; set; }
        public int _QuantidadePatas { get; set; }

        public Animais(string nome, string raca, int idade, string predador, int quantidadePatas)
        {
            _Nome = nome;
            _Raca = raca;
            _Idade = idade;
            _Predador = predador;
            _QuantidadePatas = quantidadePatas;
        }

        // Sobrecarga no constructor para aqueles que não tem predador
        public Animais(string nome, string raca, int idade, int quantidadePatas)
        {
            _Nome = nome;
            _Raca = raca;
            _Idade = idade;
            _QuantidadePatas = quantidadePatas;
        }

        public virtual void Comunicar()
        {
        }
        public virtual void Alimentar()
        {
        }
        public virtual void Locomover()
        {
        }
        public override string ToString()
        {
            return $" Nome: {_Nome}\n Raça: {_Raca}\n Idade: {_Idade} anos\n Predador: {_Predador}\n Quantidade de patas: {_QuantidadePatas}\n";
        }
    }
}
