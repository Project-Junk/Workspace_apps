.class public Lcom/coloros/backup/sdk/utils/Constants$LogTag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogTag"
.end annotation


# static fields
.field public static final BACKUP_ENGINE_TAG:Ljava/lang/String; = "backupEngine"

.field public static final CONTACT_TAG:Ljava/lang/String; = "contact"

.field public static final LOG_TAG:Ljava/lang/String; = "B&R"

.field public static final MESSAGE_TAG:Ljava/lang/String; = "message"

.field public static final MMS_TAG:Ljava/lang/String; = "mms"

.field public static final MUSIC_TAG:Ljava/lang/String; = "music"

.field public static final NOTEBOOK_TAG:Ljava/lang/String; = "notebook"

.field public static final PICTURE_TAG:Ljava/lang/String; = "picture"

.field public static final SMS_TAG:Ljava/lang/String; = "sms"


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/utils/Constants;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/utils/Constants;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/utils/Constants$LogTag;->this$0:Lcom/coloros/backup/sdk/utils/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
