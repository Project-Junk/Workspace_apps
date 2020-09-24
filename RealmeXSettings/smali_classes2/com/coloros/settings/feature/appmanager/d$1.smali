.class final Lcom/coloros/settings/feature/appmanager/d$1;
.super Ljava/lang/Object;
.source "ColorApplicationsState.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/appmanager/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/d$1;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const-string v0, "persist.sys.assert.panic"

    .line 297
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 298
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 299
    iput-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/d$1;->a:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/d$1;->a:Z

    .line 303
    :goto_0
    invoke-static {}, Lcom/coloros/settings/feature/appmanager/d;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ALL_FILTER init mShowAllPkg ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/coloros/settings/feature/appmanager/d$1;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 4

    .line 308
    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/d$1;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coloros/settings/feature/appmanager/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    invoke-static {}, Lcom/coloros/settings/feature/appmanager/d;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 310
    iget-object v3, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 315
    :cond_1
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 318
    :cond_2
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coloros/settings/utils/al;->k(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 321
    :cond_3
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 322
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/coloros/settings/utils/p;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    return v2
.end method
