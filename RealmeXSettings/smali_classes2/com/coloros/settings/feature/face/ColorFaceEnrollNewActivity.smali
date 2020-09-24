.class public Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;
.super Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;
.source "ColorFaceEnrollNewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/coloros/settings/feature/face/FaceAnimatedSvgView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$c;,
        Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;,
        Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;
    }
.end annotation


# static fields
.field static final a:[J


# instance fields
.field A:[B

.field private B:Z

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/Button;

.field private G:Landroid/view/TextureView;

.field private H:Lcom/coloros/settings/feature/face/b;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/view/View;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/Button;

.field private N:Landroid/view/SurfaceView;

.field private O:Landroid/view/SurfaceHolder;

.field private P:Lcolor/support/v7/app/AlertDialog;

.field private volatile Q:Z

.field private R:Z

.field private S:Landroid/widget/Toast;

.field private T:Z

.field private U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

.field private V:I

.field private W:Landroid/view/Window;

.field b:J

.field c:Landroid/widget/RelativeLayout;

.field d:Lcom/coloros/settings/feature/face/MaskView;

.field e:Landroid/view/View;

.field f:Landroid/widget/LinearLayout;

.field g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

.field h:Landroid/graphics/Rect;

.field i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/FrameLayout;

.field m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:Z

.field u:Z

.field volatile v:I

.field w:Landroid/hardware/face/FaceManager;

.field x:Landroid/hardware/face/FaceManager$EnrollmentCallback;

.field y:Landroid/os/CancellationSignal;

.field z:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 87
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a:[J

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

    .line 74
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 103
    iput-wide v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b:J

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->B:Z

    .line 137
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->n:Z

    .line 138
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->o:Z

    .line 139
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    .line 140
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->q:Z

    .line 141
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->r:Z

    const/4 v1, 0x1

    .line 142
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->s:Z

    .line 143
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->t:Z

    .line 144
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->u:Z

    .line 146
    iput v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->v:I

    .line 147
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->Q:Z

    .line 148
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->R:Z

    .line 157
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->w:Landroid/hardware/face/FaceManager;

    .line 159
    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->x:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    return-void
.end method

.method private a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;)V
    .locals 8

    .line 301
    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    .line 302
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateView "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollNewActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->L:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$5;->a:[I

    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    if-eq p1, v5, :cond_1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->L:Landroid/widget/TextView;

    const v1, 0x7f120971

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 343
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->L:Landroid/widget/TextView;

    invoke-static {p1, v4, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    .line 344
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->M:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 330
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->L:Landroid/widget/TextView;

    const v1, 0x7f120970

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 331
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->L:Landroid/widget/TextView;

    invoke-static {p1, v4, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    .line 332
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->M:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 334
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setTargetProgress(I)V

    .line 336
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->requestRender()V

    .line 337
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-virtual {p1, v5}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    .line 327
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 311
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->J:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->I:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 314
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d:Lcom/coloros/settings/feature/face/MaskView;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/face/MaskView;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 317
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v6, 0x5dc

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v6, 0x1f4

    .line 318
    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 319
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->J:Landroid/widget/TextView;

    const v1, 0x7f1208f4

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 321
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->C:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setVisibility(I)V

    .line 324
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->J:Landroid/widget/TextView;

    invoke-static {p1, v4, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    return-void

    .line 307
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->C:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->F:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;I)V
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

    .line 5565
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendMessage(Landroid/os/Message;)Z

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

.method private a(ZLcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;)V
    .locals 4

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " enrollComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollNewActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 667
    iput v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->v:I

    .line 668
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c()V

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 671
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->invalidateOptionsMenu()V

    .line 672
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->n:Z

    .line 673
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 674
    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceUnlockEnabled(Landroid/content/Context;)V

    .line 675
    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceRemainUnlockEnabled(Landroid/content/Context;)V

    .line 676
    invoke-static {v2}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->restoreFaceScreenLightEnabled(Landroid/content/Context;)V

    goto :goto_0

    .line 678
    :cond_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->o:Z

    .line 681
    :goto_0
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->T:Z

    if-nez v2, :cond_1

    .line 682
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 686
    sget-object p1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->c:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;)V

    .line 688
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    const/4 p2, 0x7

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->getParticleAnimDuration()J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 690
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->J:Landroid/widget/TextView;

    const p2, 0x7f12096f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 691
    new-array p1, v1, [Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->J:Landroid/widget/TextView;

    aput-object p2, p1, v0

    invoke-static {p0, v1, p1}, Lcom/coloros/settings/utils/ag;->b(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void

    .line 693
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    if-eqz p1, :cond_3

    .line 694
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 695
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    .line 697
    :cond_3
    invoke-direct {p0, p2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;)V

    .line 698
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->K:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->M:Landroid/widget/Button;

    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->I:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    .line 700
    new-array p1, v1, [Landroid/view/View;

    iget-object p2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->L:Landroid/widget/TextView;

    aput-object p2, p1, v0

    invoke-static {p0, v1, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 701
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->u:Z

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;I)V
    .locals 4

    .line 5596
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleEnrollError errMsgId = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollNewActivity"

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

    .line 5611
    :cond_0
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    return-void

    .line 5603
    :cond_1
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    const-string p1, "showTimeoutDialog"

    .line 5623
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5624
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->R:Z

    .line 5625
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->P:Lcolor/support/v7/app/AlertDialog;

    if-nez p1, :cond_2

    .line 5626
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120972

    .line 5627
    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120f1a

    const/4 v2, 0x0

    .line 5628
    invoke-virtual {p1, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5629
    new-instance v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$3;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)V

    invoke-virtual {p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 5638
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->P:Lcolor/support/v7/app/AlertDialog;

    .line 5639
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->P:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 5640
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->P:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 5642
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5643
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->P:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_3
    return-void

    .line 5607
    :cond_4
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    .line 5608
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Z)V

    return-void

    .line 5599
    :cond_5
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    .line 5600
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Z)V

    return-void

    .line 5614
    :cond_6
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    .line 5615
    sget-object p1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->e:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(ZLcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->B:Z

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Landroid/hardware/face/FaceManager;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->w:Landroid/hardware/face/FaceManager;

    return-object p0
.end method

.method private c(Z)V
    .locals 6

    .line 782
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->A:[B

    if-eqz v0, :cond_3

    .line 783
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->T:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 784
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;Z)V

    .line 3282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mFaceToken = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->A:[B

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OppoFaceEnrollNewActivity"

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->b:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;)V

    .line 3286
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    const/16 v2, 0x10

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendEmptyMessageDelayed(IJ)Z

    .line 3287
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b:J

    if-eqz p1, :cond_2

    .line 3290
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->C:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    .line 3291
    new-array p1, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->D:Landroid/widget/TextView;

    aput-object v0, p1, v3

    invoke-static {p0, v3, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 3292
    new-array p1, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->E:Landroid/widget/TextView;

    aput-object v0, p1, v3

    invoke-static {p0, v3, p1}, Lcom/coloros/settings/utils/ag;->b(Landroid/content/Context;Z[Landroid/view/View;)V

    goto :goto_1

    .line 3294
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->I:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->K:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V

    .line 3295
    new-array p1, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->L:Landroid/widget/TextView;

    aput-object v0, p1, v3

    invoke-static {p0, v3, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    .line 3297
    :goto_1
    new-array p1, v1, [Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->J:Landroid/widget/TextView;

    aput-object v0, p1, v3

    invoke-static {p0, v1, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/content/Context;Z[Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->s:Z

    return p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)J
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b:J

    return-wide v0
.end method

.method private e()V
    .locals 3

    .line 269
    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->N:Landroid/view/SurfaceView;

    .line 270
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->O:Landroid/view/SurfaceHolder;

    .line 271
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->O:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$c;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;B)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const-string v0, "OppoFaceEnrollNewActivity"

    const-string v1, "addCallback setPreviewSurface"

    .line 272
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    if-nez v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    .line 275
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->w:Landroid/hardware/face/FaceManager;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->O:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/b/a;->a(Landroid/hardware/face/FaceManager;Landroid/view/Surface;)I

    move-result v1

    .line 278
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "after setPreviewSurface "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f()V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->P:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->P:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 892
    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->P:Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->s:Z

    return v0
.end method

.method private g()V
    .locals 3

    .line 986
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->y:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    .line 987
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cancelEnroll isCanceled "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OppoFaceEnrollNewActivity"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->y:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const-string v0, "cancelEnroll cancel"

    .line 990
    invoke-static {v2, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->B:Z

    return p0
.end method

.method static synthetic h(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)Lcom/coloros/settings/feature/face/FaceRecordAnimView;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 570
    :try_start_0
    iget v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->v:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Z)V
    .locals 1

    .line 660
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->d:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(ZLcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 201
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method final b()V
    .locals 13

    .line 648
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->w:Landroid/hardware/face/FaceManager;

    invoke-static {v0}, Lcom/coloros/b/a;->a(Landroid/hardware/face/FaceManager;)I

    move-result v0

    .line 649
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->w:Landroid/hardware/face/FaceManager;

    invoke-static {v1}, Lcom/coloros/b/a;->b(Landroid/hardware/face/FaceManager;)I

    move-result v1

    .line 650
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d:Lcom/coloros/settings/feature/face/MaskView;

    .line 2227
    iget-boolean v3, v2, Lcom/coloros/settings/feature/face/MaskView;->g:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v3, ", Width = "

    const-string v5, "preview Hight : "

    const-string v6, "MaskView"

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2231
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    iget v3, v2, Lcom/coloros/settings/feature/face/MaskView;->i:I

    int-to-float v3, v3

    int-to-float v5, v1

    div-float/2addr v3, v5

    .line 2234
    iget v5, v2, Lcom/coloros/settings/feature/face/MaskView;->h:I

    int-to-float v5, v5

    int-to-float v7, v0

    div-float/2addr v5, v7

    .line 2236
    iget v7, v2, Lcom/coloros/settings/feature/face/MaskView;->a:I

    int-to-float v7, v7

    div-float/2addr v7, v3

    float-to-int v7, v7

    .line 2237
    iget v8, v2, Lcom/coloros/settings/feature/face/MaskView;->b:I

    int-to-float v8, v8

    div-float/2addr v8, v5

    float-to-int v8, v8

    .line 2238
    iget v9, v2, Lcom/coloros/settings/feature/face/MaskView;->c:I

    int-to-float v9, v9

    div-float/2addr v9, v3

    float-to-int v9, v9

    .line 2239
    iget v10, v2, Lcom/coloros/settings/feature/face/MaskView;->d:I

    int-to-float v10, v10

    div-float/2addr v10, v5

    float-to-int v10, v10

    .line 2240
    iget v11, v2, Lcom/coloros/settings/feature/face/MaskView;->j:I

    .line 2247
    iget-object v12, v2, Lcom/coloros/settings/feature/face/MaskView;->f:Landroid/graphics/Rect;

    sub-int/2addr v7, v11

    sub-int/2addr v8, v11

    add-int/2addr v9, v11

    add-int/2addr v10, v11

    invoke-virtual {v12, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 2249
    iput-boolean v4, v2, Lcom/coloros/settings/feature/face/MaskView;->g:Z

    .line 2250
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "scaleX : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", scaleY = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mMaskRect : "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/coloros/settings/feature/face/MaskView;->f:Landroid/graphics/Rect;

    .line 2251
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2250
    invoke-static {v6, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2229
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    :cond_2
    :goto_1
    iget-object v2, v2, Lcom/coloros/settings/feature/face/MaskView;->f:Landroid/graphics/Rect;

    .line 651
    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->w:Landroid/hardware/face/FaceManager;

    invoke-static {v3, v2}, Lcom/coloros/b/a;->a(Landroid/hardware/face/FaceManager;Landroid/graphics/Rect;)V

    .line 652
    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d:Lcom/coloros/settings/feature/face/MaskView;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/face/MaskView;->getShownRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h:Landroid/graphics/Rect;

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "initMaskView h "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", w = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; setPreviewFrame = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; mMaskRect = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->h:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollNewActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d:Lcom/coloros/settings/feature/face/MaskView;

    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->W:Landroid/view/Window;

    .line 2343
    iput-object v1, v0, Lcom/coloros/settings/feature/face/MaskView;->k:Landroid/view/Window;

    .line 656
    invoke-virtual {v0, v4}, Lcom/coloros/settings/feature/face/MaskView;->setProgress(I)V

    return-void
.end method

.method final declared-synchronized b(Z)V
    .locals 5

    monitor-enter p0

    .line 921
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 922
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c()V

    .line 924
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->n:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "OppoFaceEnrollNewActivity"

    const-string v3, "cancelEnroll unComplete "

    .line 925
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 927
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    if-eqz v2, :cond_1

    .line 928
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;->a(Z)V

    :cond_1
    if-eqz v0, :cond_3

    .line 932
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g()V

    .line 933
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->T:Z

    if-nez v2, :cond_2

    .line 934
    invoke-static {p0, v1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->setHomeKeyLocked(Landroid/content/Context;Z)V

    .line 936
    :cond_2
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    if-eqz v2, :cond_7

    .line 937
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 938
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    goto :goto_1

    :cond_3
    if-nez p1, :cond_5

    .line 944
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->q:Z

    if-eqz v2, :cond_4

    .line 945
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 946
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->q:Z

    .line 949
    :cond_4
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->r:Z

    if-eqz v2, :cond_5

    .line 950
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 951
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->r:Z

    .line 956
    :cond_5
    iget-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    if-eqz v2, :cond_6

    .line 957
    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 958
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    .line 962
    :cond_6
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g()V

    :cond_7
    :goto_1
    if-eqz p1, :cond_c

    .line 967
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "extra_boot_register_face"

    .line 968
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "extra_allow_skip_register"

    .line 970
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz v2, :cond_8

    if-nez p1, :cond_8

    .line 973
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->setResult(I)V

    goto :goto_3

    :cond_8
    if-nez v0, :cond_a

    .line 975
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->o:Z

    if-eqz p1, :cond_9

    goto :goto_2

    .line 977
    :cond_9
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->n:Z

    if-eqz p1, :cond_b

    .line 978
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->setResult(I)V

    goto :goto_3

    .line 976
    :cond_a
    :goto_2
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->setResult(I)V

    .line 981
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x0

    .line 995
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->Q:Z

    .line 996
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->S:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 998
    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->S:Landroid/widget/Toast;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, -0x1

    .line 1035
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->setResult(I)V

    .line 1036
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 0

    .line 885
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->finish()V

    .line 886
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->zoomFadeTransition()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 898
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0456

    const-string v1, "OppoFaceEnrollNewActivity"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    const v0, 0x7f0a056e

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 907
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "click retry_btn "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->d:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->e:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    if-ne p1, v0, :cond_7

    .line 5006
    :cond_1
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->s:Z

    .line 5007
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->o:Z

    .line 5008
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->n:Z

    .line 5009
    iput v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->v:I

    .line 5011
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->y:Landroid/os/CancellationSignal;

    .line 5013
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    if-eqz p1, :cond_2

    .line 5014
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->N:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 5015
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->p:Z

    .line 5018
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->q:Z

    if-eqz p1, :cond_3

    .line 5019
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->i:Lcom/coloros/settings/feature/face/FaceAnimatedSvgView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 5020
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->q:Z

    .line 5023
    :cond_3
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->r:Z

    if-eqz p1, :cond_4

    .line 5024
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 5025
    iput-boolean v3, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->r:Z

    .line 5028
    :cond_4
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e()V

    .line 5030
    invoke-direct {p0, v3}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c(Z)V

    goto :goto_0

    .line 901
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "click next_btn "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mFaceToken = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->A:[B

    if-eqz v0, :cond_6

    move v3, v2

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    if-ne p1, v0, :cond_7

    .line 903
    invoke-direct {p0, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c(Z)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 169
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d020a

    .line 170
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->setContentView(I)V

    .line 171
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->W:Landroid/view/Window;

    .line 172
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->W:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->W:Landroid/view/Window;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 175
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->W:Landroid/view/Window;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 176
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->W:Landroid/view/Window;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 177
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->W:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->s:Z

    const/4 v1, 0x0

    .line 180
    iput-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->Q:Z

    .line 181
    sget-object v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    .line 182
    new-instance v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    const-string v1, "face"

    .line 184
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/face/FaceManager;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->w:Landroid/hardware/face/FaceManager;

    .line 186
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "face_hw_auth__token"

    .line 188
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->A:[B

    .line 189
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->V:I

    .line 191
    :cond_0
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->y:Landroid/os/CancellationSignal;

    .line 192
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->z:Landroid/os/Vibrator;

    const v1, 0x7f0a02e1

    .line 1217
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->C:Landroid/view/View;

    .line 1218
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->C:Landroid/view/View;

    if-eqz v1, :cond_1

    const v2, 0x7f0a0456

    .line 1219
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->F:Landroid/widget/Button;

    .line 1220
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->C:Landroid/view/View;

    const v2, 0x7f0a02e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->G:Landroid/view/TextureView;

    .line 1221
    new-instance v1, Lcom/coloros/settings/feature/face/b;

    iget-object v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->G:Landroid/view/TextureView;

    invoke-direct {v1, v2, p0}, Lcom/coloros/settings/feature/face/b;-><init>(Landroid/view/TextureView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->H:Lcom/coloros/settings/feature/face/b;

    .line 1222
    iget-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->F:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f0a02e3

    .line 1225
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->D:Landroid/widget/TextView;

    const v1, 0x7f0a02e4

    .line 1226
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->E:Landroid/widget/TextView;

    const v1, 0x7f0a03c9

    .line 1228
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->I:Landroid/view/View;

    const v1, 0x7f0a025d

    .line 1229
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a011a

    .line 1230
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->l:Landroid/widget/FrameLayout;

    const v1, 0x7f0a02d2

    .line 1231
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    const v1, 0x7f0a03cd

    .line 1232
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/face/MaskView;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d:Lcom/coloros/settings/feature/face/MaskView;

    const v1, 0x7f0a0255

    .line 1233
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e:Landroid/view/View;

    const v1, 0x7f0a025c

    .line 1234
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->k:Landroid/widget/ImageView;

    const v1, 0x7f0a079c

    .line 1235
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->j:Landroid/widget/TextView;

    const v1, 0x7f0a0527

    .line 1236
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->J:Landroid/widget/TextView;

    const v1, 0x7f0a025a

    .line 1238
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar;

    const-string v2, ""

    .line 1239
    invoke-virtual {v1, v2}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1240
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1241
    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 1242
    invoke-virtual {v1}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    const v0, 0x7f0a0286

    .line 1243
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->K:Landroid/view/View;

    .line 1244
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->K:Landroid/view/View;

    if-eqz v0, :cond_2

    const v1, 0x7f0a0287

    .line 1245
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->L:Landroid/widget/TextView;

    .line 1246
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->K:Landroid/view/View;

    const v1, 0x7f0a056e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->M:Landroid/widget/Button;

    .line 1247
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->M:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1264
    :cond_2
    sget-object v0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->a:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->a(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;)V

    .line 1265
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->e()V

    .line 1250
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->g:Lcom/coloros/settings/feature/face/FaceRecordAnimView;

    new-instance v1, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$1;-><init>(Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/face/FaceRecordAnimView;->setOnProgressCallBack(Lcom/coloros/settings/feature/face/FaceRecordAnimView$a;)V

    .line 195
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/os/Bundle;)Z

    .line 196
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ab(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->T:Z

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 803
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 872
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f()V

    .line 873
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->d:Lcom/coloros/settings/feature/face/MaskView;

    if-eqz v0, :cond_0

    .line 4131
    iget-object v1, v0, Lcom/coloros/settings/feature/face/MaskView;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/coloros/settings/feature/face/MaskView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4132
    iget-object v0, v0, Lcom/coloros/settings/feature/face/MaskView;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->H:Lcom/coloros/settings/feature/face/b;

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {v0}, Lcom/coloros/settings/feature/face/b;->a()V

    :cond_1
    const/4 v0, 0x0

    .line 879
    iput-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->x:Landroid/hardware/face/FaceManager$EnrollmentCallback;

    .line 880
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 845
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onKeyUp: keycode = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OppoFaceEnrollNewActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->T:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    sget-object v3, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->b:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x3

    const/4 v3, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    .line 852
    iget-boolean p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->Q:Z

    if-eqz p1, :cond_2

    .line 853
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    goto :goto_2

    :cond_2
    const p1, 0x7f120510

    .line 855
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->S:Landroid/widget/Toast;

    .line 856
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->S:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 857
    iput-boolean v2, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->Q:Z

    .line 858
    iget-object p1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->m:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;

    const/16 p2, 0x8

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, p2, v0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$b;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return v2

    .line 862
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->U:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    sget-object v3, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;->c:Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity$a;

    if-ne v0, v3, :cond_4

    if-ne p1, v1, :cond_4

    .line 863
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    return v2

    .line 867
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 823
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0258

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 825
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    .line 830
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 835
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onPause()V

    .line 836
    iget-boolean v0, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->R:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 837
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->b(Z)V

    return-void

    .line 839
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->f()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const v0, 0x7f0a0258

    .line 809
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "extra_allow_skip_register"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1214ed

    .line 812
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 813
    iget-boolean v1, p0, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->n:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const v1, 0x7f120491

    .line 815
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/face/ColorFaceEnrollNewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 818
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 793
    invoke-super {p0}, Lcom/coloros/settings/feature/fingerprint/FingerFaceBaseActivity;->onResume()V

    return-void
.end method
