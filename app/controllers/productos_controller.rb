class ProductosController < ApplicationController
  def index
  	@lista = Producto.all
  end

  def new
    @item=Producto.new
  end

  def create
    item=Producto.new
    item.id=params['producto']['id']
    item.nombre=params['producto']['nombre']
    item.cant_min=params['producto']['cant_min']
    item.cant_act=params['producto']['cant_act']
    item.precio=params['producto']['precio']
    item.activo=params['producto']['activo']
    item.marca_id = params['producto']['marca_id']
    item.rubro_id = params['producto']['rubro_id']
    item.save
    redirect_to root_path	
  end

  def edit
    @item=Producto.find(params['id'])
  end

  def update
    item=Producto.find(params['producto']['id'])
    item.nombre=params['producto']['nombre']
    item.cant_min=params['producto']['cant_min']
    item.cant_act=params['producto']['cant_act']
    item.precio=params['producto']['precio']
    item.activo=params['producto']['activo']
    item.marca_id = params['producto']['marca_id']
    item.rubro_id = params['producto']['rubro_id']
    item.save
    redirect_to root_path
  end

  def destroy
    item=Producto.find(params['id'])
    item.activo = 1
    item.save
    redirect_to root_path
  end
end
