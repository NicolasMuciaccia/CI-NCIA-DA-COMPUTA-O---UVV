using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herança_POO.Modelos
{
    internal class Repteis : Animais
    {
        public string _CorEscamas { get; set; }
        public Repteis(string nome, string raca, int idade, string predador, int quantidadePatas, string corEscamas) : base(nome, raca, idade, predador, quantidadePatas)
        {
            _CorEscamas = corEscamas;
        }
        public Repteis(string nome, string raca, int idade, int quantidadePatas, string corEscamas) : base(nome, raca, idade, quantidadePatas)
        {
            _CorEscamas = corEscamas;
        }
        public override string ToString()
        {
            return $"{base.ToString()} Cor das Escamas: {_CorEscamas}\n";
        }
    }
}
