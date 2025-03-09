using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herança_POO.Modelos
{
    internal class Leao : Mamifero
    {
        public bool _Alcateia { get; set; }
        public Leao(string nome, string raca, int idade, string predador, int quantidadePatas, string corPelagem, bool alcateia) : base(nome, raca, idade, predador, quantidadePatas, corPelagem)
        {
            _Alcateia = alcateia;
        }
        public override void Comunicar()
        {
            Console.WriteLine("O leão ruge para se comunicar com os membros da alcateia e marcar território.");
        }

        public override void Alimentar()
        {
            Console.WriteLine("O leão é carnívoro e se alimenta principalmente de grandes presas como zebras e antílopes.");
        }

        public override void Locomover()
        {
            Console.WriteLine("O leão caminha e corre, mas é mais conhecido por sua caça sorrateira e ataques rápidos.");
        }
        public override string ToString()
        {
            return $"{base.ToString()} Alcateia: {_Alcateia}\n";
        }
    }
}
