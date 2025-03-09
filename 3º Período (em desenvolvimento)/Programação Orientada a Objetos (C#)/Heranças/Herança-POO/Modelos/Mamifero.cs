using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herança_POO.Modelos
{
    internal class Mamifero : Animais
    {
        public string _CorPelagem { get; set; }
        public Mamifero(string nome, string raca, int idade, string predador, int quantidadePatas, string corPelagem) : base(nome, raca, idade, predador, quantidadePatas)
        {
            _CorPelagem = corPelagem;
        }

        public Mamifero(string nome, string raca, int idade, int quantidadePatas, string corPelagem) : base(nome, raca, idade, quantidadePatas)
        {
            _CorPelagem = corPelagem;
        }
        public override string ToString()
        {
            return $"{base.ToString()} Cor da Pelagem: {_CorPelagem}\n";
        }
    }
}
