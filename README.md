```markdown
# 🏥 Pharmacy Management System

## 📋 Descripción del Proyecto

Sistema de gestión integral para farmacias desarrollado en PHP/MySQL. **Versión 2.0 en desarrollo** - actualmente cuenta con la estructura base pero requiere completar módulos críticos para funcionamiento completo.

> ⚠️ **ADVERTENCIA:** Este proyecto está INCOMPLETO. No usar en producción sin desarrollo adicional.

## 📊 Estado del Proyecto

| Componente | Estado | Completitud |
|------------|--------|-------------|
| Base de Datos | 🟡 **Parcial** | 40% |
| Autenticación | ✅ **Completo** | 100% |
| Gestión de Usuarios | ✅ **Completo** | 100% |
| Gestión de Productos | ❌ **Faltante** | 0% |
| Punto de Venta (POS) | ❌ **Faltante** | 0% |
| Inventario | ❌ **Faltante** | 0% |
| Reportes | ❌ **Faltante** | 0% |

**Versión:** 2.0  
**Última Actualización:** 30 Abril, 2019  
**Base de Datos:** MySQL/MariaDB  
**PHP:** 7.1.26+

## 🗃️ Estructura de la Base de Datos

### ✅ Tablas Implementadas

```sql
-- Sistema de Usuarios y Permisos
groups                # Roles del sistema (admin, role1, role2, role3)
tbl_admin             # Usuarios con autenticación (passwords hasheados)
permissions           # 9 permisos del sistema RBAC
permission_role       # Asignación permisos↔roles

-- Catálogos Base
medicine_category     # 15 categorías de medicamentos
suppliers             # Proveedores

-- Configuración
settings              # Configuración global (logo, moneda, título)
tbl_alerts            # Mensajes del sistema
modal                 # Contenido para popups/notificaciones
```

### ❌ Tablas Faltantes (Críticas)

| Tabla | Descripción | Impacto |
|-------|-------------|---------|
| `medicines` | Productos/medicamentos | **SIN PRODUCTOS PARA VENDER** |
| `sales` | Transacciones de venta | **NO HAY VENTAS** |
| `customers` | Clientes | **SIN REGISTRO DE COMPRADORES** |
| `purchases` | Compras a proveedores | **SIN CONTROL DE ENTRADAS** |
| `inventory` | Control de stock | **SIN GESTIÓN DE INVENTARIO** |
| `invoices` | Facturación | **SIN DOCUMENTOS LEGALES** |

## 🚀 Características Implementadas

### 🔐 Sistema de Seguridad
- ✅ Autenticación con hash bcrypt
- ✅ Control de acceso basado en roles (RBAC)
- ✅ 9 permisos granulares por módulo
- ✅ 4 roles predefinidos
- ✅ Eliminación lógica en todas las tablas

### ⚙️ Configuración
- ✅ Logo y favicon personalizables
- ✅ Moneda configurable
- ✅ Imágenes de login personalizables
- ✅ Sistema de alertas configurable
- ✅ Footer personalizable

### 📁 Gestión de Catálogos
- ✅ 15 categorías médicas predefinidas
- ✅ Gestión completa de proveedores
- ✅ Campos de auditoría (fechas, usuario)

## 🚧 Funcionalidades Pendientes (URGENTE)

### Módulo de Productos
- [ ] CRUD de medicamentos
- [ ] Control de lotes y fechas de expiración
- [ ] Gestión de precios (compra/venta)
- [ ] Códigos de barras

### Módulo de Ventas (POS)
- [ ] Sistema de punto de venta
- [ ] Facturación electrónica
- [ ] Múltiples métodos de pago
- [ ] Impuestos y descuentos

### Módulo de Inventario
- [ ] Control de stock en tiempo real
- [ ] Alertas de nivel mínimo
- [ ] Movimientos de inventario
- [ ] Ajustes de stock

### Módulo de Reportes
- [ ] Ventas por período
- [ ] Productos más vendidos
- [ ] Inventario por vencer
- [ ] Estadísticas financieras

## 🛠️ Instalación Rápida

### Requisitos del Servidor
```bash
PHP >= 7.1.26
MySQL >= 5.6 o MariaDB >= 10.1
Extensiones: mysqli, pdo_mysql
Servidor web: Apache (mod_rewrite) o Nginx
```

### Configuración de Base de Datos
```bash
# 1. Crear base de datos
mysql -u root -p -e "CREATE DATABASE pharmacy1;"

# 2. Importar estructura
mysql -u root -p pharmacy1 < pharmacy1.sql

# 3. Verificar tablas
mysql -u root -p -e "USE pharmacy1; SHOW TABLES;"
```

### Credenciales por Defecto
```yaml
Administrador:
  Email: admin@admin.com
  Password: admin123
  Rol: Administrador completo
  Permisos: Todos (9 permisos)

Usuario Demo:
  Email: user@gmail.com
  Password: (contactar administrador)
  Rol: role2
  Permisos: Gestión de categorías y proveedores
```

### Configuración de la Aplicación
```php
// Configurar en archivo de conexión
$host = 'localhost';
$dbname = 'pharmacy1';
$username = 'root';
$password = '';

// Habilitar errores para desarrollo
error_reporting(E_ALL);
ini_set('display_errors', 1);
```

## 📈 Plan de Desarrollo

### Fase 1: MVP Básico (2-3 semanas)
- [ ] Crear tabla `medicines` con control de stock
- [ ] Implementar CRUD básico de productos
- [ ] Crear tablas `sales` y `sale_items`
- [ ] POS básico funcional

### Fase 2: Módulos Comerciales (3-4 semanas)
- [ ] Tabla `customers` con programa de fidelidad
- [ ] Tabla `purchases` para gestión de compras
- [ ] Reportes básicos de ventas
- [ ] Alertas de stock bajo y expiración

### Fase 3: Optimización (2-3 semanas)
- [ ] Integridad referencial completa
- [ ] Índices para optimización
- [ ] Sistema de backup automático
- [ ] API REST para integraciones

## 👥 Roles y Permisos del Sistema

| Rol | Permisos | Descripción |
|-----|----------|-------------|
| **admin** | Todos los permisos | Superusuario con acceso completo |
| **role1** | Personalizado | Permisos específicos asignables |
| **role2** | Categorías + Proveedores | Gestor de catálogos |
| **role3** | Usuarios + Roles + Clientes | Gestor de personas |

### Permisos Disponibles (9 total)
1. `manage_medicinals` - Gestionar medicamentos
2. `manage_pos` - Punto de venta
3. `manage_roles` - Gestionar roles
4. `manage_users` - Gestionar usuarios
5. `manage_sales` - Gestionar ventas
6. `manage_categories` - Gestionar categorías
7. `manage_suppliers` - Gestionar proveedores
8. `manage_customers` - Gestionar clientes
9. `manage_reports` - Gestionar reportes

## 🐛 Problemas Conocidos

### Críticos (Bloqueantes)
1. **Falta tabla de productos** - No se pueden agregar medicamentos
2. **No hay sistema de ventas** - No funciona como POS
3. **Sin gestión de inventario** - No hay control de stock

### Técnicos (A Mejorar)
1. Typo en campo `avator` (debería ser `avatar`)
2. Fechas con valor `0000-00-00` en algunos registros
3. Mezcla de convenciones de nombres en inglés/español
4. Falta integridad referencial en algunas relaciones

## 📞 Soporte y Contribución



### Servicios Ofrecidos
- Desarrollo de Software Profesional
- Desarrollo Web a Medida
- Aplicaciones Móviles
- Asesoría para Proyectos de Tesis

### ¿Cómo Contribuir?
1. Fork el repositorio
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia y Créditos

```
Pharmacy Management System v2.0
Copyright (c) 2019 Mayuri K.

Este es un proyecto educativo con fines de aprendizaje.
Se requiere dar crédito al autor original en cualquier uso o modificación.

Por favor, no olvides dar crédito al desarrollador original 
porque trabajé duro para desarrollar este proyecto.

Si encuentras útil este proyecto, por favor compártelo y dale una estrella.
```

### Términos de Uso
1. Puedes usar este código para proyectos educativos
2. Debes dar crédito al autor original
3. No redistribuir como proyecto propio
4. Para uso comercial, contactar al autor

## 🔗 Recursos Adicionales

- [Documentación PHP Oficial](https://www.php.net/docs.php)
- [Documentación MySQL](https://dev.mysql.com/doc/)
- [phpMyAdmin](https://www.phpmyadmin.net/)
- [Manual de MariaDB](https://mariadb.com/kb/en/library/)

## 🏷️ Etiquetas

`php` `mysql` `pharmacy` `pos` `inventory-management` `rbac` `education` `incomplete-project` `hospital-management` `drugstore`

---

**⚠️ NOTA IMPORTANTE PARA ESTUDIANTES:**  
Este proyecto es excelente como base para tesis o proyectos académicos, pero requiere desarrollo adicional para ser funcional. Perfecto para aprender sobre sistemas de gestión, RBAC, y desarrollo web con PHP/MySQL.

**📅 Última Actualización:** Abril 2019  
**🔧 Estado:** 🚧 **EN DESARROLLO - INCOMPLETO**  
**🎯 Objetivo:** Sistema de gestión completo para farmacias
```

