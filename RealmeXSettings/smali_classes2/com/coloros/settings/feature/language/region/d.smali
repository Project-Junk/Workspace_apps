.class public final Lcom/coloros/settings/feature/language/region/d;
.super Lcom/coloros/settings/feature/language/region/b;
.source "RegionInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/feature/language/region/b<",
        "Lcom/coloros/settings/feature/language/region/d;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 118
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/language/region/b;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/d;->b:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/d;->c:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/d;->d:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/d;->e:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/d;->f:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/coloros/settings/feature/language/region/d;->g:Z

    .line 44
    iput v0, p0, Lcom/coloros/settings/feature/language/region/d;->h:I

    .line 45
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/d;->i:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/coloros/settings/feature/language/region/d;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/coloros/settings/feature/language/region/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    const-string v0, "persist.sys.oppo.region"

    const-string v1, "US"

    .line 154
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lcom/coloros/settings/feature/language/region/c;->a(Lcom/coloros/settings/feature/language/region/b;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 2059
    iget-object v0, p0, Lcom/coloros/settings/feature/language/region/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    const-string v0, "oppo_settings_region_info_recent_v1.0"

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/coloros/settings/feature/language/region/d;->c:Ljava/lang/String;

    return-object v0
.end method
