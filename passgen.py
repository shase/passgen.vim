import secrets
import string


def passgenvim_generate_password(size=10):
   chars = string.ascii_letters + string.digits
   print(''.join(secrets.choice(chars) for x in range(size)))
