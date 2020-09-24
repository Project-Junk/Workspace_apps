.class public Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;
.super Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
.source "ColorWifiEntryPreference.java"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/IntentFilter;

.field public c:Landroid/net/wifi/WifiManager;

.field public final i:Landroid/content/BroadcastReceiver;

.field private k:I

.field private l:Landroid/net/NetworkInfo$DetailedState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->k:I

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->l:Landroid/net/NetworkInfo$DetailedState;

    .line 81
    new-instance p2, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;-><init>(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;)V

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->i:Landroid/content/BroadcastReceiver;

    .line 49
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 36
    iput p2, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->k:I

    const/4 p2, 0x0

    .line 40
    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->l:Landroid/net/NetworkInfo$DetailedState;

    .line 81
    new-instance p2, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;

    invoke-direct {p2, p0}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference$1;-><init>(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;)V

    iput-object p2, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->i:Landroid/content/BroadcastReceiver;

    .line 44
    invoke-direct {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->l:Landroid/net/NetworkInfo$DetailedState;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->l:Landroid/net/NetworkInfo$DetailedState;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 58
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a:Landroid/content/Context;

    const-string v0, "wifi"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->c:Landroid/net/wifi/WifiManager;

    .line 61
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->b:Landroid/content/IntentFilter;

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->b:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->b:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->b:Landroid/content/IntentFilter;

    const-string v0, "android.net.wifi.WIFI_TO_DATA"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f1219f4

    .line 1104
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->setSummary(I)V

    return-void

    :cond_1
    const p1, 0x7f1219f3

    .line 1107
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->k:I

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 1116
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1117
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiSsid()Landroid/net/wifi/WifiSsid;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, p1, :cond_1

    .line 1119
    iget p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->k:I

    if-eq p1, v1, :cond_2

    .line 1122
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 1135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v2, 0x0

    .line 1137
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    sub-int/2addr v0, v1

    .line 1138
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1139
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 1125
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->c:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    if-ne p1, v1, :cond_2

    const p1, 0x7f1219f3

    .line 1126
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->setSummary(I)V

    return-void

    :cond_2
    const p1, 0x7f1219f4

    .line 1128
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->setSummary(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setSummary(I)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/preference/ColorWifiEntryPreference;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
