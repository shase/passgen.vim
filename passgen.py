import secrets
import string


def passgenvim_generate_password(size=''):
   chars = string.ascii_letters + string.digits
   print(''.join(secrets.choice(chars) for x in range(int(size))))
