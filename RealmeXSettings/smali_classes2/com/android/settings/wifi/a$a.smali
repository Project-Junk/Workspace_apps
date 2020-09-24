.class public final Lcom/android/settings/wifi/a$a;
.super Lcom/android/settings/applications/d$a;
.source "AppStateChangeWifiStateBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/d$a;)V
    .locals 2

    .line 71
    iget-object v0, p1, Lcom/android/settings/applications/d$a;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/applications/d$a;->b:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/d$a;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 72
    iget-object v0, p1, Lcom/android/settings/applications/d$a;->c:Landroid/content/pm/PackageInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/a$a;->c:Landroid/content/pm/PackageInfo;

    .line 73
    iget v0, p1, Lcom/android/settings/applications/d$a;->f:I

    iput v0, p0, Lcom/android/settings/wifi/a$a;->f:I

    .line 74
    iget-boolean v0, p1, Lcom/android/settings/applications/d$a;->e:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/a$a;->e:Z

    .line 75
    iget-boolean p1, p1, Lcom/android/settings/applications/d$a;->d:Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/a$a;->d:Z

    return-void
.end method
