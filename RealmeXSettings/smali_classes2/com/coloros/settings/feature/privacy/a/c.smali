.class public final Lcom/coloros/settings/feature/privacy/a/c;
.super Lcom/coloros/settings/feature/privacy/a;
.source "IntelligentNumberKey.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/settings/feature/privacy/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const-string v0, "key_intelligent_identification_contact"

    .line 33
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a/c;->a:Ljava/lang/String;

    const-string v0, "category_harass_intercept"

    .line 34
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a/c;->b:Ljava/lang/String;

    const-string v0, "strange_number"

    .line 35
    iput-object v0, p0, Lcom/coloros/settings/feature/privacy/a/c;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/coloros/settings/feature/privacy/a/c;->d:Z

    return-void
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 4

    if-lez p2, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10004a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 42
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/a/c;->e:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/privacy/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "oppo.common_center.number.recognition"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
