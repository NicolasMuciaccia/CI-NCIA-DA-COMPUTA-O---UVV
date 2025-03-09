using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herança_POO.Modelos
{
    internal class Tartaruga : Repteis
    {
        public bool _Hibernacao { get; set; }

        public Tartaruga(string nome, string raca, int idade, string predador, int quantidadePatas, string corEscamas, bool hibernacao) : base (nome, raca, idade, predador, quantidadePatas, corEscamas)
        {
            _Hibernacao = hibernacao;
        }
        public override void Comunicar()
        {
            Console.WriteLine("A tartaruga se comunica de forma mais sutil, geralmente com sons baixos ou através de sinais visuais.");
        }

        public override void Alimentar()
        {
            Console.WriteLine("A tartaruga pode ser herbívora ou onívora, alimentando-se de plantas, algas ou pequenos invertebrados.");
        }

        public override void Locomover()
        {
            Console.WriteLine("A tartaruga se locomove lentamente, utilizando suas patas fortes para caminhar ou nadar, dependendo da espécie.");
        }
        public override string ToString()
        {
            return $"{base.ToString()} Hibernação: {_Hibernacao}\n";
        }
    }
}
