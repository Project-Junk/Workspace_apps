.class final Lcom/coloros/settings/feature/deviceinfo/e$a$1;
.super Ljava/lang/Object;
.source "OppoStorageMeasurement.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/e$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/e$a;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/e$a;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a$1;->a:Lcom/coloros/settings/feature/deviceinfo/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 255
    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object p1

    .line 256
    iget-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/e$a$1;->a:Lcom/coloros/settings/feature/deviceinfo/e$a;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/deviceinfo/e$a;->a(Lcom/coloros/settings/feature/deviceinfo/e$a;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a$1;->a:Lcom/coloros/settings/feature/deviceinfo/e$a;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/e$a;->a(Lcom/coloros/settings/feature/deviceinfo/e$a;)Z

    .line 261
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/e$a$1;->a:Lcom/coloros/settings/feature/deviceinfo/e$a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/deviceinfo/e$a;->removeMessages(I)V

    return-void
.end method
