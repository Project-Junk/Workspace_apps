.class Lcom/coloros/systemui/smartlock/SmartlockMediator$3;
.super Lcom/coloros/systemui/smartlock/ISmartLockCallback$Stub;
.source "SmartlockMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/smartlock/SmartlockMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/smartlock/SmartlockMediator;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$3;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-direct {p0}, Lcom/coloros/systemui/smartlock/ISmartLockCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public process(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    const-string v0, "active"

    .line 197
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "stop"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string p1, "SmartlockMediator"

    const-string v1, "receive trust place state changed. updateSmartlockTrustState."

    .line 198
    invoke-static {p1, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 200
    iget-object p2, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$3;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {p2}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$200(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 201
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$3;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {p0, p1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$202(Lcom/coloros/systemui/smartlock/SmartlockMediator;Z)Z

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$3;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-virtual {v0, p1}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->getActiveTypeString(I)Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object p0, p0, Lcom/coloros/systemui/smartlock/SmartlockMediator$3;->this$0:Lcom/coloros/systemui/smartlock/SmartlockMediator;

    invoke-static {p0}, Lcom/coloros/systemui/smartlock/SmartlockMediator;->access$300(Lcom/coloros/systemui/smartlock/SmartlockMediator;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "smartlock_status"

    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/keyguard/statistic/KeyguardStatistic;->sendEventData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method
