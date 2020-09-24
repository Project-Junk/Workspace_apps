.class Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$2;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImplEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx$2;->this$0:Lcom/coloros/systemui/statusbar/policy/NetworkControllerImplEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x1e0e9a15

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x4726bd2a

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.oppo.incallui.cu.hd.audio"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_1
    const-string p1, "com.android.ims.IMS_STATE_CHANGED"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_3

    goto :goto_2

    :cond_3
    const-string p0, "incallui_cu_hd_audio_show"

    .line 130
    invoke-virtual {p2, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ACTION_INCALLUI_CU_HD_AUDIO, show:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string p2, "NetworkControllerImplEx"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
