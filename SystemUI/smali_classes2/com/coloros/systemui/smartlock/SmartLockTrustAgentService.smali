.class public Lcom/coloros/systemui/smartlock/SmartLockTrustAgentService;
.super Landroid/service/trust/TrustAgentService;
.source "SmartLockTrustAgentService.java"


# static fields
.field private static final DURING_MILLS:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SmartLockTrustAgentService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/service/trust/TrustAgentService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "request_trust_agent_cmd"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute command "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartLockTrustAgentService"

    invoke-static {v2, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "grant_trust"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/smartlock/SmartLockTrustAgentService;->setManagingTrust(Z)V

    const-wide/32 v0, 0x36ee80

    const/4 v2, 0x0

    const-string v3, ""

    .line 38
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/coloros/systemui/smartlock/SmartLockTrustAgentService;->grantTrust(Ljava/lang/CharSequence;JI)V

    goto :goto_0

    :cond_0
    const-string v1, "revoke_trust"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/coloros/systemui/smartlock/SmartLockTrustAgentService;->revokeTrust()V

    .line 43
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/service/trust/TrustAgentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method
