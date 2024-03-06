<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\DB;

class ModoLibreLogs extends Model
{
  use SoftDeletes;


  protected $connection = 'mysql';
  protected $table = 'modolibrelogs';
  protected $guarded = [];
  protected $dates = ['deleted_at'];

  public function scopeCreatedAt($query,$fechaInicio,$fechaFin){
    if($fechaInicio && $fechaFin){
             return $query->whereBetween('created_at',[$fechaInicio." 00:00:00", $fechaFin." 23:59:59"]);
    }
  }

  public function scopeJoinName($query,$user){
    if(isset($user))
       return $query->where('users.name','like',"%".$user."%");
  }

  public function scopeJoinEmail($query,$email){
    if(isset($email))
       return $query->where('users.email','like',"%".$email."%");
  }

  public function scopeJoinFechasML($query,$fechaInicio, $fechaFin){
    $aux = $query;
    $fechaInicioF = date("Y-m-d", strtotime($fechaInicio));
    $fechaFinF = date("Y-m-d", strtotime($fechaFin));
    if(isset($fechaInicio)){
      $aux = $aux->where(DB::raw('date(modolibrelogs.created_at)'),'>=',$fechaInicioF);
    }
    if(isset($fechaFin)){
      $aux = $aux->where(DB::raw('date(modolibrelogs.updated_at)'),'<=',$fechaFinF);
    }
    return $aux;
  }
}
