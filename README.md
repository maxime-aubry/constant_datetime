# constant_datetime

ConstantDateTime is a class that allows you to use DateTime as a constant.

## Getting Started

If you need to use a constant datetime into your project, you can use ConstantDateTime class.
Of course, it won't be possible to change value of your object after instanciation.

Here is a short example :
'''dart
const DateTime value = ConstantDateTime('2021-01-01T00:00:00.000');
DateTime dtvalue = value.toDateTime();
'''

toDateTime method from ConstantDateTime class returns a casted value of formatted string.
