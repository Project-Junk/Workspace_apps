.class final Lcom/android/settings/BandMode$2;
.super Landroid/os/Handler;
.source "BandMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BandMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/BandMode;


# direct methods
.method constructor <init>(Lcom/android/settings/BandMode;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/settings/BandMode$2;->a:Lcom/android/settings/BandMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 225
    iget-object v0, p0, Lcom/android/settings/BandMode$2;->a:Lcom/android/settings/BandMode;

    invoke-virtual {v0}, Lcom/android/settings/BandMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/BandMode$2;->a:Lcom/android/settings/BandMode;

    invoke-virtual {v0}, Lcom/android/settings/BandMode;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/settings/BandMode$2;->a:Lcom/android/settings/BandMode;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lcom/android/settings/BandMode;->a(Lcom/android/settings/BandMode;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void

    .line 217
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 219
    iget-object v0, p0, Lcom/android/settings/BandMode$2;->a:Lcom/android/settings/BandMode;

    invoke-static {v0, p1}, Lcom/android/settings/BandMode;->a(Lcom/android/settings/BandMode;Landroid/os/AsyncResult;)V

    return-void
.end method
