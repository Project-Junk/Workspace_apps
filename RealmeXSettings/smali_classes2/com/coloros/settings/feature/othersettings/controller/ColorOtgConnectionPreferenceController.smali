.class public Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorOtgConnectionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;
    }
.end annotation


# static fields
.field public static final KEY_OTG_CONNECTION_ENTRANCE:Ljava/lang/String; = "oppo_otg_connection"

.field private static final SYS_OPPO_OTG_ENABLE:Ljava/lang/String; = "sys.oppo.otg_support"

.field public static final SYS_OPPO_OTG_SUPPORT:Ljava/lang/String; = "persist.vendor.otg.switch"

.field private static final TAG:Ljava/lang/String; = "ColorOtgConnectionPreferenceController"


# instance fields
.field private mChangeObserver:Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;

.field private final mHandler:Landroid/os/Handler;

.field private mOtgPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

.field private mTypeCReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "oppo_otg_connection"

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->updateOtgTypeCState()V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mOtgPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-object p0
.end method

.method private static getOtgStatus(Landroid/content/Context;)Z
    .locals 1

    const-string p0, "persist.vendor.otg.switch"

    const/4 v0, 0x0

    .line 145
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static getTypeCState()I
    .locals 6

    const-string v0, "readTypeNode IOException"

    const-string v1, "ColorOtgConnectionPreferenceController"

    const-string v2, "/sys/class/power_supply/usb/otg_online"

    const/4 v3, 0x0

    .line 162
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 173
    :catch_0
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-object v4, v3

    .line 167
    :catch_2
    :try_start_3
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    goto :goto_0

    :catch_3
    move-object v4, v3

    :catch_4
    const-string v2, "readTypeNode FileNotFoundException"

    .line 165
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_2

    :catch_5
    const-string v2, "readTypeNode NumberFormatException"

    .line 183
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    :goto_2
    rem-int/lit8 v0, v0, 0x2

    return v0

    :catchall_1
    move-exception v2

    move-object v3, v4

    :goto_3
    if-eqz v3, :cond_2

    .line 171
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    .line 173
    :catch_6
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_2
    :goto_4
    throw v2
.end method

.method public static isOtgMenuSupported(Landroid/content/Context;)Z
    .locals 4

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.otg.connection.menu.support"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oppo.customize.function.disable_otg"

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isOtgMenuSupported otgMenuSupported="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " customizeDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ColorOtgConnectionPreferenceController"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->isTypeCSupported(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-nez v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isTypeCSupported(Landroid/content/Context;)Z
    .locals 1

    .line 140
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.typecotg.connection.menu.support"

    .line 141
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private updateOtgTypeCState()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mOtgPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->getOtgStatus(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->isTypeCSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mOtgPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-static {}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->getTypeCState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private static writeOtgStatus(ZLandroid/content/Context;)V
    .locals 2

    .line 125
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.vendor.otg.switch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sys.oppo.otg_support"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "oppo_otg_connection"

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mOtgPreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    .line 78
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->updateOtgTypeCState()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->isOtgMenuSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->getOtgStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    new-instance p1, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;-><init>(Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mChangeObserver:Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;

    .line 65
    new-instance p1, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$1;-><init>(Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mTypeCReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mChangeObserver:Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 98
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->isTypeCSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mTypeCReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 84
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->updateOtgTypeCState()V

    .line 85
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sys.oppo.otg_support"

    .line 86
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mChangeObserver:Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController$a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 88
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->isTypeCSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mTypeCReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->writeOtgStatus(ZLandroid/content/Context;)V

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/controller/ColorOtgConnectionPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "oppo_otg_connection"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    return p1
.end method
