.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;
.super Lcom/coloros/settings/feature/controller/a;
.source "ColorWifiIpAddressPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# instance fields
.field private c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/IntentFilter;

.field private g:Landroid/os/Handler;

.field private h:Landroid/net/ConnectivityManager;

.field private i:Z

.field private j:Landroidx/preference/PreferenceFragmentCompat;

.field private final k:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    const-string v2, "android.net.wifi.STATE_CHANGE"

    .line 63
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    .line 87
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->i:Z

    .line 76
    new-instance p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->k:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->j:Landroidx/preference/PreferenceFragmentCompat;

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->h:Landroid/net/ConnectivityManager;

    .line 90
    new-instance p1, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$2;

    invoke-direct {p1, p0, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController$2;-><init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;)Landroid/os/Handler;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->g:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 135
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->h:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c:Ljava/util/TreeSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->d:Ljava/util/TreeSet;

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    :cond_1
    iput-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c:Ljava/util/TreeSet;

    .line 141
    iput-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->d:Ljava/util/TreeSet;

    .line 142
    iput-boolean v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->i:Z

    .line 144
    :cond_2
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c(Landroidx/preference/PreferenceScreen;)V

    return-void

    .line 147
    :cond_3
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c:Ljava/util/TreeSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->d:Ljava/util/TreeSet;

    if-eqz v0, :cond_6

    .line 150
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 151
    :cond_5
    iput-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c:Ljava/util/TreeSet;

    .line 152
    iput-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->d:Ljava/util/TreeSet;

    .line 153
    iput-boolean v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->i:Z

    .line 155
    :cond_6
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c(Landroidx/preference/PreferenceScreen;)V

    return-void

    .line 159
    :cond_7
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 160
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 162
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 163
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 164
    instance-of v5, v4, Ljava/net/Inet6Address;

    if-eqz v5, :cond_8

    .line 165
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    :cond_8
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c:Ljava/util/TreeSet;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 172
    :cond_a
    invoke-virtual {v2}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c:Ljava/util/TreeSet;

    .line 173
    iput-boolean v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->i:Z

    .line 176
    :cond_b
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->d:Ljava/util/TreeSet;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 177
    :cond_c
    invoke-virtual {v3}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->d:Ljava/util/TreeSet;

    .line 178
    iput-boolean v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->i:Z

    .line 180
    :cond_d
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;)V
    .locals 1

    .line 1131
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->j:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->b(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->e:[Ljava/lang/String;

    return-object v0
.end method

.method private c(Landroidx/preference/PreferenceScreen;)V
    .locals 8

    .line 186
    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->i:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->i:Z

    .line 188
    invoke-virtual {p1}, Landroidx/preference/PreferenceScreen;->removeAll()V

    .line 190
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d0093

    .line 191
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 192
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 194
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c:Ljava/util/TreeSet;

    const v2, 0x7f0d00a7

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->d:Ljava/util/TreeSet;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v1, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 197
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 198
    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    .line 199
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f121919

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120781

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 201
    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    .line 202
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->c:Ljava/util/TreeSet;

    if-eqz v1, :cond_2

    .line 207
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    new-instance v5, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v6, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {v5, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x2

    .line 211
    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(I)V

    .line 212
    invoke-virtual {v5, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 213
    invoke-virtual {v5, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    const-string v6, "ip_address_4"

    .line 214
    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setKey(Ljava/lang/String;)V

    .line 215
    iget-object v6, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f12191a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v5, v4}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 217
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->d:Ljava/util/TreeSet;

    if-eqz v1, :cond_4

    .line 223
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 224
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 225
    new-instance v5, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iget-object v6, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {v5, v3}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-virtual {v5, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setPersistent(Z)V

    .line 228
    invoke-virtual {v5, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setSelectable(Z)V

    .line 229
    invoke-virtual {v5, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Z)V

    const-string v6, "ip_address_6"

    .line 230
    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setKey(Ljava/lang/String;)V

    .line 231
    iget-object v6, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f12191b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {v5, v4}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    .line 233
    invoke-virtual {v5, v2}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->setLayoutResource(I)V

    .line 234
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->b(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->g:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->f:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->f:Landroid/content/IntentFilter;

    .line 116
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->e:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 117
    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->f:Landroid/content/IntentFilter;

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->k:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorWifiIpAddressPreferenceController;->f:Landroid/content/IntentFilter;

    const/4 v3, 0x0

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
