<template>
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Configuración</h1>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="row">
                                    <div class="col-md-3">
                                        <button
                                            v-if="
                                                permisos.includes(
                                                    'configuracion.edit'
                                                )
                                            "
                                            class="btn btn-outline-primary bg-lightblue btn-flat btn-block"
                                            @click="
                                                muestra_modal = true;
                                                limpiarConfiguracion();
                                            "
                                        >
                                            <i class="el-icon-edit-outline"></i>
                                            Actualizar información
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="col-md-12">
                                    <el-descriptions
                                        class="mt-3"
                                        title="Información"
                                        :column="1"
                                        border
                                        :labelStyle="{
                                            background: 'rgb(0, 123, 255)',
                                            width: '180px',
                                            color: 'white',
                                        }"
                                    >
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i class="el-icon-document"></i>
                                                Nombre del sistema
                                            </template>
                                            {{ oConfiguracion.nombre_sistema }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i class="el-icon-document"></i>
                                                Alias
                                            </template>
                                            {{ oConfiguracion.alias }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i class="el-icon-document"></i>
                                                Razón Social
                                            </template>
                                            {{ oConfiguracion.razon_social }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i class="el-icon-document"></i>
                                                NIT
                                            </template>
                                            {{ oConfiguracion.nit }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i
                                                    class="el-icon-map-location"
                                                ></i>
                                                Ciudad
                                            </template>
                                            {{ oConfiguracion.ciudad }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i
                                                    class="el-icon-map-location"
                                                ></i>
                                                Dirección
                                            </template>
                                            {{ oConfiguracion.dir }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i class="el-icon-phone"></i>
                                                Teléfono
                                            </template>
                                            {{ oConfiguracion.fono }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i class="el-icon-link"></i>
                                                Web
                                            </template>
                                            {{ oConfiguracion.web }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i class="el-icon-document"></i>
                                                Actividad Económica
                                            </template>
                                            {{
                                                oConfiguracion.actividad_economica
                                            }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i class="el-icon-message"></i>
                                                Correo
                                            </template>
                                            {{ oConfiguracion.correo }}
                                        </el-descriptions-item>
                                        <el-descriptions-item>
                                            <template slot="label">
                                                <i
                                                    class="el-icon-picture-outline-round"
                                                ></i>
                                                Logo
                                            </template>
                                            <el-avatar
                                                shape="square"
                                                :size="120"
                                                :fit="'fill'"
                                                :src="oConfiguracion.path_image"
                                            ></el-avatar>
                                        </el-descriptions-item>
                                    </el-descriptions>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <div
            class="modal fade"
            :class="{ show: muestra_modal }"
            id="modal-default"
            aria-modal="true"
            role="dialog"
            @click.self="cierraModal"
        >
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header bg-lightblue">
                        <h4 class="modal-title" v-text="tituloModal"></h4>
                        <button
                            type="button"
                            class="close"
                            data-dismiss="modal"
                            aria-label="Close"
                            @click="cierraModal"
                        >
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form>
                            <div class="row">
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger':
                                                errors.nombre_sistema,
                                        }"
                                        >Nombre del Sistema*</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.nombre_sistema,
                                        }"
                                        placeholder="Nombre del sistema"
                                        v-model="oConfiguracion.nombre_sistema"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.nombre_sistema"
                                        v-text="errors.nombre_sistema[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.alias,
                                        }"
                                        >Alias*</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.alias,
                                        }"
                                        placeholder="Alias"
                                        v-model="oConfiguracion.alias"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.alias"
                                        v-text="errors.alias[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.razon_social,
                                        }"
                                        >Razón Social*</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.razon_social,
                                        }"
                                        placeholder="Razon Social"
                                        v-model="oConfiguracion.razon_social"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.razon_social"
                                        v-text="errors.razon_social[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.nit,
                                        }"
                                        >NIT*</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.nit,
                                        }"
                                        placeholder="NIT"
                                        v-model="oConfiguracion.nit"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.nit"
                                        v-text="errors.nit[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.ciudad,
                                        }"
                                        >Ciudad*</label
                                    >
                                    <input
                                        type="email"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.ciudad,
                                        }"
                                        placeholder="Ciudad"
                                        v-model="oConfiguracion.ciudad"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.ciudad"
                                        v-text="errors.ciudad[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.dir,
                                        }"
                                        >Dirección*</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.dir,
                                        }"
                                        placeholder="Dirección"
                                        v-model="oConfiguracion.dir"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.dir"
                                        v-text="errors.dir[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.fono,
                                        }"
                                        >Teléfono*</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.fono,
                                        }"
                                        placeholder="Teléfono"
                                        v-model="oConfiguracion.fono"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.fono"
                                        v-text="errors.fono[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.web,
                                        }"
                                        >Web</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.web,
                                        }"
                                        placeholder="Web"
                                        v-model="oConfiguracion.web"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.web"
                                        v-text="errors.web[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger':
                                                errors.actividad_economica,
                                        }"
                                        >Actividad Económica</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid':
                                                errors.actividad_economica,
                                        }"
                                        placeholder="Actividad Económica"
                                        v-model="
                                            oConfiguracion.actividad_economica
                                        "
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.actividad_economica"
                                        v-text="errors.actividad_economica[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.correo,
                                        }"
                                        >Correo</label
                                    >
                                    <input
                                        type="text"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.correo,
                                        }"
                                        placeholder="Correo"
                                        v-model="oConfiguracion.correo"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.correo"
                                        v-text="errors.correo[0]"
                                    ></span>
                                </div>
                                <div class="form-group col-md-6">
                                    <label
                                        :class="{
                                            'text-danger': errors.logo,
                                        }"
                                        >Logo</label
                                    >
                                    <input
                                        type="file"
                                        class="form-control"
                                        :class="{
                                            'is-invalid': errors.logo,
                                        }"
                                        @change="getFile"
                                    />
                                    <span
                                        class="error invalid-feedback"
                                        v-if="errors.logo"
                                        v-text="errors.logo[0]"
                                    ></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer justify-content-between">
                        <button
                            type="button"
                            class="btn btn-default"
                            data-dismiss="modal"
                            @click="cierraModal"
                        >
                            Cerrar
                        </button>
                        <el-button
                            type="primary"
                            class="bg-lightblue"
                            :loading="enviando"
                            @click="setRegistroModal()"
                            >{{ textoBtn }}</el-button
                        >
                    </div>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            permisos: localStorage.getItem("permisos"),
            muestra_modal: false,
            // config table
            loading: false,
            // Fin config table

            fullscreenLoading: true,
            loadingWindow: Loading.service({
                fullscreen: this.fullscreenLoading,
            }),
            // config modal
            tituloModal: "ACTUALIZAR INFORMACIÓN",
            accion: "edit",
            textoBtn: "Actualizar",
            enviando: false,
            oConfiguracion: {
                id: 0,
                nombre_sistema: "",
                alias: "",
                razon_social: "",
                nit: "",
                ciudad: "",
                dir: "",
                fono: "",
                web: "",
                actividad_economica: "",
                correo: "",
                logo: null,
            },
            errors: [],
        };
    },
    mounted() {
        this.loadingWindow.close();
        this.getConfiguracion();
    },
    methods: {
        getFile(e) {
            this.oConfiguracion.logo = e.target.files[0];
        },
        // Seleccionar Opciones de Tabla
        editarRegistro(item) {
            this.errors = [];
            this.oConfiguracion.id = item.id;
            this.oConfiguracion.nombre = item.nombre;
            this.oConfiguracion.descripcion = item.descripcion;
            this.textoBtn = "Actualizar";
            this.accion = "edit";
            this.tituloModal = "MODIFICAR REGISTRO";
        },

        // Listar Usuarios
        getConfiguracion() {
            this.loading = true;
            let url = "/configuracion/getConfiguracion";
            axios.get(url).then((res) => {
                this.oConfiguracion = res.data.configuracion;
            });
        },
        // Dialog/modal
        cierraModal() {
            this.muestra_modal = false;
            this.getConfiguracion();
        },
        setRegistroModal() {
            this.enviando = true;
            try {
                this.textoBtn = "Enviando...";
                let url = "/configuracion/update";
                let formdata = new FormData();
                formdata.append(
                    "nombre_sistema",
                    this.oConfiguracion.nombre_sistema
                );
                formdata.append("alias", this.oConfiguracion.alias);
                formdata.append(
                    "razon_social",
                    this.oConfiguracion.razon_social
                );
                formdata.append("nit", this.oConfiguracion.nit);
                formdata.append("ciudad", this.oConfiguracion.ciudad);
                formdata.append("dir", this.oConfiguracion.dir);
                formdata.append("fono", this.oConfiguracion.fono);
                formdata.append(
                    "web",
                    this.oConfiguracion.web ? this.oConfiguracion.web : ""
                );
                formdata.append(
                    "actividad_economica",
                    this.oConfiguracion.actividad_economica
                );
                formdata.append(
                    "correo",
                    this.oConfiguracion.correo ? this.oConfiguracion.correo : ""
                );
                formdata.append("logo", this.oConfiguracion.logo);

                let config = {
                    headers: {
                        "Content-Type": "multipart/form-data",
                    },
                };

                axios
                    .post(url, formdata, config)
                    .then((res) => {
                        this.getConfiguracion();
                        this.enviando = false;
                        this.muestra_modal = false;
                        // emitir evento
                        EventBus.$emit(
                            "configuracionActualizada",
                            JSON.stringify(res.data.configuracion)
                        );
                        Swal.fire({
                            icon: "success",
                            title: res.data.msj,
                            showConfirmButton: false,
                            timer: 1500,
                        });

                        this.limpiarConfiguracion();
                        this.errors = [];
                        if (this.accion == "edit") {
                            this.textoBtn = "Actualizar";
                        } else {
                            this.textoBtn = "Actualizar";
                        }
                    })
                    .catch((error) => {
                        this.enviando = false;
                        if (this.accion == "edit") {
                            this.textoBtn = "Actualizar";
                        } else {
                            this.textoBtn = "Actualizar";
                        }
                        if (error.response) {
                            if (error.response.status === 422) {
                                this.errors = error.response.data.errors;
                            }
                        }
                    });
            } catch (e) {
                this.enviando = false;
                console.log(e);
            }
        },
        limpiarConfiguracion() {
            this.accion = "create";
            this.textoBtn = "Actualizar";
            this.oConfiguracion.id = 0;
            this.oConfiguracion.nombre = "";
            this.oConfiguracion.descripcion = "";
        },
    },
};
</script>

<style>
.el-descriptions-item__cell.el-descriptions-item__label.is-bordered-label {
    background: var(--principal) !important;
}
</style>
