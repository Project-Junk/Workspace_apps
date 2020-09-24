.class public final Lcom/android/settings/applications/k$a;
.super Lcom/android/settings/applications/d$a;
.source "AppStateUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/d$a;)V
    .locals 2

    .line 58
    iget-object v0, p1, Lcom/android/settings/applications/d$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/d$a;->b:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/d$a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 59
    iget-object v0, p1, Lcom/android/settings/applications/d$a;->c:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings/applications/k$a;->c:Landroid/content/pm/PackageInfo;

    .line 60
    iget v0, p1, Lcom/android/settings/applications/d$a;->f:I

    iput v0, p0, Lcom/android/settings/applications/k$a;->f:I

    .line 61
    iget-boolean v0, p1, Lcom/android/settings/applications/d$a;->e:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/k$a;->e:Z

    .line 62
    iget-boolean p1, p1, Lcom/android/settings/applications/d$a;->d:Z

    iput-boolean p1, p0, Lcom/android/settings/applications/k$a;->d:Z

    return-void
.end method
