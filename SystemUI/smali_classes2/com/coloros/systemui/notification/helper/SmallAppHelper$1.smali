.class Lcom/coloros/systemui/notification/helper/SmallAppHelper$1;
.super Landroid/database/ContentObserver;
.source "SmallAppHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/notification/helper/SmallAppHelper;->initHelper(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/notification/helper/SmallAppHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/notification/helper/SmallAppHelper;Landroid/os/Handler;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/SmallAppHelper$1;->this$0:Lcom/coloros/systemui/notification/helper/SmallAppHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 46
    sget-boolean p0, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz p0, :cond_0

    .line 47
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification--onChange--notification--selfChange:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmallAppHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    invoke-static {}, Lcom/coloros/systemui/notification/smallApp/SmallAppUtil;->updateSmallAppInfo()V

    return-void
.end method
