.class final Lcom/android/settingslib/applications/ApplicationsState$20;
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

    .line 1731
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

    .line 1738
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1740
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x80

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1742
    :cond_1
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 1744
    :cond_2
    iget-boolean v0, p1, Lcom/android/settingslib/applications/ApplicationsState$a;->h:Z

    if-eqz v0, :cond_3

    return v2

    .line 1746
    :cond_3
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean p1, p1, Lcom/android/settingslib/applications/ApplicationsState$a;->j:Z

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1
.end method
