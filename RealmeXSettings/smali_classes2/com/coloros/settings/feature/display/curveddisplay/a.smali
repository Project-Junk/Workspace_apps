.class public final Lcom/coloros/settings/feature/display/curveddisplay/a;
.super Ljava/lang/Object;
.source "OppoAppUtils.java"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static c:Ljava/lang/Boolean;

.field private static d:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 45
    sget-object v0, Lcom/coloros/settings/feature/display/curveddisplay/a;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "com.android.incallui"

    .line 46
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/display/curveddisplay/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/feature/display/curveddisplay/a;->b:Ljava/lang/Boolean;

    .line 48
    :cond_0
    sget-object p0, Lcom/coloros/settings/feature/display/curveddisplay/a;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .line 66
    invoke-static {}, Lcom/coloros/settings/utils/al;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "OppoAppUtils"

    if-eqz p0, :cond_3

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v4, 0x100000

    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "isSystemAppEnabledForExp : e = "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oppo/c/e/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_2

    .line 81
    iget-boolean p0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1

    :cond_3
    :goto_2
    const-string p0, "isSystemAppEnabledForExp return true for context is null or package name is null!"

    .line 71
    invoke-static {v0, p0}, Lcom/oppo/c/e/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
