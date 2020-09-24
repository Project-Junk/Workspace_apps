.class public final Lcom/coloros/settings/feature/othersettings/accessibility/e;
.super Lcom/coloros/settings/feature/othersettings/accessibility/a;
.source "TalkBackInstallWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.talkback.guide.install.support"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/e;->a:Landroid/content/Context;

    const v1, 0x7f121678

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.marvin.talkback"

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.marvin.talkback.TalkBackService"

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/e;->a:Landroid/content/Context;

    const v1, 0x7f12167a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
