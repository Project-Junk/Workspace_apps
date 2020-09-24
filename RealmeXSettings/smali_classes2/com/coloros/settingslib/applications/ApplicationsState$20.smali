.class final Lcom/coloros/settingslib/applications/ApplicationsState$20;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/coloros/settingslib/applications/ApplicationsState$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1844
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 3

    .line 1851
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1853
    :cond_0
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1855
    :cond_1
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v2}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 1857
    :cond_2
    iget-boolean v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->h:Z

    if-eqz v0, :cond_3

    return v2

    .line 1859
    :cond_3
    iget-object v0, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v2}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->j:Z

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method
