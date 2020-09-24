.class public Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;
.super Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;
.source "ColorFaceEnrollOldActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$c;,
        Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;,
        Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;
    }
.end annotation


# static fields
.field private static final a:[J


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private volatile G:I

.field private volatile H:Z

.field private I:Z

.field private J:Landroid/widget/Toast;

.field private K:Z

.field private L:Z

.field private M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

.field private N:Landroid/hardware/face/FaceManager;

.field private O:Landroid/os/CancellationSignal;

.field private P:Landroid/os/Vibrator;

.field private Q:[B

.field private R:I

.field private S:Landroid/view/Window;

.field private T:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field private U:Lcom/coloros/settings/feature/face/a$a;

.field private b:J

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/RelativeLayout;

.field private k:Lcom/coloros/settings/feature/face/OriginMaskView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/graphics/Rect;

.field private o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/view/SurfaceView;

.field private w:Landroid/view/SurfaceHolder;

.field private x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

.field private y:Lcolor/support/v7/app/AlertDialog;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 73
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0xa
        0x14
        0x1e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b:J

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->z:Z

    .line 116
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->A:Z

    .line 117
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    .line 118
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    .line 119
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->D:Z

    .line 120
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->E:Z

    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->F:Z

    .line 123
    iput v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->G:I

    .line 124
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->H:Z

    .line 125
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->I:Z

    .line 135
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->N:Landroid/hardware/face/FaceManager;

    .line 360
    new-instance v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$1;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->T:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 471
    new-instance v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$2;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->U:Lcom/coloros/settings/feature/face/a$a;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Landroid/hardware/face/FaceManager;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->N:Landroid/hardware/face/FaceManager;

    return-object p0
.end method

.method private a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;)V
    .locals 6

    .line 298
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    .line 299
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateView "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollOldActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->s:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$4;->a:[I

    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    if-eq p1, v5, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f120971

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->s:Landroid/widget/TextView;

    invoke-static {p1, v4, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    .line 329
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->s:Landroid/widget/TextView;

    const v1, 0x7f120970

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 322
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->s:Landroid/widget/TextView;

    invoke-static {p1, v4, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    .line 323
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 318
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 308
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 311
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 312
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->k:Lcom/coloros/settings/feature/face/OriginMaskView;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/face/OriginMaskView;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f1208f4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 315
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->p:Landroid/widget/TextView;

    invoke-static {p1, v4, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    return-void

    .line 304
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;I)V
    .locals 3

    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    const/16 v0, 0x68

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const v1, 0x7f120966

    goto :goto_0

    :pswitch_1
    const v1, 0x7f120965

    goto :goto_0

    :pswitch_2
    const v1, 0x7f120964

    goto :goto_0

    :pswitch_3
    const v1, 0x7f120968

    goto :goto_0

    :pswitch_4
    const v1, 0x7f120961

    goto :goto_0

    :pswitch_5
    const v1, 0x7f12096c

    goto :goto_0

    :pswitch_6
    const v1, 0x7f12095f

    goto :goto_0

    :pswitch_7
    const v1, 0x7f12096b

    goto :goto_0

    :pswitch_8
    const v1, 0x7f12096a

    goto :goto_0

    :pswitch_9
    const v1, 0x7f12095e

    goto :goto_0

    :pswitch_a
    const v1, 0x7f12095d

    goto :goto_0

    :pswitch_b
    move v2, v1

    goto :goto_0

    :cond_0
    const v1, 0x7f120963

    goto :goto_0

    :cond_1
    :pswitch_c
    const v1, 0x7f120960

    goto :goto_0

    :cond_2
    const v1, 0x7f120962

    goto :goto_0

    :cond_3
    const v1, 0x7f120969

    goto :goto_0

    :cond_4
    const v1, 0x7f120967

    :goto_0
    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    if-eqz v1, :cond_5

    .line 7547
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Z)V
    .locals 1

    .line 641
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->d:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(ZLcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;)V

    return-void
.end method

.method private a(ZLcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;)V
    .locals 5

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enrollComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollOldActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 648
    iput v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->G:I

    .line 649
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g()V

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 652
    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->S:Landroid/view/Window;

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 653
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->invalidateOptionsMenu()V

    .line 654
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->z:Z

    .line 656
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 658
    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceUnlockEnabled(Landroid/content/Context;)V

    .line 659
    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceRemainUnlockEnabled(Landroid/content/Context;)V

    .line 660
    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceScreenLightEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 662
    :cond_0
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->A:Z

    .line 665
    :goto_0
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->L:Z

    if-nez v2, :cond_1

    .line 666
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 670
    sget-object p1, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->c:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;)V

    .line 671
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    const/4 p2, 0x7

    const-wide/16 v2, 0x12c

    invoke-virtual {p1, p2, v2, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 673
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->p:Landroid/widget/TextView;

    const p2, 0x7f12096f

    invoke-static {p0, p1, p2, v1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V

    return-void

    .line 676
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    if-eqz p1, :cond_3

    .line 677
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 678
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    .line 681
    :cond_3
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;)V

    .line 682
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->r:Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    .line 684
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 246
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    .line 247
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->w:Landroid/view/SurfaceHolder;

    .line 248
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->K:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->w:Landroid/view/SurfaceHolder;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->w:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$c;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;B)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const-string v0, "OppoFaceEnrollOldActivity"

    const-string v1, "addCallback setPreviewSurface"

    .line 252
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    if-nez v1, :cond_2

    .line 254
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 255
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->K:Z

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    const v2, 0x3f97ae14    # 1.185f

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setScaleX(F)V

    .line 259
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setScaleY(F)V

    .line 260
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setTranslationX(F)V

    :cond_1
    const/4 v1, 0x1

    .line 262
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->N:Landroid/hardware/face/FaceManager;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->w:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/b/a;->a(Landroid/hardware/face/FaceManager;Landroid/view/Surface;)I

    move-result v1

    .line 265
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "after setPreviewSurface "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;I)V
    .locals 4

    .line 7578
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleEnrollError errMsgId = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollOldActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 7593
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    return-void

    .line 7585
    :cond_1
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    const-string p1, "showTimeoutDialog"

    .line 7605
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7606
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->I:Z

    .line 7607
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->y:Lcolor/support/v7/app/AlertDialog;

    if-nez p1, :cond_2

    .line 7608
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120972

    .line 7609
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120f1a

    const/4 v2, 0x0

    .line 7610
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 7611
    new-instance v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$3;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V

    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 7620
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->y:Lcolor/support/v7/app/AlertDialog;

    .line 7621
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->y:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 7622
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->y:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 7624
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 7625
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->y:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_3
    return-void

    .line 7589
    :cond_4
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    .line 7590
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Z)V

    return-void

    .line 7581
    :cond_5
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    .line 7582
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Z)V

    return-void

    .line 7596
    :cond_6
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    .line 7597
    sget-object p1, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->e:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(ZLcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 5

    .line 746
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->Q:[B

    if-eqz v0, :cond_4

    .line 747
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->L:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 748
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;Z)V

    .line 6269
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mFaceToken = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->Q:[B

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OppoFaceEnrollOldActivity"

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6271
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->b:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;)V

    .line 6273
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    if-nez v0, :cond_2

    .line 6274
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h:Landroid/widget/ImageView;

    .line 6275
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h:Landroid/widget/ImageView;

    const v3, 0x7f08060f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6276
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xe

    .line 6279
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6280
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0704dc

    .line 6281
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6282
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "topMargin = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6283
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6284
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    .line 6287
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    const/16 v1, 0x10

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 6288
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b:J

    if-eqz p1, :cond_3

    .line 6291
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    return-void

    .line 6293
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->r:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->F:Z

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b:J

    return-wide v0
.end method

.method private declared-synchronized c()V
    .locals 1

    monitor-enter p0

    .line 552
    :try_start_0
    iget v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->G:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->G:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Z)V
    .locals 5

    monitor-enter p0

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 875
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g()V

    .line 877
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "OppoFaceEnrollOldActivity"

    const-string v3, "cancelEnroll unComplete "

    .line 878
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 880
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    if-eqz v2, :cond_1

    .line 881
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a(Z)V

    :cond_1
    if-eqz v0, :cond_3

    .line 885
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->f()V

    .line 886
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->L:Z

    if-nez v2, :cond_2

    .line 887
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;Z)V

    .line 889
    :cond_2
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    if-eqz v2, :cond_7

    .line 890
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 891
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 896
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 898
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->D:Z

    if-eqz v2, :cond_4

    .line 899
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 900
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->D:Z

    .line 903
    :cond_4
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->E:Z

    if-eqz v2, :cond_5

    .line 904
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 905
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->E:Z

    .line 910
    :cond_5
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    if-eqz v2, :cond_6

    .line 911
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 912
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    .line 916
    :cond_6
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->f()V

    :cond_7
    :goto_1
    if-eqz p1, :cond_c

    .line 921
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "extra_boot_register_face"

    .line 922
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "extra_allow_skip_register"

    .line 924
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    if-nez p1, :cond_8

    .line 927
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->setResult(I)V

    goto :goto_3

    :cond_8
    if-nez v0, :cond_a

    .line 929
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->A:Z

    if-eqz p1, :cond_9

    goto :goto_2

    .line 931
    :cond_9
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->z:Z

    if-eqz p1, :cond_b

    .line 932
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->setResult(I)V

    goto :goto_3

    .line 930
    :cond_a
    :goto_2
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->setResult(I)V

    .line 935
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic d(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 630
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->N:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Lcom/coloros/b/a;->a(Landroid/hardware/face/FaceManager;)I

    move-result v0

    .line 631
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->N:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Lcom/coloros/b/a;->b(Landroid/hardware/face/FaceManager;)I

    move-result v1

    .line 632
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->k:Lcom/coloros/settings/feature/face/OriginMaskView;

    invoke-virtual {v2, v0, v1}, Lcom/coloros/settings/feature/face/OriginMaskView;->a(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initMaskView previewHight "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", previewWidth = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollOldActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->N:Landroid/hardware/face/FaceManager;

    invoke-static {v0, v2}, Lcom/coloros/b/a;->a(Landroid/hardware/face/FaceManager;Landroid/graphics/Rect;)V

    .line 635
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->k:Lcom/coloros/settings/feature/face/OriginMaskView;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/face/OriginMaskView;->getShownRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->n:Landroid/graphics/Rect;

    .line 636
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->k:Lcom/coloros/settings/feature/face/OriginMaskView;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->S:Landroid/view/Window;

    .line 5308
    iput-object v1, v0, Lcom/coloros/settings/feature/face/OriginMaskView;->a:Landroid/view/Window;

    const/4 v1, 0x0

    .line 637
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/OriginMaskView;->setProgress(I)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->y:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->y:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 845
    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->y:Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->F:Z

    return v0
.end method

.method private f()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->O:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    .line 941
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancelEnroll isCanceled "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OppoFaceEnrollOldActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->O:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const-string v0, "cancelEnroll cancel"

    .line 944
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    return p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h:Landroid/widget/ImageView;

    return-object p0
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 949
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->H:Z

    .line 950
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->J:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 951
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 952
    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->J:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private synthetic h()V
    .locals 2

    .line 694
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->K:Z

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    return v0
.end method

.method public static synthetic lambda$iU-u4jIiirIXYGY8xPjddG-kb8o(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, -0x1

    .line 994
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->setResult(I)V

    .line 995
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->finish()V

    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 8

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msg.what "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollOldActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    const/16 v3, 0x9

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v5, :cond_e

    const/16 v7, 0x10

    if-eq v0, v7, :cond_d

    const/4 v7, 0x4

    if-eq v0, v7, :cond_c

    if-eq v0, v4, :cond_a

    const/4 v7, 0x7

    if-eq v0, v7, :cond_5

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 440
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->z:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->A:Z

    if-nez v0, :cond_11

    .line 441
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 4556
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->removeMessages(I)V

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 4559
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c()V

    .line 4561
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->P:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 4562
    sget-object v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a:[J

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 4565
    :cond_1
    iget v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->G:I

    if-lt v0, v4, :cond_2

    .line 4567
    invoke-direct {p0, v6}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    .line 4568
    invoke-direct {p0, v6}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Z)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 4571
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->q:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/face/a;->a(Landroid/widget/TextView;I)V

    :cond_3
    return-void

    .line 437
    :cond_4
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g()V

    return-void

    .line 427
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->removeMessages(I)V

    .line 2689
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->n:Landroid/graphics/Rect;

    if-nez p1, :cond_6

    const-string p1, "showFinishView mMaskRect is null"

    .line 2690
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2691
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a()V

    .line 2693
    :cond_6
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    new-instance v0, Lcom/coloros/settings/feature/face/-$$Lambda$ColorFaceEnrollOldActivity$iU-u4jIiirIXYGY8xPjddG-kb8o;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/face/-$$Lambda$ColorFaceEnrollOldActivity$iU-u4jIiirIXYGY8xPjddG-kb8o;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2698
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    .line 2699
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 2701
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->K:Z

    if-nez p1, :cond_7

    .line 2702
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLeft(I)V

    .line 2703
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->n:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTop(I)V

    .line 2705
    :cond_7
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 2707
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2709
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->n:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 2710
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->n:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 2713
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->K:Z

    if-eqz v1, :cond_8

    const/16 v1, 0xd

    .line 2714
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x1e

    const/16 v2, 0xb4

    .line 2715
    invoke-virtual {p1, v2, v1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 2716
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 2717
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    :cond_8
    const/16 v1, 0xe

    .line 2719
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2721
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2722
    iput-boolean v5, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->E:Z

    .line 2726
    new-instance p1, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    invoke-direct {p1, p0, v6}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;-><init>(Landroid/content/Context;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    .line 2727
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43f00000    # 480.0f

    div-float/2addr p1, v1

    .line 2729
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->setScale(F)V

    .line 2730
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->setOnAnimationEndListener(Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView$b;)V

    .line 2732
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2734
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2735
    iput-boolean v5, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->D:Z

    .line 2737
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    .line 3204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a:J

    .line 3205
    invoke-virtual {p1, v5}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a(I)V

    .line 3206
    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;->a()V

    .line 2739
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    if-eqz p1, :cond_9

    .line 2740
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->k:Lcom/coloros/settings/feature/face/OriginMaskView;

    invoke-virtual {p1, v6}, Lcom/coloros/settings/feature/face/OriginMaskView;->setVisibility(I)V

    .line 2741
    iput-boolean v6, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    :cond_9
    return-void

    .line 3459
    :cond_a
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->z:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->A:Z

    if-nez p1, :cond_b

    .line 3465
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->k:Lcom/coloros/settings/feature/face/OriginMaskView;

    invoke-virtual {p1, v6}, Lcom/coloros/settings/feature/face/OriginMaskView;->setProgress(I)V

    .line 3466
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3467
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3468
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->U:Lcom/coloros/settings/feature/face/a$a;

    const/4 v2, 0x2

    .line 4067
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    .line 4068
    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4069
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 4071
    new-instance v3, Lcom/coloros/settings/feature/face/a$1;

    invoke-direct {v3, p1, v0, v1}, Lcom/coloros/settings/feature/face/a$1;-><init>(Landroid/view/View;Landroid/view/View;Lcom/coloros/settings/feature/face/a$a;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_b
    return-void

    .line 434
    :cond_c
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->d()V

    return-void

    .line 445
    :cond_d
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->d()V

    .line 446
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->N:Landroid/hardware/face/FaceManager;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->Q:[B

    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->O:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->T:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    new-array v3, v6, [I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/hardware/face/FaceManager;->enroll([BLandroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$EnrollmentCallback;[I)V

    .line 447
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->F:Z

    if-eqz p1, :cond_11

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b:J

    sub-long/2addr v0, v2

    .line 449
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    const-wide/16 v2, 0x3e8

    sub-long/2addr v2, v0

    invoke-virtual {p1, v4, v2, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 450
    iput-boolean v6, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->F:Z

    goto :goto_2

    .line 406
    :cond_e
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    invoke-virtual {v0, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->removeMessages(I)V

    .line 407
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->q:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iput v6, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->G:I

    .line 409
    iget p1, p1, Landroid/os/Message;->arg1:I

    rsub-int/lit8 p1, p1, 0x5

    const/16 v0, 0x64

    mul-int/2addr p1, v0

    .line 410
    div-int/2addr p1, v4

    if-lt p1, v0, :cond_f

    move v0, v5

    goto :goto_1

    :cond_f
    move v0, v6

    .line 412
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->k:Lcom/coloros/settings/feature/face/OriginMaskView;

    invoke-virtual {v1, p1}, Lcom/coloros/settings/feature/face/OriginMaskView;->setProgress(I)V

    if-eqz v0, :cond_11

    .line 416
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    if-eqz p1, :cond_10

    .line 417
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 418
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 420
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 421
    iput-boolean v6, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    .line 1762
    :cond_10
    invoke-direct {p0, v5}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Z)V

    :cond_11
    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 184
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .locals 0

    .line 838
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->finish()V

    .line 839
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->zoomFadeTransition()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 851
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0456

    const-string v1, "OppoFaceEnrollOldActivity"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_6

    const v0, 0x7f0a056e

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 860
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "click retry_btn "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->d:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->e:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    if-ne p1, v0, :cond_8

    .line 6960
    :cond_1
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->F:Z

    .line 6961
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->A:Z

    .line 6962
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->z:Z

    .line 6963
    iput v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->G:I

    .line 6965
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->O:Landroid/os/CancellationSignal;

    .line 6967
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    if-eqz p1, :cond_2

    .line 6968
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 6969
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->B:Z

    .line 6972
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    if-eqz p1, :cond_3

    .line 6973
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->v:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6974
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->C:Z

    .line 6977
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->D:Z

    if-eqz p1, :cond_4

    .line 6978
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->o:Lcom/coloros/settings/feature/face/OriginFaceAnimatedSvgView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 6979
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->D:Z

    .line 6982
    :cond_4
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->E:Z

    if-eqz p1, :cond_5

    .line 6983
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 6984
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->E:Z

    .line 6987
    :cond_5
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b()V

    .line 6989
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b(Z)V

    goto :goto_0

    .line 854
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "click next_btn "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mFaceToken = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->Q:[B

    if-eqz v0, :cond_7

    move v3, v2

    :cond_7
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    if-ne p1, v0, :cond_8

    .line 856
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b(Z)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 146
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->K:Z

    .line 148
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->K:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0d0208

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0209

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->setContentView(I)V

    .line 149
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->S:Landroid/view/Window;

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->S:Landroid/view/Window;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->S:Landroid/view/Window;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->S:Landroid/view/Window;

    const v1, 0x7f0600e7

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 154
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ai(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    const v0, 0x7f0a025a

    .line 159
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    .line 160
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 161
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->F:Z

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->H:Z

    .line 165
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    .line 166
    new-instance v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    const-string v0, "face"

    .line 167
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->N:Landroid/hardware/face/FaceManager;

    .line 169
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "face_hw_auth__token"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->Q:[B

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->R:I

    .line 174
    :cond_2
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->O:Landroid/os/CancellationSignal;

    const-string v0, "vibrator"

    .line 175
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->P:Landroid/os/Vibrator;

    const v0, 0x7f0a02e1

    .line 1200
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c:Landroid/view/View;

    .line 1201
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    const v1, 0x7f0a0525

    .line 1202
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->d:Landroid/widget/TextView;

    .line 1203
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c:Landroid/view/View;

    const v1, 0x7f0a02e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->e:Landroid/widget/TextView;

    .line 1204
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c:Landroid/view/View;

    const v1, 0x7f0a0456

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->f:Landroid/widget/TextView;

    .line 1205
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1206
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setTextViewTypeFace(Landroid/widget/TextView;)V

    :cond_3
    const v0, 0x7f0a03c9

    .line 1209
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->g:Landroid/view/View;

    const v0, 0x7f0a02cb

    .line 1210
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->i:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a025d

    .line 1211
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->j:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a011a

    .line 1212
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->u:Landroid/widget/FrameLayout;

    const v0, 0x7f0a03cd

    .line 1213
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/face/OriginMaskView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->k:Lcom/coloros/settings/feature/face/OriginMaskView;

    const v0, 0x7f0a079c

    .line 1214
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0a0527

    .line 1215
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f0a0286

    .line 1217
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->r:Landroid/view/View;

    .line 1218
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->r:Landroid/view/View;

    if-eqz v0, :cond_4

    const v1, 0x7f0a0287

    .line 1219
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->s:Landroid/widget/TextView;

    .line 1220
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->r:Landroid/view/View;

    const v1, 0x7f0a056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->t:Landroid/widget/TextView;

    .line 1221
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1237
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->d:Landroid/widget/TextView;

    const v1, 0x7f120974

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1238
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->e:Landroid/widget/TextView;

    const v1, 0x7f120973

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1240
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;)V

    .line 1242
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->b()V

    .line 1226
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->K:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0a02ca

    .line 1227
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->l:Landroid/widget/ImageView;

    .line 1228
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->l:Landroid/widget/ImageView;

    const v1, 0x7f080692

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1229
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1230
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    const v0, 0x7f010058

    .line 1231
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1232
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 178
    :cond_5
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    .line 179
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ab(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->L:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 767
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 0

    .line 832
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->e()V

    .line 833
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 809
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onKeyUp: keycode = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollOldActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->L:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->M:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    sget-object v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;->b:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$a;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_2

    .line 815
    :cond_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->H:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 816
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    goto :goto_0

    :cond_1
    const p1, 0x7f120510

    const/4 v0, 0x0

    .line 818
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->J:Landroid/widget/Toast;

    .line 819
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->J:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 820
    iput-boolean p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->H:Z

    .line 821
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->x:Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;

    const/16 v0, 0x8

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity$b;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return p2

    .line 827
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 787
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0258

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 789
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    .line 794
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 799
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onPause()V

    .line 800
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->I:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 801
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->c(Z)V

    return-void

    .line 803
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->e()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f0a0258

    .line 773
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 775
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "extra_allow_skip_register"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1214ed

    .line 776
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 777
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->z:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v1, 0x7f120491

    .line 779
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollOldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 782
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 757
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onResume()V

    return-void
.end method
