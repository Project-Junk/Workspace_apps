.class public Lcom/coloros/backup/sdk/utils/ModuleType;
.super Ljava/lang/Object;


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "BackupTAG/ModuleType"

.field private static final CMCC_FEARURE:Ljava/lang/String; = "oppo.cmcc.test"

.field public static final MEDIA_DATA:I = 0x4

.field public static final PERSONAL_DATA:I = 0x2

.field private static final SELECT_ALL_PACKAGE:Ljava/lang/String; = "type_app_select_all_package"

.field public static final SYSTEM_DATA:I = 0x1

.field public static final TYPE_ACCOUNT:I = 0x150

.field public static final TYPE_APP:I = 0x10

.field public static final TYPE_BROWSER:I = 0x130

.field public static final TYPE_CALENDAR:I = 0x8

.field public static final TYPE_CALLRECORD:I = 0x110

.field public static final TYPE_CLOCK:I = 0x120

.field public static final TYPE_CLOUDNOTE:I = 0x190

.field public static final TYPE_CONTACT:I = 0x1

.field public static final TYPE_CONTACTS_BLACKLIST:I = 0x250

.field public static final TYPE_FILE:I = 0x230

.field public static final TYPE_INVALID:I = 0x0

.field public static final TYPE_LAUNCHER:I = 0x160

.field public static final TYPE_MESSAGE:I = 0x40

.field public static final TYPE_MMS:I = 0x4

.field public static final TYPE_MUSIC:I = 0x80

.field public static final TYPE_NOTEBOOK:I = 0x100

.field public static final TYPE_NUMBER_SETTINGS:I = 0x280

.field public static final TYPE_OPPO_GESTURE:I = 0x290

.field public static final TYPE_OPPO_USERCENTER:I = 0x270

.field public static final TYPE_PICTURE:I = 0x20

.field public static final TYPE_SAFE:I = 0x210

.field public static final TYPE_SIM_SETTINGS:I = 0x260

.field public static final TYPE_SMS:I = 0x2

.field public static final TYPE_SYSTEM_SETTING:I = 0x180

.field public static final TYPE_THEME:I = 0x170

.field public static final TYPE_USERCENTER:I = 0x220

.field public static final TYPE_WEATHER:I = 0x140

.field public static final USER_APPLICATION:I = 0x3

.field public static final mediaTypes:[I

.field public static final personalTypes:[I

.field public static final personalTypes_cmcc:[I

.field public static final systemTypes:[I

.field public static final systemTypes_cmcc:[I

.field public static final systemTypes_wx:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/backup/sdk/utils/ModuleType;->personalTypes:[I

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/coloros/backup/sdk/utils/ModuleType;->systemTypes:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/coloros/backup/sdk/utils/ModuleType;->personalTypes_cmcc:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/coloros/backup/sdk/utils/ModuleType;->systemTypes_cmcc:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/coloros/backup/sdk/utils/ModuleType;->systemTypes_wx:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/coloros/backup/sdk/utils/ModuleType;->mediaTypes:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x110
        0x8
        0x130
        0x250
    .end array-data

    :array_1
    .array-data 4
        0x120
        0x140
        0x190
        0x210
        0x220
        0x180
        0x160
        0x260
        0x270
        0x280
        0x290
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x4
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x120
        0x140
        0x180
        0x160
    .end array-data

    :array_4
    .array-data 4
        0x80
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPackageParams()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "type_app_select_all_package"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getGroupType(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :sswitch_0
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_1
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_2
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_3
    const/4 p0, 0x2

    :goto_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x4 -> :sswitch_3
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x80 -> :sswitch_1
        0x110 -> :sswitch_3
        0x120 -> :sswitch_0
        0x130 -> :sswitch_3
        0x140 -> :sswitch_0
        0x150 -> :sswitch_3
        0x160 -> :sswitch_0
        0x180 -> :sswitch_0
        0x190 -> :sswitch_0
        0x210 -> :sswitch_0
        0x220 -> :sswitch_0
        0x250 -> :sswitch_3
        0x260 -> :sswitch_0
        0x270 -> :sswitch_0
        0x280 -> :sswitch_0
        0x290 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getWeight(I)I
    .locals 1

    const/4 v0, 0x1

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x12c

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x64

    :goto_0
    :sswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x4 -> :sswitch_3
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x80 -> :sswitch_1
        0x110 -> :sswitch_3
        0x120 -> :sswitch_2
        0x130 -> :sswitch_2
        0x140 -> :sswitch_2
        0x150 -> :sswitch_2
        0x160 -> :sswitch_2
        0x180 -> :sswitch_0
        0x190 -> :sswitch_2
        0x210 -> :sswitch_2
        0x220 -> :sswitch_2
        0x270 -> :sswitch_2
    .end sparse-switch
.end method

.method public static hasOppoSafeCenter(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.color.safecenter"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "BackupTAG/ModuleType"

    const-string v0, "hasOppoSafeCenter = true"

    invoke-static {p0, v0}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "BackupTAG/ModuleType"

    const-string v1, "hasOppoSafeCenter = false"

    invoke-static {p0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isAllPackageParams(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "type_app_select_all_package"

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v0
.end method

.method public static isCmccVersion(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.cmcc.test"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "BackupTAG/ModuleType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmccVersion: isCmccVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isOppoDevice(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.sw.solution.device"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    const-string v0, "BackupTAG/ModuleType"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOppoDevice(): isOppoDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/backup/sdk/utils/MyLogger;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static isWXVersion()Z
    .locals 2

    const-string v0, "persist.sys.oppo.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static needToCount(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    const/16 v0, 0x110

    if-eq p0, v0, :cond_0

    const/16 v0, 0x250

    if-eq p0, v0, :cond_0

    const/16 v0, 0x260

    if-eq p0, v0, :cond_0

    const/16 v0, 0x270

    if-eq p0, v0, :cond_0

    const/16 v0, 0x280

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static needToShowCount(I)Z
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    :goto_0
    :sswitch_1
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x110 -> :sswitch_0
        0x120 -> :sswitch_0
        0x130 -> :sswitch_0
        0x140 -> :sswitch_1
        0x150 -> :sswitch_1
        0x160 -> :sswitch_1
        0x180 -> :sswitch_1
        0x190 -> :sswitch_1
        0x210 -> :sswitch_1
        0x220 -> :sswitch_1
    .end sparse-switch
.end method

.method public static needToShowSubtitle(I)Z
    .locals 2

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    const/16 v0, 0x180

    if-eq p0, v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method
