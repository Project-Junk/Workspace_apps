.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;
.super Landroid/content/BroadcastReceiver;
.source "OnScreenFingerprintIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 64
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$002(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;Z)Z

    .line 65
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)V

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UI update, mPreventionShow="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-static {p2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$000(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Keyguard"

    const-string v0, "OnScreenFingerprintIcon"

    invoke-static {p2, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)I

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Landroid/app/AlarmManager;

    move-result-object p1

    const/4 p2, 0x2

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon$1;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;

    .line 70
    invoke-static {p0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;->access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintIcon;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 68
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method
