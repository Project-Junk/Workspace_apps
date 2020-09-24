.class public final Lcom/coloros/settings/a;
.super Ljava/lang/Object;
.source "FeatureOptions.java"


# static fields
.field public static a:Z = false

.field public static b:Z = false

.field public static c:Z = false

.field public static d:Z = false

.field public static e:Z = false

.field public static f:Z = false

.field public static g:Z = false

.field public static h:Z = false

.field public static i:Z = false

.field public static j:Z = false

.field public static k:Z = false

.field public static l:Z = false

.field public static m:Z = false

.field public static n:Z = false

.field public static o:Z = false

.field public static p:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.version.exp"

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/settings/a;->a:Z

    const-string v1, "oppo.specialversion.exp.sellmode"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/settings/a;->c:Z

    const-string v1, "oppo.permission.movistar"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/settings/a;->b:Z

    const/4 v1, 0x1

    .line 63
    sput-boolean v1, Lcom/coloros/settings/a;->e:Z

    .line 64
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aC(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/coloros/settings/a;->f:Z

    .line 65
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_0

    .line 67
    invoke-static {p0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ColorOSTelephonyManager;->isOppoSingleSimCard()Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->d:Z

    :cond_0
    const-string p0, "oppo.memory.unit.in.thousand"

    .line 71
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->g:Z

    const-string p0, "oppo.memory.unit.in.poweroften"

    .line 72
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->h:Z

    const-string p0, "realme.laboratory.support"

    .line 75
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->p:Z

    const-string p0, "oppo.customize.dmtf_tone_default.off.dialing"

    .line 77
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->i:Z

    const-string p0, "oppo.customize.function.time_show_12"

    .line 78
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->j:Z

    const-string p0, "oppo.oppo_disaplay_calculate_data_traffic.def.off"

    .line 79
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->k:Z

    const-string p0, "oppo.commcenter.mms.remove.oppo.mms"

    .line 80
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->l:Z

    const-string p0, "oppo.common.cota"

    .line 81
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->m:Z

    const-string p0, "coloros.customize.settings.gota.update.support"

    .line 82
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->n:Z

    const-string p0, "oppo.business.custom"

    .line 83
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/settings/a;->o:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
