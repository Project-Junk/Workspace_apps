.class Lcom/coloros/systemui/notification/helper/SoundHelper$2;
.super Landroid/database/ContentObserver;
.source "SoundHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/SoundHelper;->initHelper(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/SoundHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/SoundHelper;Landroid/os/Handler;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/SoundHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/SoundHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification--onChange--notification_sound--selfChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notification"

    const-string v1, "Notification--SoundHelper"

    invoke-static {v0, v1, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/SoundHelper$2;->this$0:Lcom/coloros/systemui/notification/helper/SoundHelper;

    invoke-static {p0}, Lcom/coloros/systemui/notification/helper/SoundHelper;->access$000(Lcom/coloros/systemui/notification/helper/SoundHelper;)V

    return-void
.end method
