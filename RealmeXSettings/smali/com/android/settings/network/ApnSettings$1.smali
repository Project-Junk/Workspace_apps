.class final Lcom/android/settings/network/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/network/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/ApnSettings;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x3e9

    if-eqz p1, :cond_2

    .line 160
    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->a(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    .line 161
    sget-object p2, Lcom/android/settings/network/ApnSettings$3;->a:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->d()Z

    move-result p1

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->a(Lcom/android/settings/network/ApnSettings;)V

    return-void

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p1, v0}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    :goto_0
    return-void

    .line 170
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.telephony.action.SUBSCRIPTION_CARRIER_IDENTITY_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 172
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->d()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, -0x1

    const-string v0, "android.telephony.extra.SUBSCRIPTION_ID"

    .line 173
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 175
    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2}, Lcom/android/settings/network/ApnSettings;->b(Lcom/android/settings/network/ApnSettings;)I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 177
    iget-object p2, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {p2, p1}, Lcom/android/settings/network/ApnSettings;->a(Lcom/android/settings/network/ApnSettings;I)I

    .line 178
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->b(Lcom/android/settings/network/ApnSettings;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->b(Lcom/android/settings/network/ApnSettings;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/network/ApnSettings;->a(Lcom/android/settings/network/ApnSettings;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 180
    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->a(Lcom/android/settings/network/ApnSettings;)V

    return-void

    .line 182
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "org.codeaurora.intent.action.ACTION_ENHANCE_4G_SWITCH"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 183
    invoke-static {}, Lcom/android/settings/network/ApnSettings;->d()Z

    move-result p1

    if-nez p1, :cond_5

    .line 184
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/ApnSettings;->a(Lcom/android/settings/network/ApnSettings;)V

    return-void

    .line 186
    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/ApnSettings$1;->a:Lcom/android/settings/network/ApnSettings;

    invoke-virtual {p1, v0}, Lcom/android/settings/network/ApnSettings;->showDialog(I)V

    :cond_6
    return-void
.end method
