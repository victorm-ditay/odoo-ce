# Dockerfile

FROM odoo:18.0

# Imagen base limpia, sin addons personalizados.
# Puedes montar los módulos (repos o enterprise) externamente si lo necesitas más adelante.

ENV ADDONS_PATH=/usr/lib/python3/dist-packages/odoo/addons

CMD ["odoo", "--addons-path", "${ADDONS_PATH}", "--db_user=odoo", "--db_password=odoo", "--db_host=db"]
