.class public final Lcom/coloros/settings/feature/storage/e;
.super Ljava/lang/Object;
.source "VolumeMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/e$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/os/storage/StorageVolume;

.field c:Landroid/os/Handler;

.field public d:Lcom/coloros/settings/feature/deviceinfo/e;

.field public e:Z

.field f:Lcom/coloros/settings/feature/storage/a/b;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/storage/e$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/coloros/settings/feature/deviceinfo/e$b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/coloros/settings/feature/storage/e;->e:Z

    .line 45
    new-instance v0, Lcom/coloros/settings/feature/storage/a/b;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/a/b;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    .line 88
    new-instance v0, Lcom/coloros/settings/feature/storage/e$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/e$1;-><init>(Lcom/coloros/settings/feature/storage/e;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/e;->h:Lcom/coloros/settings/feature/deviceinfo/e$b;

    .line 49
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/e;->a:Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/e;->c:Landroid/os/Handler;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/e;->g:Ljava/util/List;

    return-void
.end method
