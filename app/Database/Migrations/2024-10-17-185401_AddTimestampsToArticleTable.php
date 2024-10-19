<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class AddTimestampsToArticleTable extends Migration
{
    public function up()
    {
        $this->forge->addColumn('article', [
            'created_at' => [
                'type' => 'DATETIME',
                'null' => true, // Permite valores NULL
            ],
            'updated_at' => [
                'type' => 'DATETIME',
                'null' => true, // Permite valores NULL
            ],
        ]);

        // Agregar un índice no único en la columna created_at
        $this->forge->addKey('created_at');
        $this->forge->addKey('updated_at');
    }

    public function down()
    {
        if ($this->db->fieldExists('created_at', 'article')) {
            $this->forge->dropColumn('article', 'created_at');
        }
        if ($this->db->fieldExists('updated_at', 'article')) {
            $this->forge->dropColumn('article', 'updated_at');
        }
    }
}
