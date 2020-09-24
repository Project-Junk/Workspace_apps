.class public final Lcom/coloros/settings/utils/h;
.super Ljava/lang/Object;
.source "ColorCustomizeFeatureUtils.java"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/lang/Boolean;

.field private static h:Ljava/lang/Boolean;

.field private static i:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/coloros/settings/utils/h;->d:Ljava/lang/Boolean;

    .line 57
    sput-object v0, Lcom/coloros/settings/utils/h;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 87
    sget-object v0, Lcom/coloros/settings/utils/h;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "coloros.customize.settings.support.ringtone_customize"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/utils/h;->b:Ljava/lang/Boolean;

    .line 90
    :cond_0
    sget-object p0, Lcom/coloros/settings/utils/h;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/h;->k()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 2

    .line 68
    sget-object v0, Lcom/coloros/settings/utils/h;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 2030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.oppo.sos"

    .line 69
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/al;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "oppo.common_center.disable.sos.function"

    .line 70
    invoke-static {v0}, Lcom/coloros/settings/utils/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 69
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/h;->a:Ljava/lang/Boolean;

    .line 72
    :cond_2
    sget-object v0, Lcom/coloros/settings/utils/h;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "coloros.customize.settings.support.ringtone_change_by_sim"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c()Z
    .locals 2

    .line 78
    invoke-static {}, Lcom/coloros/settings/utils/h;->k()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "coloros.customize.settings.support.imsi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    .line 82
    invoke-static {}, Lcom/coloros/settings/utils/h;->k()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "coloros.customize.settings.support.sms_number"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .locals 1

    .line 98
    sget-object v0, Lcom/coloros/settings/utils/h;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "coloros.customize.settings.wfc_dialog.support"

    .line 99
    invoke-static {v0}, Lcom/coloros/settings/utils/h;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/h;->c:Ljava/lang/Boolean;

    .line 101
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/h;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .line 105
    sget-object v0, Lcom/coloros/settings/utils/h;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "coloros.customize.settings.origin_kernel_version"

    .line 106
    invoke-static {v0}, Lcom/coloros/settings/utils/h;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/h;->d:Ljava/lang/Boolean;

    .line 108
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/h;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .locals 1

    .line 112
    sget-object v0, Lcom/coloros/settings/utils/h;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "oppo.customize.hardware_software_version_show"

    .line 113
    invoke-static {v0}, Lcom/coloros/settings/utils/h;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/h;->e:Ljava/lang/Boolean;

    .line 115
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/h;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .locals 2

    .line 119
    sget-object v0, Lcom/coloros/settings/utils/h;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/coloros/settings/utils/h;->k()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "coloros.customize.settings.signal_strength.hide"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/h;->f:Ljava/lang/Boolean;

    .line 122
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/h;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 2

    .line 126
    sget-object v0, Lcom/coloros/settings/utils/h;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Lcom/coloros/settings/utils/h;->k()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "coloros.customize.settings.devices_identify.hide"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/h;->g:Ljava/lang/Boolean;

    .line 129
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/h;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 2

    .line 133
    sget-object v0, Lcom/coloros/settings/utils/h;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Lcom/coloros/settings/utils/h;->k()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "coloros.customize.settings.ktv_loop_back.hide"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/h;->h:Ljava/lang/Boolean;

    .line 136
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/h;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static k()Landroid/content/pm/PackageManager;
    .locals 2

    .line 1030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 1049
    sget-object v1, Lcom/coloros/settings/utils/h;->i:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    .line 1050
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/h;->i:Landroid/content/pm/PackageManager;

    .line 1052
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/h;->i:Landroid/content/pm/PackageManager;

    return-object v0
.end method
