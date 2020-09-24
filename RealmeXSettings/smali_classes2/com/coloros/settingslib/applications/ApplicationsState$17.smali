.class final Lcom/coloros/settingslib/applications/ApplicationsState$17;
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


# instance fields
.field private a:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1805
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$17;->a:I

    return-void
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 1

    .line 1810
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iget v0, p0, Lcom/coloros/settingslib/applications/ApplicationsState$17;->a:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
