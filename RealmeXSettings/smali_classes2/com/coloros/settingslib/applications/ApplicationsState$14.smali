.class final Lcom/coloros/settingslib/applications/ApplicationsState$14;
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

    .line 2094
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

    .line 2102
    monitor-enter p1

    .line 2103
    :try_start_0
    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->X:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 2104
    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->W:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 2105
    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->Y:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 2106
    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->Z:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 2107
    invoke-interface {v0, p1}, Lcom/coloros/settingslib/applications/ApplicationsState$b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2108
    :goto_1
    monitor-exit p1

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
