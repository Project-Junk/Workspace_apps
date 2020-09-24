.class public final Lcom/color/common/recovery/CommonBackupAndRestoreUtils;
.super Ljava/lang/Object;


# static fields
.field public static final DIR_FILENAME:Ljava/lang/String; = "ColorEyeProtect"

.field public static final INSTANCE:Lcom/color/common/recovery/CommonBackupAndRestoreUtils;

.field public static final XML_FILENAME:Ljava/lang/String; = "ColorEyeProtect_backup.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/common/recovery/CommonBackupAndRestoreUtils;

    invoke-direct {v0}, Lcom/color/common/recovery/CommonBackupAndRestoreUtils;-><init>()V

    sput-object v0, Lcom/color/common/recovery/CommonBackupAndRestoreUtils;->INSTANCE:Lcom/color/common/recovery/CommonBackupAndRestoreUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
