.class final Lcom/coloros/settings/feature/security/SimLockFeature$2;
.super Ljava/lang/Object;
.source "SimLockFeature.java"

# interfaces
.implements Lcom/coloros/settings/receiver/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/security/SimLockFeature;->onCreate(Lcom/android/settings/IccLockSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/IccLockSettings;

.field final synthetic b:Lcom/coloros/settings/feature/security/SimLockFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/security/SimLockFeature;Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/coloros/settings/feature/security/SimLockFeature$2;->b:Lcom/coloros/settings/feature/security/SimLockFeature;

    iput-object p2, p0, Lcom/coloros/settings/feature/security/SimLockFeature$2;->a:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSimPlugout slotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mSubscription="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/settings/feature/security/SimLockFeature$2;->b:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/security/SimLockFeature;->access$000(Lcom/coloros/settings/feature/security/SimLockFeature;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimLockFeature"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/feature/security/SimLockFeature$2;->a:Lcom/android/settings/IccLockSettings;

    invoke-virtual {p1}, Lcom/android/settings/IccLockSettings;->finish()V

    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 99
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "onSimPlugin slotId="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimLockFeature"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSimStateChanged slotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/SimLockFeature$2;->b:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-static {v1}, Lcom/coloros/settings/feature/security/SimLockFeature;->access$000(Lcom/coloros/settings/feature/security/SimLockFeature;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimLockFeature"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/security/SimLockFeature$2;->b:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/security/SimLockFeature;->access$000(Lcom/coloros/settings/feature/security/SimLockFeature;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/coloros/settings/feature/security/SimLockFeature$2;->a:Lcom/android/settings/IccLockSettings;

    iget-object p1, p1, Lcom/android/settings/IccLockSettings;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/coloros/settings/feature/security/SimLockFeature$2;->a:Lcom/android/settings/IccLockSettings;

    iget-object v0, v0, Lcom/android/settings/IccLockSettings;->f:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
