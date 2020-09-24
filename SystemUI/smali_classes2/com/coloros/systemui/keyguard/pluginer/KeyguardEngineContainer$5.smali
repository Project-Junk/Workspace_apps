.class Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;
.super Ljava/lang/Object;
.source "KeyguardEngineContainer.java"

# interfaces
.implements Lcom/android/keyguard/base/HostCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deliverIntent(Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 1

    .line 472
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intent = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardEngineContainer"

    invoke-static {v0, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public keyguardDone(ZI)V
    .locals 3

    .line 453
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "keyguardDone actionAfterKeyguardDone = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardEngineContainer"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x64

    if-ne p2, p1, :cond_0

    .line 456
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 458
    :cond_0
    invoke-static {p2}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->createColorKeyguardIntent(I)Landroid/content/Intent;

    move-result-object p1

    .line 460
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyguardDone intent = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 462
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$800(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_2

    .line 464
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$900(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 465
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer$5;->this$0:Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;->access$900(Lcom/coloros/systemui/keyguard/pluginer/KeyguardEngineContainer;)Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->dismissKeyguard()V

    :cond_3
    :goto_2
    return-void
.end method

.method public userActivity()V
    .locals 0

    return-void
.end method
