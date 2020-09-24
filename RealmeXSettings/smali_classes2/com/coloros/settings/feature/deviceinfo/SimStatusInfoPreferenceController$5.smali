.class final Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatusInfoPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V
    .locals 0

    .line 821
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataConnectionStateChanged(I)V
    .locals 2

    .line 824
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDataConnectionStateChanged, state = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatusInfoPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;I)V

    .line 831
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->m(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    const-string v0, "SimStatusInfoPreferenceController"

    const-string v1, "onServiceStateChanged"

    .line 848
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 852
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)V

    .line 853
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    .line 854
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)V

    .line 855
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)V

    .line 856
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    .line 1871
    iget-object v0, p1, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    .line 856
    invoke-static {p1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/SignalStrength;)V

    .line 857
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 858
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;I)V

    :cond_1
    return-void
.end method

.method public final onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSignalStrengthsChanged, signalStrength = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimStatusInfoPreferenceController"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 843
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$5;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->n(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/SignalStrength;)V

    return-void
.end method
