.class public Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "WifiDppQrCodeScannerFragment.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settings/wifi/qrcode/a$b;
.implements Lcom/android/settingslib/wifi/WifiTracker$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;

.field private e:Landroid/widget/ProgressBar;

.field private f:Lcom/android/settings/wifi/qrcode/a;

.field private g:Landroid/view/TextureView;

.field private h:Lcom/android/settings/wifi/qrcode/QrDecorateView;

.field private i:Landroid/widget/TextView;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/android/settings/wifi/dpp/c;

.field private m:Landroid/net/wifi/WifiConfiguration;

.field private n:I

.field private o:Lcom/android/settingslib/wifi/WifiTracker;

.field private final p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 313
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->n:I

    .line 115
    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->p:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 323
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->n:I

    .line 115
    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->p:Landroid/os/Handler;

    .line 325
    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    .line 326
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/TextView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3

    .line 5224
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->o:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p0}, Lcom/android/settingslib/wifi/WifiTracker;->b()Ljava/util/List;

    move-result-object p0

    .line 5227
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 5230
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/wifi/a;

    .line 5231
    invoke-virtual {v0, p1}, Lcom/android/settingslib/wifi/a;->b(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5232
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic b(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->m:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->e:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic c(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settings/wifi/qrcode/QrDecorateView;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->h:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    return-object p0
.end method

.method static synthetic d(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    return p0
.end method

.method static synthetic f()V
    .locals 0

    return-void
.end method

.method static synthetic f(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->k()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/a;->a()V

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 2

    .line 5213
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    if-eqz v0, :cond_0

    .line 5214
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/a;->a()V

    .line 5217
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->h:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/qrcode/QrDecorateView;->setFocused(Z)V

    .line 5218
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->i:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5220
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/wifi/dpp/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->p:Landroid/os/Handler;

    const v1, 0x7f121991    # 1.9420004E38f

    .line 538
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 537
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->i()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/d;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->u:Lcom/android/settingslib/core/instrumentation/d;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->p:Landroid/os/Handler;

    const v1, 0x7f12198a

    .line 544
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 543
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 545
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 546
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic j(Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;)Lcom/android/settingslib/core/instrumentation/d;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->u:Lcom/android/settingslib/core/instrumentation/d;

    return-object p0
.end method

.method private j()V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    if-nez v0, :cond_0

    const-string v0, "WifiDppQrCodeScanner"

    const-string v1, "mCamera is not available for restarting camera"

    .line 692
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 696
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/a;->a()V

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 705
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/qrcode/a;->a(Landroid/graphics/SurfaceTexture;)V

    return-void

    .line 702
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SurfaceTexture is not ready for restarting camera"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private k()V
    .locals 4

    .line 713
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f12199d

    .line 714
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->k:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f12199c

    .line 716
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->k:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 718
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 3

    .line 439
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/graphics/Matrix;)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 450
    :try_start_0
    new-instance v1, Lcom/android/settings/wifi/dpp/c;

    invoke-direct {v1, p1}, Lcom/android/settings/wifi/dpp/c;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->l:Lcom/android/settings/wifi/dpp/c;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->l:Lcom/android/settings/wifi/dpp/c;

    .line 2209
    iget-object p1, p1, Lcom/android/settings/wifi/dpp/c;->b:Ljava/lang/String;

    .line 459
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    const-string v2, "WIFI"

    if-nez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->l:Lcom/android/settings/wifi/dpp/c;

    invoke-virtual {v1}, Lcom/android/settings/wifi/dpp/c;->a()Lcom/android/settings/wifi/dpp/b;

    move-result-object v1

    .line 3190
    iget-object v1, v1, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    .line 461
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->k:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->h()V

    return v0

    .line 468
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    if-eqz v1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 469
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->h()V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 452
    :catch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->h()V

    return v0
.end method

.method public final c()Landroid/util/Size;
    .locals 3

    .line 434
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public final d()V
    .locals 5

    .line 481
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->l:Lcom/android/settings/wifi/dpp/c;

    .line 3209
    iget-object v0, v0, Lcom/android/settings/wifi/dpp/c;->b:Ljava/lang/String;

    .line 481
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x10944

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x28a715

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v1, "DPP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 4503
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->p:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4504
    new-instance v3, Lcom/android/settings/wifi/dpp/c;

    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->l:Lcom/android/settings/wifi/dpp/c;

    .line 5199
    iget-object v4, v4, Lcom/android/settings/wifi/dpp/c;->a:Ljava/lang/String;

    .line 4504
    invoke-direct {v3, v4}, Lcom/android/settings/wifi/dpp/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/settings/wifi/dpp/c;->a()Lcom/android/settings/wifi/dpp/b;

    move-result-object v3

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4506
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->p:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    return-void

    .line 3496
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->p:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3497
    new-instance v3, Lcom/android/settings/wifi/dpp/c;

    iget-object v4, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->l:Lcom/android/settings/wifi/dpp/c;

    .line 4199
    iget-object v4, v4, Lcom/android/settings/wifi/dpp/c;->a:Ljava/lang/String;

    .line 3497
    invoke-direct {v3, v4}, Lcom/android/settings/wifi/dpp/c;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3499
    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->p:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final e()V
    .locals 0

    .line 511
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x63b

    return v0

    :cond_0
    const/16 v0, 0x63c

    return v0
.end method

.method public n_()V
    .locals 0

    return-void
.end method

.method public o_()V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 331
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 1041
    iget-object v0, p0, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->v:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 333
    invoke-static {p1, p0, v0}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->a(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$b;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->o:Lcom/android/settingslib/wifi/WifiTracker;

    .line 337
    iget-boolean p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    if-eqz p1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f121987

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f12199b

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 345
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 346
    invoke-virtual {p1}, Landroid/app/ActionBar;->show()V

    :cond_1
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 352
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onAttach(Landroid/content/Context;)V

    .line 354
    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_is_configurator_mode"

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    const-string v0, "key_latest_error_code"

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->n:I

    const-string v0, "key_wifi_configuration"

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->m:Landroid/net/wifi/WifiConfiguration;

    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const/4 v0, 0x1

    .line 406
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 408
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d03ab

    const/4 v0, 0x0

    .line 367
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->a:Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment$a;

    .line 361
    invoke-super {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onDetach()V

    return-void
.end method

.method public onFailure(I)V
    .locals 1

    .line 673
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Wi-Fi connect onFailure reason - "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WifiDppQrCodeScanner"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->i()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/android/settings/wifi/qrcode/a;->a()V

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 287
    invoke-super {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onResume()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 551
    iget-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    const-string v1, "key_is_configurator_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 552
    iget v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->n:I

    const-string v1, "key_latest_error_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->m:Landroid/net/wifi/WifiConfiguration;

    const-string v1, "key_wifi_configuration"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 555
    invoke-super {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 662
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 663
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->m:Landroid/net/wifi/WifiConfiguration;

    const-string v2, "wifi_configuration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    .line 667
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 668
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1516
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    if-nez p2, :cond_0

    .line 1517
    new-instance p2, Lcom/android/settings/wifi/qrcode/a;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Lcom/android/settings/wifi/qrcode/a;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/qrcode/a$b;)V

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    .line 1524
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->f:Lcom/android/settings/wifi/qrcode/a;

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/qrcode/a;->a(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 423
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 373
    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0503

    .line 375
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g:Landroid/view/TextureView;

    .line 376
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->g:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const p2, 0x7f0a01d4

    .line 378
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/qrcode/QrDecorateView;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->h:Lcom/android/settings/wifi/qrcode/QrDecorateView;

    const p2, 0x7f080809

    .line 380
    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->b(I)V

    const p2, 0x7f0a032b

    .line 382
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->e:Landroid/widget/ProgressBar;

    .line 383
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->e:Landroid/widget/ProgressBar;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 385
    iget-boolean p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->j:Z

    if-eqz p2, :cond_1

    .line 386
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f121987

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/wifi/dpp/b$a;

    .line 389
    invoke-interface {p2}, Lcom/android/settings/wifi/dpp/b$a;->b()Lcom/android/settings/wifi/dpp/b;

    move-result-object p2

    .line 390
    invoke-static {p2}, Lcom/android/settings/wifi/dpp/b;->a(Lcom/android/settings/wifi/dpp/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->c:Landroid/widget/TextView;

    const v1, 0x7f121989

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1190
    iget-object p2, p2, Lcom/android/settings/wifi/dpp/b;->b:Ljava/lang/String;

    aput-object p2, v2, v3

    .line 393
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 391
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid Wi-Fi network for configuring"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 396
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->b:Landroid/widget/TextView;

    const v0, 0x7f12199b

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 398
    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->k()V

    :goto_0
    const p2, 0x7f0a026f

    .line 401
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeScannerFragment;->i:Landroid/widget/TextView;

    return-void
.end method
