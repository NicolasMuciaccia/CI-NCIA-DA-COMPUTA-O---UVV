using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herança_POO.Modelos
{
    internal class Elefante : Mamifero
    {
        public decimal _TamanhoMarfim { get; set; }
        public Elefante(string nome, string raca, int idade, string predador, int quantidadePatas, string corPelagem, decimal tamanhoMarfim) : base(nome, raca, idade, predador, quantidadePatas, corPelagem)
        {
            _TamanhoMarfim = tamanhoMarfim;
        }
        public override void Comunicar()
        {
            Console.WriteLine("O elefante se comunica através de sons e vibrações no solo, usando suas trombas.");
        }

        public override void Alimentar()
        {
            Console.WriteLine("O elefante é herbívoro e se alimenta de folhas, cascas de árvores, frutas e gramíneas.");
        }

        public override void Locomover()
        {
            Console.WriteLine("O elefante se locomove lentamente, caminhando com suas grandes patas, mas pode correr em alta velocidade por curtas distâncias.");
        }
        public override string ToString()
        {
            return $"{base.ToString()} Tamanho do Marfim: {_TamanhoMarfim} cm\n";
        }
    }
}
