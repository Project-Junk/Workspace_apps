.class final Lcom/android/settings/wifi/calling/c;
.super Lcom/android/settings/wifi/calling/a;
.source "LocationPolicyDisclaimer.java"


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/calling/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method final b()Z
    .locals 3

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/c;->c()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "show_wfc_location_privacy_policy_bool"

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v0, "shouldShow: false due to carrier config is false."

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/c;->a(Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v1, "carrier_default_wfc_ims_enabled_bool"

    .line 51
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "shouldShow: false due to WFC is on as default."

    .line 52
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/c;->a(Ljava/lang/String;)V

    return v2

    .line 56
    :cond_1
    invoke-super {p0}, Lcom/android/settings/wifi/calling/a;->b()Z

    move-result v0

    return v0
.end method

.method protected final d()I
    .locals 1

    const v0, 0x7f121912

    return v0
.end method

.method protected final e()I
    .locals 1

    const v0, 0x7f121911

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    const-string v0, "LocationPolicyDisclaimer"

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    const-string v0, "key_has_agreed_location_disclaimer"

    return-object v0
.end method
