.class public final Lcom/coloros/settings/utils/p;
.super Ljava/lang/Object;
.source "ExpSettingsUtils.java"


# static fields
.field private static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    sput-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppoex.afterservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.android.dreams.basic"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.coloros.bootreg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.mobilesystemservice.android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.android.providers.partnerbookmarks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.android.managedprovisioning"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppo.dirac"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "se.dirac.acs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.color.uiengine"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.docs"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.colors.forgotpasswordexp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.android.mms.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.mobilesystemservice.install"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppo.locationpicker"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.google.android.feedback"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.android.captiveportallogin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.mediatek.omacp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppo.translate.google"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppo.marketcheck"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.nearme.themespacelib"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.nearme.sync"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.coloros.sau"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.google.android.tag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.google.android.configupdater"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.dropboxchmod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.criticallog"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppo.sdcardboot"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.qti.qualcomm.datastatusnotification"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.google.android.setupwizard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.android.carrierconfig"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.qti.dpmserviceapp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.android.calllogbackup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppo.freefallingmonitor"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.qualcomm.qti.modemtestmode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppo.rftoolkit"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.wifi.rxsenstest"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.oppo.partnerbrowsercustomizations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.qualcomm.uimremoteclient"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    const-string v1, "com.qualcomm.uimremoteserver"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    .line 249
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 250
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const v1, 0x7f121755

    .line 252
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f121756

    .line 253
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.oppo.operator"

    const-string v1, "CN"

    .line 123
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver$Stub;)V
    .locals 7

    const-string v0, "package"

    .line 258
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v3, -0x1

    const/16 v5, 0x3e7

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 260
    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 262
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "removeMultiApp e = "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ExpSettingsUtils"

    invoke-static {p1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 241
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    .line 242
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 223
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 227
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/p;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.cootek.smartinputv5.language.oem."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    const-string v0, "null"

    const-string v1, "ro.oppo.operator"

    .line 1200
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1202
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.operator.display."

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 1208
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/p;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ro.operator.display.SGOP"

    .line 1209
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "ro.oppo.operator"

    const-string v1, "null"

    .line 297
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0300d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f030077

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 301
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 302
    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string p0, "NZ"

    return-object p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 306
    :cond_1
    array-length v1, v2

    move v3, v4

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v5, v2, v3

    .line 307
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string p0, "SG"

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 311
    :cond_3
    array-length v1, p0

    :goto_2
    if-ge v4, v1, :cond_5

    aget-object v2, p0, v4

    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "EE"

    return-object p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()Z
    .locals 7

    const-string v0, "ro.oppo.operator"

    const-string v1, "null"

    .line 286
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SGOP"

    const-string v2, "STARHUB"

    const-string v3, "SINGTEL"

    const-string v4, "M1"

    const-string v5, "MYREPUBLIC"

    const-string v6, "TPG"

    .line 287
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 289
    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
