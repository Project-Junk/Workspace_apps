.class final Lcom/android/settingslib/applications/ApplicationsState$14;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1981
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/settingslib/applications/ApplicationsState$a;)Z
    .locals 3

    .line 1989
    monitor-enter p1

    .line 1990
    :try_start_0
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->T:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1991
    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$b;->a(Lcom/android/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->S:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1992
    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$b;->a(Lcom/android/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->U:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1993
    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$b;->a(Lcom/android/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->V:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1994
    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$b;->a(Lcom/android/settingslib/applications/ApplicationsState$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1995
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
