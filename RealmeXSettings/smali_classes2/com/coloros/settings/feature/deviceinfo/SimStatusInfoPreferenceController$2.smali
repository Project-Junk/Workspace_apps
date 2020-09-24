.class final Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$2;
.super Landroid/content/BroadcastReceiver;
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

    .line 170
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$2;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    .line 174
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$2;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-static {p2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p2, "message"

    .line 182
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellBroadcastMessage;

    if-eqz p1, :cond_2

    .line 183
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$2;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    .line 184
    invoke-static {p2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    invoke-virtual {p1}, Landroid/telephony/CellBroadcastMessage;->getSubId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 185
    invoke-virtual {p1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController$2;->a:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    const-string v0, "latest_area_info_value"

    invoke-static {p2, v0, p1}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
