.class final Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->a:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->a:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->a(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)I

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->a:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    if-ne p2, v1, :cond_1

    .line 1172
    iget-object p1, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    const p2, 0x7f121a0e

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 1161
    :pswitch_0
    iget-object p1, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 1180
    iget-object p2, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "com.android.internal.R.string.wifi_tether_configure_ssid_default"

    .line 1181
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1180
    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1183
    iget-object v2, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f121a70

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1184
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    .line 1183
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 1158
    :pswitch_1
    iget-object p1, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    const p2, 0x7f121a72

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 1168
    :pswitch_2
    iget-object p1, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    const p2, 0x7f1219c9

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 1165
    :pswitch_3
    iget-object p1, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    const p2, 0x7f121a73

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 1174
    :cond_1
    iget-object p1, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->b:Landroidx/preference/Preference;

    const p2, 0x7f1219ad

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
