.class public Lcom/oppo/camera/ui/preview/a;
.super Ljava/lang/Object;
.source "AISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/preview/a$b;,
        Lcom/oppo/camera/ui/preview/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/oppo/camera/i;

.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/oppo/camera/ui/menu/OppoTextView;

.field private h:Landroid/widget/ImageView;

.field private i:Lcom/oppo/camera/ui/preview/a$a;

.field private j:Landroid/animation/AnimatorSet;

.field private k:Landroid/animation/ObjectAnimator;

.field private l:Lcom/oppo/camera/ui/preview/a$b;

.field private m:Landroid/view/View$OnLayoutChangeListener;

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/oppo/camera/i;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    .line 53
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    .line 54
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->c:Lcom/oppo/camera/i;

    .line 55
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->e:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 57
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->f:Landroid/widget/ImageView;

    .line 58
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 59
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    .line 60
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    .line 61
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    .line 62
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    .line 63
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->l:Lcom/oppo/camera/ui/preview/a$b;

    .line 64
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->m:Landroid/view/View$OnLayoutChangeListener;

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    .line 66
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    .line 67
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->p:I

    .line 68
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->q:I

    .line 69
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    .line 70
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->s:I

    .line 71
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->t:I

    .line 72
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    .line 75
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    .line 77
    iput-object p3, p0, Lcom/oppo/camera/ui/preview/a;->c:Lcom/oppo/camera/i;

    .line 78
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0600c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    .line 79
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p1

    int-to-double p1, p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    mul-double/2addr p1, v0

    double-to-int p1, p1

    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->q:I

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 233
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v0

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private a(II)Lcom/oppo/camera/ui/preview/a$a;
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/oppo/camera/ui/preview/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/ui/preview/a$a;-><init>(Lcom/oppo/camera/ui/preview/a;Lcom/oppo/camera/ui/preview/a$1;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/preview/a$a;->b(I)V

    .line 318
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/a$a;->a(Z)V

    .line 319
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/preview/a$a;->b(Z)V

    packed-switch p1, :pswitch_data_0

    .line 428
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 424
    :pswitch_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0074

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 420
    :pswitch_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0069

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 416
    :pswitch_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0070

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 412
    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0076

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 408
    :pswitch_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0063

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 404
    :pswitch_5
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006f

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 400
    :pswitch_6
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0071

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 396
    :pswitch_7
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0075

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 392
    :pswitch_8
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0079

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 388
    :pswitch_9
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0078

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 384
    :pswitch_a
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0077

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto/16 :goto_0

    .line 367
    :pswitch_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataByAIScene, subCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AISceneUI"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const v0, 0x7f0f0072

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 372
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const v0, 0x7f0f0073

    invoke-virtual {p2, v0}, Lcom/oppo/camera/ui/preview/a$a;->b(I)V

    .line 373
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/a$a;->a(Z)V

    .line 374
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/a$a;->b(Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 376
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, v1}, Lcom/oppo/camera/ui/preview/a$a;->b(I)V

    .line 377
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, v2}, Lcom/oppo/camera/ui/preview/a$a;->a(Z)V

    .line 378
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/ui/preview/a$a;->b(Z)V

    goto :goto_0

    .line 363
    :pswitch_c
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006e

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 359
    :pswitch_d
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006d

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 355
    :pswitch_e
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006c

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 351
    :pswitch_f
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006b

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 347
    :pswitch_10
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f006a

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 343
    :pswitch_11
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0068

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 339
    :pswitch_12
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0067

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 335
    :pswitch_13
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f007a

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 331
    :pswitch_14
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0066

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 327
    :pswitch_15
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0065

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    goto :goto_0

    .line 323
    :pswitch_16
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    const p2, 0x7f0f0064

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/preview/a$a;->a(I)V

    .line 432
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->i:Lcom/oppo/camera/ui/preview/a$a;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/a;)Lcom/oppo/camera/ui/preview/a$b;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a;->l:Lcom/oppo/camera/ui/preview/a$b;

    return-object p0
.end method

.method private d(I)V
    .locals 1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 437
    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    goto :goto_0

    .line 439
    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    :goto_0
    return-void
.end method

.method private e(I)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 467
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->l:Lcom/oppo/camera/ui/preview/a$b;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 473
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a$b;->b(I)V

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/ui/preview/a;->c()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a$b;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private h()V
    .locals 11

    .line 83
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b001c

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->a:Landroid/app/Activity;

    const v1, 0x7f08003f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->e:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 87
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->f:Landroid/widget/ImageView;

    .line 88
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f080040

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/OppoTextView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 89
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x7f08003e

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0xf0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    .line 93
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {v0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 94
    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v5, [F

    fill-array-data v8, :array_1

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 95
    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3eb33333    # 0.35f

    const/high16 v10, 0x40000000    # 2.0f

    invoke-direct {v8, v9, v10, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 98
    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 99
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/oppo/camera/ui/preview/a$1;

    invoke-direct {v6, p0}, Lcom/oppo/camera/ui/preview/a$1;-><init>(Lcom/oppo/camera/ui/preview/a;)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    .line 127
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ed70a3d    # 0.42f

    const v7, 0x3f147ae1    # 0.58f

    invoke-direct {v5, v6, v4, v7, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 129
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 130
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/oppo/camera/ui/preview/a$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a$2;-><init>(Lcom/oppo/camera/ui/preview/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 154
    new-instance v1, Lcom/oppo/camera/ui/preview/a$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a$3;-><init>(Lcom/oppo/camera/ui/preview/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->l()V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private i()V
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private j()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a;->m:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 171
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->i()V

    .line 173
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a;->b:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 175
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    .line 176
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a;->e:Lcom/oppo/camera/ui/menu/OppoTextView;

    .line 179
    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a;->j:Landroid/animation/AnimatorSet;

    .line 180
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a;->k:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    .line 182
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->s:I

    .line 183
    iput v0, p0, Lcom/oppo/camera/ui/preview/a;->t:I

    return-void
.end method

.method public a(I)V
    .locals 6

    .line 267
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 268
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a;->d(I)V

    .line 270
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    .line 277
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 278
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v1}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 279
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 280
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v2

    .line 281
    iget-object v3, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    const/16 v3, 0x5a

    const/16 v4, 0xa

    if-eq p1, v3, :cond_2

    const/16 v3, 0x10e

    const/16 v5, 0xb

    if-eq p1, v3, :cond_1

    .line 299
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 300
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 301
    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result p1

    iget v2, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    add-int/2addr p1, v2

    iget v2, p0, Lcom/oppo/camera/ui/preview/a;->p:I

    add-int/2addr p1, v2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 302
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result p1

    sub-int/2addr p1, v1

    iget v1, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 293
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 294
    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr p1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 295
    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->q:I

    sub-int/2addr p1, v2

    iget v1, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    add-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    .line 285
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 286
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 287
    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr p1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 288
    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->q:I

    sub-int/2addr p1, v2

    iget v1, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x2

    invoke-static {}, Lcom/oppo/camera/o/d;->E()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 306
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const v1, 0x4479c000    # 999.0f

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setZ(F)V

    .line 307
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    iget v0, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setRotation(F)V

    :cond_3
    return-void
.end method

.method public a(III)V
    .locals 4

    .line 187
    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->s:I

    .line 188
    iput p3, p0, Lcom/oppo/camera/ui/preview/a;->t:I

    .line 189
    invoke-direct {p0, p2}, Lcom/oppo/camera/ui/preview/a;->d(I)V

    .line 191
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    if-eqz v0, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->h()V

    .line 197
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_1

    return-void

    .line 201
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/ui/preview/a;->a(II)Lcom/oppo/camera/ui/preview/a$a;

    move-result-object p3

    .line 203
    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 204
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->i()V

    .line 205
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->k()V

    goto :goto_2

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->e:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(I)V

    .line 209
    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/menu/OppoTextView;->setText(I)V

    .line 211
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/OppoTextView;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->g:Lcom/oppo/camera/ui/menu/OppoTextView;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/OppoTextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    :goto_0
    invoke-virtual {p3}, Lcom/oppo/camera/ui/preview/a$a;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 219
    iget-object p3, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 222
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    :goto_1
    invoke-virtual {p0, p2}, Lcom/oppo/camera/ui/preview/a;->a(I)V

    .line 226
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->i()V

    .line 227
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->j()V

    :goto_2
    return-void
.end method

.method public a(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a;->m:Landroid/view/View$OnLayoutChangeListener;

    .line 499
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->l()V

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a$b;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a;->l:Lcom/oppo/camera/ui/preview/a$b;

    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 451
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    .line 452
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->h()V

    .line 454
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 455
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a;->u:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 457
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a;->e(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 459
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 460
    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->s:I

    iget p2, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    iget v0, p0, Lcom/oppo/camera/ui/preview/a;->t:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/oppo/camera/ui/preview/a;->a(III)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->i()V

    .line 262
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a;->k()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 444
    iget v0, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    if-eq p1, v0, :cond_0

    .line 445
    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->o:I

    .line 446
    iget p1, p0, Lcom/oppo/camera/ui/preview/a;->r:I

    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/a;->a(I)V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/oppo/camera/ui/preview/a;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 517
    iput p1, p0, Lcom/oppo/camera/ui/preview/a;->p:I

    return-void
.end method

.method public d()Z
    .locals 2

    .line 509
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e()I
    .locals 1

    .line 521
    iget v0, p0, Lcom/oppo/camera/ui/preview/a;->n:I

    return v0
.end method

.method public f()Z
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 529
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public g()Landroid/widget/RelativeLayout;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a;->d:Landroid/widget/RelativeLayout;

    return-object v0
.end method
