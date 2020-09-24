.class public Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;)V

    return-void
.end method

.method private a(Landroidx/preference/EditTextPreference;)V
    .locals 2

    .line 110
    check-cast p1, Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setText(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3106
    iput-boolean v0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;->c:Z

    .line 114
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setVisible(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4106
    iput-boolean v0, p1, Lcom/android/settings/widget/ValidatedEditTextPreference;->c:Z

    const v1, 0x7f1219c8

    .line 118
    invoke-virtual {p1, v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setSummary(I)V

    .line 119
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setVisible(Z)V

    return-void
.end method

.method private static b()Ljava/lang/String;
    .locals 4

    .line 104
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 87
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    .line 88
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->g:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a(Landroidx/preference/EditTextPreference;)V

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    return-object p1

    :cond_2
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public final a()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    .line 59
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 1115
    iput-object p0, v0, Lcom/android/settings/widget/ValidatedEditTextPreference;->a:Lcom/android/settings/widget/ValidatedEditTextPreference$b;

    .line 60
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    const/4 v1, 0x1

    .line 2102
    iput-boolean v1, v0, Lcom/android/settings/widget/ValidatedEditTextPreference;->b:Z

    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    .line 2106
    iput-boolean v1, v0, Lcom/android/settings/widget/ValidatedEditTextPreference;->c:Z

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->g:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a(Landroidx/preference/EditTextPreference;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->g:Landroidx/preference/Preference;

    if-eqz p1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wifi_tether_network_password"

    return-object v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 1

    .line 3057
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3061
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->g:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->a(Landroidx/preference/EditTextPreference;)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->f:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$a;->onTetherConfigUpdated()V

    const/4 p1, 0x1

    return p1
.end method
