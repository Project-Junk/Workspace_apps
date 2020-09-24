.class public final Lcom/coloros/settings/feature/controller/b;
.super Lcom/coloros/settings/feature/controller/a;
.source "TypedPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/controller/b$a;,
        Lcom/coloros/settings/feature/controller/b$b;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private g:Z

.field private h:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/controller/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/controller/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/controller/b;I)V
    .locals 0

    .line 2092
    iput p1, p0, Lcom/coloros/settings/feature/controller/b;->f:I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/controller/b;Ljava/lang/String;)V
    .locals 0

    .line 2101
    iput-object p1, p0, Lcom/coloros/settings/feature/controller/b;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/controller/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2096
    iput-object p1, p0, Lcom/coloros/settings/feature/controller/b;->b:Ljava/lang/String;

    .line 2097
    iput-object p2, p0, Lcom/coloros/settings/feature/controller/b;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/controller/b;Z)V
    .locals 0

    .line 2105
    iput-boolean p1, p0, Lcom/coloros/settings/feature/controller/b;->e:Z

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/controller/b;Ljava/lang/String;)V
    .locals 0

    .line 3088
    iput-object p1, p0, Lcom/coloros/settings/feature/controller/b;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/controller/b;Z)V
    .locals 0

    .line 2109
    iput-boolean p1, p0, Lcom/coloros/settings/feature/controller/b;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 75
    iget v0, p0, Lcom/coloros/settings/feature/controller/b;->f:I

    sget v1, Lcom/coloros/settings/feature/controller/b$b;->a:I

    if-ne v0, v1, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/b;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/feature/controller/b;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/controller/b;->g:Z

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/b;->h:Ljava/lang/String;

    return-object v0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/b;->a:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public final handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public final isAvailable()Z
    .locals 5

    .line 53
    sget-object v0, Lcom/coloros/settings/feature/controller/b$1;->a:[I

    iget v1, p0, Lcom/coloros/settings/feature/controller/b;->f:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x0

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/controller/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/coloros/settings/utils/ba;->a()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/coloros/settings/feature/controller/b;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_0

    .line 55
    :cond_3
    iget-boolean v0, p0, Lcom/coloros/settings/feature/controller/b;->e:Z

    :goto_0
    if-nez v0, :cond_5

    .line 65
    invoke-static {}, Lcom/coloros/settings/utils/ax;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v2
.end method
