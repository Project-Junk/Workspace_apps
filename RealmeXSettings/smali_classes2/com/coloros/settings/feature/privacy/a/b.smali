.class public final Lcom/coloros/settings/feature/privacy/a/b;
.super Lcom/coloros/settings/feature/privacy/a;
.source "HarassCallKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "key_harassment_interception"

    .line 31
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a/b;->a:Ljava/lang/String;

    const-string v0, "category_harass_intercept"

    .line 32
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a/b;->b:Ljava/lang/String;

    const-string v0, "harass_call"

    .line 33
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a/b;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/coloros/settings/feature/privacy/a/b;->d:Z

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 0

    const-string p1, ""

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/a/b;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oppo.phone.hide.call.harass.intercept"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
