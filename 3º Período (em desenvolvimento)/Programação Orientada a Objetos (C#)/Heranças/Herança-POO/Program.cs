using Herança_POO.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Herança_POO
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("--------- ANIMAIS ----------");
            Animais animal = new Animais("Leão", "Felino", 5, "Sim", 4);
            Console.WriteLine(animal.ToString());
            Console.WriteLine("");

            Console.WriteLine("--------- REPTEIS ----------");
            Repteis reptil = new Repteis("Cobra", "Serpente", 2, "Sim", 0, "Verde");
            Console.WriteLine(reptil.ToString());

            Console.WriteLine("--------- MAMÍFEROS ----------");
            Mamifero mamifero = new Mamifero("Leão", "Felino", 5, "Sim", 4, "Amarelo");
            Console.WriteLine(mamifero.ToString());
            Console.WriteLine("");

            Console.WriteLine("--------- ESPÉCIES ESPECÍFICAS ----------");
            Leao leao = new Leao("Leão", "Panthera leo", 10, "Crocodilo", 4, "Dourado", true);
            Elefante elefante = new Elefante("Elefante Africano", "Loxodonta", 25, "Leão", 4, "Cinza", 150);
            Cobra cobra = new Cobra("Cobra Real", "Ophiophagus hannah", 5, "Águia", 0, "Verde", true);
            Tartaruga tartaruga = new Tartaruga("Tartaruga-marinha", "Chelonia mydas", 30, "Tubarão", 4, "Verde", true);
            Console.WriteLine(leao.ToString());
            Console.WriteLine(elefante.ToString());
            Console.WriteLine(cobra.ToString());
            Console.WriteLine(tartaruga.ToString());

            Console.ReadLine();
        }
    }
}
