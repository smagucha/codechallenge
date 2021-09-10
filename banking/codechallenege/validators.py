from django.core.exceptions import ValidationError
  
#string_name.isnumeric() numbers
#first_name.isalpha() strings only
# pin.isalnum()



from django.core.exceptions import ValidationError



def onlyletters(value):
    if value.isalpha() == True:
        return  value
    else:
        raise ValidationError(
            ('%(value)s enter a validate input'),
            params={'value': value},
        )

def onlyisalnum(value):
    if value.isalnum() == True:
        return  value
    else:
        raise ValidationError(
            ('%(value)s enter a validate input'),
            params={'value': value},
        )