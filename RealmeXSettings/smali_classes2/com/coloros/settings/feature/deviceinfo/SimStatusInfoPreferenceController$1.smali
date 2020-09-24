.class final Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 123
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSubscriptionsChanged()V
    .locals 4

    const-string v0, "SimStatusInfoPreferenceController"

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    .line 128
    invoke-static {v3}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 127
    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 129
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;I)I

    .line 131
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 132
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->d(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v3}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->c(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "onSubscriptionsChanged"

    .line 133
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->e(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->f(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method
