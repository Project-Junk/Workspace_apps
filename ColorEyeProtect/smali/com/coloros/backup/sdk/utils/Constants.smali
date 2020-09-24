.class public Lcom/coloros/backup/sdk/utils/Constants;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/backup/sdk/utils/Constants$ContactType;,
        Lcom/coloros/backup/sdk/utils/Constants$LogTag;,
        Lcom/coloros/backup/sdk/utils/Constants$State;,
        Lcom/coloros/backup/sdk/utils/Constants$MessageID;,
        Lcom/coloros/backup/sdk/utils/Constants$DialogID;,
        Lcom/coloros/backup/sdk/utils/Constants$ModulePath;
    }
.end annotation


# static fields
.field public static final ACTION_SD_EXIST:Ljava/lang/String; = "SD_EXIST"

.field public static final ACTIVE_EXIT:I = -0x3e8

.field public static final AUTHORITY:Ljava/lang/String; = "com.android.secure.provider.SecureData"

.field protected static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BACKUP:Ljava/lang/String; = "backup"

.field public static final BACKUP_DATABASE:Ljava/lang/String; = "backup_config.db"

.field public static final BACKUP_DATABASE_JOUR:Ljava/lang/String; = "backup_config.db-journal"

.field public static final BACKUP_ID:I = 0x64

.field public static final CONFIG_URI:Landroid/net/Uri;

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final INTENT_SD_SWAP:Ljava/lang/String; = "com.mediatek.SD_SWAP"

.field public static final MESSAGE_BOX_TYPE_DRAFT:Ljava/lang/String; = "3"

.field public static final MESSAGE_BOX_TYPE_INBOX:Ljava/lang/String; = "1"

.field public static final MESSAGE_BOX_TYPE_OUTBOX:Ljava/lang/String; = "4"

.field public static final MESSAGE_BOX_TYPE_SENT:Ljava/lang/String; = "2"

.field public static final NUMBER_IMPORT_BOOKMARK_EACH:I = 0x32

.field public static final NUMBER_IMPORT_MMS_BACKUP_EACH:I = 0xa

.field public static final NUMBER_IMPORT_MMS_EACH:I = 0x64

.field public static final NUMBER_IMPORT_SMS_EACH:I = 0x32

.field public static final OTHER_DATA_FOLDER:Ljava/lang/String; = "/data/data/"

.field public static final PRIVACY_APP_URI:Landroid/net/Uri;

.field public static final REPLACE_DATA:I = 0x1

.field public static final RESTORE:Ljava/lang/String; = "restore"

.field public static final RESTORE_ID:I = 0x1

.field public static final TEMPFILE:Ljava/lang/String; = "tempFile.tmp"

.field public static final TIME_SLEEP_WHEN_COMPOSE_ONE:I = 0x1f4

.field public static final TIMING_BACKUP:Ljava/lang/String; = "timing_backup"

.field public static final URI_MMS:Ljava/lang/String; = "content://mms/"

.field public static final URI_MMS_SMS:Ljava/lang/String; = "content://mms-sms/conversations/"

.field public static final URI_SMS:Ljava/lang/String; = "content://sms"

.field public static final VISITOR_MODE_PASSWORD:Ljava/lang/String; = "oppo_vistor_mode_password"

.field public static final VISITOR_MODE_PASSWORD_STATE:Ljava/lang/String; = "oppo_vistor_mode_password_state"

.field public static final VISITOR_MODE_PATTERN:Ljava/lang/String; = "oppo_vistor_mode_pattern"

.field public static final VISITOR_MODE_STATE:Ljava/lang/String; = "oppo_vistor_mode_state"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.android.secure.provider.SecureData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/backup/sdk/utils/Constants;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/coloros/backup/sdk/utils/Constants;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "privacy_protect_config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/backup/sdk/utils/Constants;->CONFIG_URI:Landroid/net/Uri;

    sget-object v0, Lcom/coloros/backup/sdk/utils/Constants;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "protected_apps"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/backup/sdk/utils/Constants;->PRIVACY_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
