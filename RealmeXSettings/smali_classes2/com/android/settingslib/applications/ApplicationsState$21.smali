.class final Lcom/android/settingslib/applications/ApplicationsState$21;
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

    .line 1756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/android/settingslib/applications/ApplicationsState$a;)Z
    .locals 1

    .line 1764
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->J:Lcom/android/settingslib/applications/ApplicationsState$b;

    .line 1765
    invoke-interface {v0, p1}, Lcom/android/settingslib/applications/ApplicationsState$b;->a(Lcom/android/settingslib/applications/ApplicationsState$a;)Z

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
