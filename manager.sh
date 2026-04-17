while true;
do
echo "=====Menu====="
echo "1 Add student"
echo "2 Show students"
echo "3 Search student"
echo "4 Exit"
echo "---------------"
read num
if [ $num = 1 ]; then
        echo "Add student"
        echo "Name"
        read name
        echo "Age"
        read age
        if [ $age -lt 18 ]; then
                echo "Student is minor"
        else
                {
                        echo "Name: $name - $age Years old"
                } >> students.txt
        echo "Save"
        fi
elif [ "$num" -eq 2 ]; then
        cat students.txt
elif [ "$num" -eq 3 ]; then
        echo "Student name"
        read student
        if #true; then
                grep -n $student students.txt; then
                echo "Found"
        else
                        echo "Not found"
        fi
elif [ "$num" -eq 4 ]; then
        break
fi
done
