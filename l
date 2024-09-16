class Program
{
    static void Main(string[] args)
    {
        const int size = 1000; // Размер массива
        int maxNum = 0;        // Максимальное число
        int maxDiv14 = 0;     // Максимум кратное 14
        int maxDiv7 = 0;      // Максимум кратное 7
        int maxDiv2 = 0;      // Максимум кратное 2

        Random random = new Random();
        int[] numbers = new int[size]; // Создаем массив

        // Заполняем массив случайными числами
        for (int i = 0; i < size; i++)
        {
            numbers[i] = random.Next(0, 10001);
        }

        // Находим максимумы
        foreach (int num in numbers)
        {
            if (num > maxNum) maxNum = num;
            if (num % 14 == 0 && num > maxDiv14) maxDiv14 = num;
            if (num % 7 == 0 && num > maxDiv7) maxDiv7 = num;
            if (num % 2 == 0 && num > maxDiv2) maxDiv2 = num;
        }

        // Вычисляем произведения
        int product1 = maxNum * maxDiv14;
        int product2 = maxDiv2 * maxDiv7;

        // Проверяем и выводим результат
        if (product1 > 0 && product2 > 0)
        {
            int finalResult = (product1 > product2) ? product1 : product2;
            Console.WriteLine($"Результат: {finalResult}");
        }
        else
        {
            Console.WriteLine(-1); // Если нет значений, выводим -1
        }
    }
}
