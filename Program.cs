using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
namespace ближе_к_10
{
    class Program
    {
        int x, y;
        public static int Abs(int a)
        {
            
            if (a < 0) { a = -a; return a; }
            else
            {
                a = a;
 }      
    return a;       
        }
        public void Vvod()
        {
            Console.WriteLine("введите первое число ");
             x = int.Parse(Console.ReadLine());
            Console.WriteLine("введите второе число  ");
             y = int.Parse(Console.ReadLine());
        }
            public void Metr()
            {
            if (Abs(10 - x) > Abs(10 - y))  
            {
                Console.WriteLine("ближе к десети = " + y);
            }
            if (Abs(10 - x) < Abs(10 - y))
                Console.WriteLine("ближе к десети = " + x);
         }
        static void Main(string[] args)
        {
            Program exz = new Program();
            exz.Vvod();
            exz.Metr();
            Console.ReadKey();}}}
