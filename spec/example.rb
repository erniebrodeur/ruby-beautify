require 'ripper'

module Here
class There
def why?(argument = nil)
@array = [
1,
2,
3
]
hash = {
one:1,
two:2,
three:3
}
end

# a comment
def why_not?(argument: {})
@array = [4,5,6]
hash = {four:4, five:5, six:6}
s = "a #{"complex"} string."
end

def complex_method(one, two, three, four)
regex = /regex/
end

def with_block
run = Proc.new { |argument| puts arugment }
run do |arugment|
puts argument
end
end
end
end

h = Here::There.new

h.why?({
here: 'there',
there: 'here'
})

h.with_block {
puts 'yahooie'
}


h.complex_method('asdkjasflkjdglksjglksfgjlfkgjdf',
'alfkjsdlkfjsflgkjfglk',
'alfkjsdlkfjsflgkjfglk',
'alfkjsdlkfjsflgkjfglk'
)

h.complex_method('asdkjasflkjdglksjglksfgjlfkgjdf',
'alfkjsdlkfjsflgkjfglk',
'alfkjsdlkfjsflgkjfglk',
'alfkjsdlkfjsflgkjfglk'
).map do |i|
i
end.map! { |i| i }

if 1 > 0
puts 'something'
elsif 1 < 0
puts 'never!'
else
puts 'not likely.'
end

# Test for already indented blocks
    class There2 < There
    def m1()
      puts "m1"
    end
def m2()
          puts "m2"
  end
        def m3()
puts "m3"
        end
    end

# Test for multiline string
def m (x)
puts "This is multi-line string. It's line1 \
 It's line 2\
              And this is\n line3
     This line should not be mutated"
puts "This is multi line interpolated string #{
x
}"
end

# Test to validate case statements
def case_test opts=nil
case test_case
when 'Passing'
call(:pass)
when 'Failing'
call(:fail)
when 'Error'
call(:error)
end
end

# Test for variable assignment from an if statement
@products = if params[:category]
Category.find(params[:category]).products
else
Product.all
end

# Test for variable assignment from a block
response = begin
if true?
api_call(test)
else
rejected
end
rescue
'FALSE'
end

# Test or-equals
def expensive_value
@expensive_value ||= begin
if conn.active?
expensive_call
else
:none
end
end
end

# Test multiple or-equals
def expensive_value
@expensive_value ||= @cached_value ||= begin
if conn.active?
expensive_call
else
:none
end
end
end
