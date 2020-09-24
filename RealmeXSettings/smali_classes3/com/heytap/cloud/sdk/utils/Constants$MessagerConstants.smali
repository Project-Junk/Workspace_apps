.class public final Lcom/heytap/cloud/sdk/utils/Constants$MessagerConstants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/cloud/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MessagerConstants"
.end annotation


# static fields
.field public static final ACTION_UPDATE_DICTIONARY_DATA:Ljava/lang/String; = "com.heytap.cloud.action.UPDATE_DICTIONARY_DATA"

.field public static final ACTION_UPDATE_SCENE_OCR_DATA:Ljava/lang/String; = "com.heytap.cloud.action.UPDATE_SCENE_OCR_DATA"

.field public static final ASYNC:I = 0x0

.field public static final KEY_BOOLEAN:Ljava/lang/String; = "key_boolean"

.field public static final KEY_CLIENT_OCR_SDK_VERSION:Ljava/lang/String; = "client_ocr_sdk_version"

.field public static final KEY_CLIENT_SCENE_SDK_VERSION:Ljava/lang/String; = "client_scene_sdk_version"

.field public static final KEY_DICTIONARY_VERSION:Ljava/lang/String; = "dictionary_version"

.field public static final KEY_DOWNLOAD_STATE:Ljava/lang/String; = "download_state"

.field public static final KEY_FILE_PATH:Ljava/lang/String; = "file_path"

.field public static final KEY_GET_SYNC_DIRECTORY_CONFIG:Ljava/lang/String; = "get_sync_directory_config"

.field public static final KEY_HANDLE_MSG_RESULT:Ljava/lang/String; = "handle_msg_result"

.field public static final KEY_HANDLE_MSG_RESULT_MSG:Ljava/lang/String; = "handle_msg_result_msg"

.field public static final KEY_HAS_DIRTY_DATA:Ljava/lang/String; = "has_dirty_data"

.field public static final KEY_HEYTAP_ACCOUNT:Ljava/lang/String; = "ht_account"

.field public static final KEY_INT:Ljava/lang/String; = "key_int"

.field public static final KEY_IS_LOCAL_DATA_CLEAR:Ljava/lang/String; = "is_local_data_clear"

.field public static final KEY_MAX_NUMBER:Ljava/lang/String; = "max_number"

.field public static final KEY_MAX_SIZE:Ljava/lang/String; = "max_size"

.field public static final KEY_META_DATA_COUNT:Ljava/lang/String; = "meta_data_count"

.field public static final KEY_MODULE_META_DATA_VERSION:Ljava/lang/String; = "module_meta_data_version"

.field public static final KEY_NEED_DELETE_DATA:Ljava/lang/String; = "need_delete_data"

.field public static final KEY_NOT_SYNC_META_DATA_COUNT:Ljava/lang/String; = "not_sync_meta_data_count"

.field public static final KEY_OCR_RECOVERY_SERVER_RESULT_CODE:Ljava/lang/String; = "ocr_recovery_server_result_code"

.field public static final KEY_PACKAGE_VERSION:Ljava/lang/String; = "package_version"

.field public static final KEY_RECOVERY_PROCESS_DATA_TYPE:Ljava/lang/String; = "recovery_process_data_type"

.field public static final KEY_SERVER_OCR_SDK_VERSION:Ljava/lang/String; = "server_ocr_sdk_version"

.field public static final KEY_SERVER_SCENE_OCR_VERSION:Ljava/lang/String; = "server_scene_ocr_version"

.field public static final KEY_SERVER_SCENE_SDK_VERSION:Ljava/lang/String; = "server_scene_sdk_version"

.field public static final KEY_STREAM_ONE_BATCH_DOWNLOAD_FILES:Ljava/lang/String; = "stream_one_batch_download_files"

.field public static final KEY_STREAM_ONE_BATCH_UPLOAD_FILES:Ljava/lang/String; = "stream_one_batch_upload_files"

.field public static final KEY_SYNC_FILE_PARAMS:Ljava/lang/String; = "sync_file_params"

.field public static final KEY_SYNC_MODULE_NAME:Ljava/lang/String; = "sync_module_name"

.field public static final KEY_SYNC_PROGRESS:Ljava/lang/String; = "sync_progress"

.field public static final KEY_SYNC_RESULT:Ljava/lang/String; = "sync_result"

.field public static final KEY_SYNC_TYPE:Ljava/lang/String; = "key_sync_type"

.field public static final KEY_UPLOAD_STATE:Ljava/lang/String; = "upload_state"

.field public static final METHOD_ID_ACCOUNT_LOGIN:I = 0x9

.field public static final METHOD_ID_ACCOUNT_LOGOUT:I = 0xa

.field public static final METHOD_ID_BACKUP_END:I = 0x5

.field public static final METHOD_ID_BACKUP_START:I = 0x0

.field public static final METHOD_ID_CANCEL:I = 0x19

.field public static final METHOD_ID_DICT_UPDATE_END:I = 0x18

.field public static final METHOD_ID_DICT_UPDATE_PROCESS_DATA:I = 0x17

.field public static final METHOD_ID_DICT_UPDATE_START:I = 0x16

.field public static final METHOD_ID_GET_ALL_DATA:I = 0x1

.field public static final METHOD_ID_GET_APP_AUTHORIZATION_STATUS:I = 0x1d

.field public static final METHOD_ID_GET_DIRTY_DATA:I = 0x3

.field public static final METHOD_ID_GET_DOWNLOAD_FILES:I = 0x37

.field public static final METHOD_ID_GET_DOWNLOAD_REQUEST_DATA:I = 0xe

.field public static final METHOD_ID_GET_META_DATA_COUNT:I = 0x11

.field public static final METHOD_ID_GET_META_DATA_VERSION:I = 0x12

.field public static final METHOD_ID_GET_NOT_SYNC_META_DATA_COUNT:I = 0x1a

.field public static final METHOD_ID_GET_UPLOAD_DATA:I = 0xc

.field public static final METHOD_ID_GET_UPLOAD_FILES:I = 0x33

.field public static final METHOD_ID_HAS_DIRTY_DATA:I = 0x2

.field public static final METHOD_ID_IS_CAN_CLOSE_SYNC_SWITCH:I = 0x1e

.field public static final METHOD_ID_METADATA_END:I = 0x32

.field public static final METHOD_ID_OCR_RECOVERY_END:I = 0x15

.field public static final METHOD_ID_OCR_RECOVERY_PROCESS_DATA:I = 0x14

.field public static final METHOD_ID_OCR_RECOVERY_START:I = 0x13

.field public static final METHOD_ID_ON_DOWNLOAD_PROGRESS:I = 0x38

.field public static final METHOD_ID_ON_DOWNLOAD_RESULT:I = 0x39

.field public static final METHOD_ID_ON_DOWNLOAD_RESULTS:I = 0x3a

.field public static final METHOD_ID_ON_FOREGROUND_DOWNLOAD_PROGRESS:I = 0x3c

.field public static final METHOD_ID_ON_FOREGROUND_DOWNLOAD_RESULT:I = 0x3d

.field public static final METHOD_ID_ON_IS_LOCAL_DATA_CLEAR:I = 0x1b

.field public static final METHOD_ID_ON_SYNC_SWITCH_STATUS_CHANGE:I = 0x1c

.field public static final METHOD_ID_ON_UPLOAD_PROGRESS:I = 0x34

.field public static final METHOD_ID_ON_UPLOAD_RESULT:I = 0x35

.field public static final METHOD_ID_ON_UPLOAD_RESULTS:I = 0x36

.field public static final METHOD_ID_PROCESS_BACKUP_RESULT:I = 0x4

.field public static final METHOD_ID_PROCESS_DOWNLOAD_RESULT:I = 0xf

.field public static final METHOD_ID_PROCESS_RECOVERY_DATA:I = 0x7

.field public static final METHOD_ID_PROCESS_UPLOAD_RESULT:I = 0xd

.field public static final METHOD_ID_RECOVERY_END:I = 0x8

.field public static final METHOD_ID_RECOVERY_START:I = 0x6

.field public static final METHOD_ID_SMALL_BINARY_SYNC_END:I = 0x10

.field public static final METHOD_ID_SMALL_BINARY_SYNC_START:I = 0xb

.field public static final METHOD_ID_UPDATE_SYNC_STATE:I = 0x3b

.field public static final SYNC:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
