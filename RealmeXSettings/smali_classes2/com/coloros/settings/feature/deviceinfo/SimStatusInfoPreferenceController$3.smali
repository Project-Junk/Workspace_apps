.class final Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;
.super Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;
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

    .line 193
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$CapabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onCapabilitiesStatusChanged mConfig "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->g(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimStatusInfoPreferenceController"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b()Landroid/telephony/ServiceState;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/ServiceState;)V

    .line 202
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->h(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->i(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->j(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$3;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;I)V

    :cond_1
    return-void
.end method
