.class Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;
.super Landroid/os/Handler;
.source "KeyguardVerifyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 125
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$000(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)I

    move-result p1

    const/4 v0, 0x3

    const-string v1, "KeyguardVerifyManager"

    if-ge p1, v0, :cond_1

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "retry to checkRpmbWhenReboot, retryTimes="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$000(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->checkRpmbWhenReboot()V

    goto :goto_0

    :cond_1
    const-string p1, "already retry 3 times, need verify."

    .line 130
    invoke-static {v1, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$100(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Z)V

    .line 132
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$200(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager$1;->this$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->access$300(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;)Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyState;->getInfoMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityStatistic;->sendRebootState(Landroid/content/Context;Ljava/util/Map;)V

    :goto_0
    return-void
.end method
