.class public final Lcom/coloros/settings/utils/bh;
.super Ljava/lang/Object;
.source "SysFeatureUtils.java"


# static fields
.field private static a:Landroid/content/pm/PackageManager;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;

.field private static e:Ljava/lang/Boolean;

.field private static f:Ljava/lang/Boolean;

.field private static g:Ljava/lang/Boolean;

.field private static h:Ljava/lang/Boolean;

.field private static i:Ljava/lang/Boolean;

.field private static j:Ljava/lang/Boolean;

.field private static k:Ljava/lang/Boolean;

.field private static l:Ljava/lang/Boolean;

.field private static m:Ljava/lang/Boolean;

.field private static n:Ljava/lang/Boolean;

.field private static o:Ljava/lang/Boolean;

.field private static p:Ljava/lang/Boolean;

.field private static q:Ljava/lang/Boolean;

.field private static r:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static A()Z
    .locals 1

    const-string v0, "coloros.customize.systemui.airplanemode.confirm"

    .line 299
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static B()Z
    .locals 1

    const-string v0, "oppo.customize.oppo_backup_restore.disable"

    .line 303
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static C()Z
    .locals 2

    .line 307
    sget-object v0, Lcom/coloros/settings/utils/bh;->j:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 7030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 6071
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.settings.mms.emergency.support"

    .line 308
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->j:Ljava/lang/Boolean;

    .line 310
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static D()Z
    .locals 1

    const-string v0, "oppo.ct.client"

    .line 314
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static E()Z
    .locals 1

    const-string v0, "oppo.all.client"

    .line 318
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static F()Z
    .locals 1

    .line 323
    sget-object v0, Lcom/coloros/settings/utils/bh;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "oppo.appdisable.support"

    .line 324
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->m:Ljava/lang/Boolean;

    .line 326
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->m:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static G()Z
    .locals 1

    .line 332
    sget-object v0, Lcom/coloros/settings/utils/bh;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 8030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 333
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->ae(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->l:Ljava/lang/Boolean;

    .line 335
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static H()Z
    .locals 1

    .line 340
    sget-object v0, Lcom/coloros/settings/utils/bh;->o:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "oppo.dirac.support.version2"

    .line 341
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->o:Ljava/lang/Boolean;

    .line 343
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->o:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static I()Z
    .locals 2

    .line 347
    sget-object v0, Lcom/coloros/settings/utils/bh;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 9030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 8071
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.karaoke_v2.support"

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->n:Ljava/lang/Boolean;

    .line 350
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->n:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static J()Z
    .locals 2

    .line 354
    sget-object v0, Lcom/coloros/settings/utils/bh;->p:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 10030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 9071
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.multimedia.dolby.sdk3.5.6.support"

    .line 355
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->p:Ljava/lang/Boolean;

    .line 357
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static K()Z
    .locals 2

    .line 374
    sget-object v0, Lcom/coloros/settings/utils/bh;->r:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 11030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 10071
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.phone.force.remove.5g"

    .line 375
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->r:Ljava/lang/Boolean;

    .line 377
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->r:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static a()Z
    .locals 1

    .line 96
    sget-object v0, Lcom/coloros/settings/utils/bh;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "oppo.breeno.disable"

    .line 97
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->h:Ljava/lang/Boolean;

    .line 99
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.hardware.telephony.ims"

    .line 200
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/bh;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 92
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2030
    :cond_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 1071
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 1

    .line 103
    sget-object v0, Lcom/coloros/settings/utils/bh;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "oppo.settings.ocloud.not.support"

    .line 104
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->b:Ljava/lang/Boolean;

    .line 106
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.multimedia.record.channel.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static c()Z
    .locals 1

    .line 111
    sget-object v0, Lcom/coloros/settings/utils/bh;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "oppo.multiapp.support"

    .line 112
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->c:Ljava/lang/Boolean;

    .line 114
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "oppo.button.light.support"

    .line 254
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/bh;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1

    if-nez p0, :cond_0

    .line 364
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 366
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->q:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "realme.settings.camera.hal3.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/utils/bh;->q:Ljava/lang/Boolean;

    .line 369
    :cond_1
    sget-object p0, Lcom/coloros/settings/utils/bh;->q:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static d()Z
    .locals 1

    .line 118
    sget-object v0, Lcom/coloros/settings/utils/bh;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "oppo.settings.resizeable_screen.not.support"

    .line 119
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->d:Ljava/lang/Boolean;

    .line 121
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static e(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1

    .line 75
    sget-object v0, Lcom/coloros/settings/utils/bh;->a:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/utils/bh;->a:Landroid/content/pm/PackageManager;

    .line 78
    :cond_0
    sget-object p0, Lcom/coloros/settings/utils/bh;->a:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static e()Z
    .locals 1

    .line 125
    invoke-static {}, Lcom/coloros/settings/utils/bh;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string v0, "oppo.settings.ota.not.support"

    .line 129
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->e:Ljava/lang/Boolean;

    .line 131
    :cond_1
    invoke-static {}, Lcom/coloros/settings/custom/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/coloros/settings/utils/bh;->e:Ljava/lang/Boolean;

    .line 134
    :cond_2
    sget-object v0, Lcom/coloros/settings/utils/bh;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 1

    .line 138
    sget-boolean v0, Lcom/coloros/settings/a;->n:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static g()Z
    .locals 1

    const-string v0, "mtk.gemini.support"

    .line 2142
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "oppo.qualcomm.gemini.support"

    .line 2146
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static h()Z
    .locals 1

    const-string v0, "oppo.hardware.motor.support"

    .line 177
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .locals 1

    const-string v0, "oppo.hardware.motor.breathled.support"

    .line 181
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .locals 1

    const-string v0, "oppo.feature.vibrator.waveform.support"

    .line 185
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .locals 1

    const-string v0, "oppo.systemui.disable.edgepanel"

    .line 196
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .locals 1

    const-string v0, "oppo.display.colormode.support"

    .line 204
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .locals 1

    const-string v0, "oppo.display.dcbacklight.support"

    .line 208
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .locals 1

    const-string v0, "oppo.intelligent.color.temperature.support"

    .line 212
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static o()Z
    .locals 1

    const-string v0, "oppo.resolutionswitch.feature.support"

    .line 216
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 1

    const-string v0, "oppo.display.screen.defaultsmartmode"

    .line 220
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static q()Z
    .locals 1

    const-string v0, "oppo.display.screen.120hz.support"

    .line 224
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static r()Z
    .locals 1

    const-string v0, "oppo.rm.display.colormode.oled.support"

    .line 230
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static s()Z
    .locals 1

    const-string v0, "oppo.display.adaptivecolor.support"

    .line 235
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static t()Z
    .locals 1

    const-string v0, "oppo.display.cinema.mode.support"

    .line 239
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static u()Z
    .locals 1

    const-string v0, "oppo.floatassistant.airview.disable"

    .line 258
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static v()Z
    .locals 2

    .line 262
    sget-object v0, Lcom/coloros/settings/utils/bh;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 4030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 3071
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->f:Ljava/lang/Boolean;

    .line 265
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .locals 2

    .line 269
    sget-object v0, Lcom/coloros/settings/utils/bh;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 5030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 4071
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.keyguard.disable.pictorial"

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->g:Ljava/lang/Boolean;

    .line 272
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static x()Z
    .locals 2

    .line 276
    sget-object v0, Lcom/coloros/settings/utils/bh;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 6030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 5071
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->e(Landroid/content/Context;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.phone.5g.support"

    .line 277
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->i:Ljava/lang/Boolean;

    .line 279
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static y()Z
    .locals 1

    const-string v0, "oppo.systemui.statusbar.circle_power_view"

    .line 283
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static z()Z
    .locals 1

    .line 288
    sget-object v0, Lcom/coloros/settings/utils/bh;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "realme.multimedia.dualheadphone.lite"

    .line 289
    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bh;->k:Ljava/lang/Boolean;

    .line 291
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/bh;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
