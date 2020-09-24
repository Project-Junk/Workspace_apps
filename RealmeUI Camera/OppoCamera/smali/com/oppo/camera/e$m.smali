.class Lcom/oppo/camera/e$m;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Lcom/oppo/camera/d/a;

.field private k:Lcom/oppo/camera/d/a;


# direct methods
.method private constructor <init>(Lcom/oppo/camera/e;)V
    .locals 1

    .line 12640
    iput-object p1, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 12649
    iput p1, p0, Lcom/oppo/camera/e$m;->b:I

    const/4 v0, 0x0

    .line 12650
    iput-object v0, p0, Lcom/oppo/camera/e$m;->c:Ljava/lang/String;

    .line 12651
    iput-object v0, p0, Lcom/oppo/camera/e$m;->d:Ljava/lang/String;

    .line 12652
    iput p1, p0, Lcom/oppo/camera/e$m;->e:I

    .line 12653
    iput p1, p0, Lcom/oppo/camera/e$m;->f:I

    .line 12654
    iput p1, p0, Lcom/oppo/camera/e$m;->g:I

    .line 12655
    iput-boolean p1, p0, Lcom/oppo/camera/e$m;->h:Z

    .line 12656
    iput-boolean p1, p0, Lcom/oppo/camera/e$m;->i:Z

    .line 12657
    iput-object v0, p0, Lcom/oppo/camera/e$m;->j:Lcom/oppo/camera/d/a;

    .line 12658
    iput-object v0, p0, Lcom/oppo/camera/e$m;->k:Lcom/oppo/camera/d/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oppo/camera/e;Lcom/oppo/camera/e$1;)V
    .locals 0

    .line 12640
    invoke-direct {p0, p1}, Lcom/oppo/camera/e$m;-><init>(Lcom/oppo/camera/e;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e$m;I)I
    .locals 0

    .line 12640
    iput p1, p0, Lcom/oppo/camera/e$m;->b:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;
    .locals 0

    .line 12640
    iget-object p0, p0, Lcom/oppo/camera/e$m;->j:Lcom/oppo/camera/d/a;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/e$m;)Z
    .locals 0

    .line 12640
    iget-boolean p0, p0, Lcom/oppo/camera/e$m;->i:Z

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/e$m;)Lcom/oppo/camera/d/a;
    .locals 0

    .line 12640
    iget-object p0, p0, Lcom/oppo/camera/e$m;->k:Lcom/oppo/camera/d/a;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/e$m;)I
    .locals 0

    .line 12640
    iget p0, p0, Lcom/oppo/camera/e$m;->b:I

    return p0
.end method


# virtual methods
.method public a(I)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12749
    iput p1, p0, Lcom/oppo/camera/e$m;->e:I

    return-object p0
.end method

.method public a(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12774
    iput-object p1, p0, Lcom/oppo/camera/e$m;->j:Lcom/oppo/camera/d/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12739
    iput-object p1, p0, Lcom/oppo/camera/e$m;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12764
    iput-boolean p1, p0, Lcom/oppo/camera/e$m;->h:Z

    return-object p0
.end method

.method public a()V
    .locals 7

    .line 12661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "execute task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/e$m;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeTask"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12663
    iget v0, p0, Lcom/oppo/camera/e$m;->b:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "closeSession"

    .line 12685
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    .line 12687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute, STATUS_SESSION_CLOSED after mOneCamera.endOfStream X, mAfterModeProperCameraId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/e$m;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12690
    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    const/4 v2, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    iget v3, p0, Lcom/oppo/camera/e$m;->f:I

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e$l;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12691
    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v2}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;I)I

    const-string v0, "execute, openCamera"

    .line 12693
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 12695
    iput v0, p0, Lcom/oppo/camera/e$m;->b:I

    .line 12696
    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/e$m;->f:I

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e$l;->a(I)V

    .line 12697
    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/oppo/camera/e$m;->f:I

    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->bT(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f$b;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    .line 12698
    invoke-static {v0}, Lcom/oppo/camera/e;->k(Lcom/oppo/camera/e;)Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/entry/b;->r()I

    move-result v6

    .line 12697
    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/e/f;->a(Landroid/content/Context;ILcom/oppo/camera/e/f$b;ZI)V

    goto :goto_0

    .line 12700
    :cond_1
    iput v2, p0, Lcom/oppo/camera/e$m;->b:I

    const-string v0, "execute, STATUS_SESSION_CLOSED createCaptureSession"

    .line 12702
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12704
    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    iget-boolean v1, p0, Lcom/oppo/camera/e$m;->i:Z

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e;->v(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 12665
    iput v0, p0, Lcom/oppo/camera/e$m;->b:I

    const-string v0, "execute, send closeCaptureSession"

    .line 12667
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12669
    iget v0, p0, Lcom/oppo/camera/e$m;->g:I

    const/16 v1, 0x300

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    .line 12672
    iget-object v1, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12673
    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/e$l;->a(Lcom/oppo/camera/e$l;)Z

    move-result v0

    .line 12676
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-static {v1}, Lcom/oppo/camera/e;->g(Lcom/oppo/camera/e;)Lcom/oppo/camera/e/f;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->i(Z)V

    .line 12679
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$m;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->aj()V

    const-string v0, "ModeChangeTaskDelay"

    .line 12681
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(I)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12754
    iput p1, p0, Lcom/oppo/camera/e$m;->f:I

    return-object p0
.end method

.method public b(Lcom/oppo/camera/d/a;)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12779
    iput-object p1, p0, Lcom/oppo/camera/e$m;->k:Lcom/oppo/camera/d/a;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12744
    iput-object p1, p0, Lcom/oppo/camera/e$m;->d:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12769
    iput-boolean p1, p0, Lcom/oppo/camera/e$m;->i:Z

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 12715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnCameraOpened mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e$m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeTask"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12717
    iget v0, p0, Lcom/oppo/camera/e$m;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 12718
    iput v0, p0, Lcom/oppo/camera/e$m;->b:I

    :cond_0
    return-void
.end method

.method public c(I)Lcom/oppo/camera/e$m;
    .locals 0

    .line 12759
    iput p1, p0, Lcom/oppo/camera/e$m;->g:I

    return-object p0
.end method

.method public c()V
    .locals 2

    .line 12723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnSessionClosed mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e$m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeTask"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 12725
    iput v0, p0, Lcom/oppo/camera/e$m;->b:I

    return-void
.end method

.method public d()V
    .locals 2

    .line 12729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnSessionClosing mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e$m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModeChangeTask"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12731
    iput v0, p0, Lcom/oppo/camera/e$m;->b:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e$m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBeforeModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAfterModeName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e$m;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBeforeModeProperCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e$m;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAfterModeProperCameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e$m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbBeforeHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e$m;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mbAfterHFR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/e$m;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBeforeOperatingMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e$m;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
