using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herança_POO.Modelos
{
    internal class Cobra : Repteis
    {
        public bool _Veneno { get; set; }

        public Cobra(string nome, string raca, int idade, string predador, int quantidadePatas, string corEscamas, bool veneno) : base(nome, raca, idade, predador, quantidadePatas, corEscamas)
        {
            _Veneno = veneno;
        }
        public override void Comunicar()
        {
            Console.WriteLine("A cobra se comunica principalmente através de posturas corporais, sons de sibilo e movimentos.");
        }

        public override void Alimentar()
        {
            Console.WriteLine("A cobra é carnívora e se alimenta de presas como roedores, aves e outros pequenos animais.");
        }

        public override void Locomover()
        {
            Console.WriteLine("A cobra se locomove deslizando no chão usando movimentos ondulatórios.");
        }
        public override string ToString()
        {
            return $"{base.ToString()} Veneno: {_Veneno}\n";
        }
    }
}
