.class public Lcom/oppo/camera/ui/preview/m;
.super Ljava/lang/Object;
.source "VideoRecordingTimeUI.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Landroid/app/Activity;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/ImageView;

.field private q:Ljava/lang/Float;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 38
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    return-void

    :array_0
    .array-data 4
        0x7f0702e9
        0x7f0702e4
        0x7f0702e8
        0x7f0702e7
        0x7f0702e1
        0x7f0702e0
        0x7f0702e6
        0x7f0702e5
        0x7f0702df
        0x7f0702e3
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    .line 49
    iput v0, p0, Lcom/oppo/camera/ui/preview/m;->c:I

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/m;->d:Z

    .line 52
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    const/4 v1, 0x0

    .line 54
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    .line 55
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    .line 58
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    .line 59
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    .line 60
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    .line 61
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    .line 62
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->m:Landroid/widget/ImageView;

    .line 63
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->n:Landroid/widget/ImageView;

    .line 64
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->o:Landroid/widget/ImageView;

    .line 65
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->p:Landroid/widget/ImageView;

    .line 67
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/m;->q:Ljava/lang/Float;

    .line 68
    iput v0, p0, Lcom/oppo/camera/ui/preview/m;->r:I

    .line 71
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    .line 72
    iput p2, p0, Lcom/oppo/camera/ui/preview/m;->r:I

    return-void
.end method

.method private a(FF)Landroid/view/animation/AnimationSet;
    .locals 2

    .line 326
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 327
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 p1, 0x12c

    .line 328
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/m;FF)Landroid/view/animation/AnimationSet;
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/m;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/m;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/m;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m;->q:Ljava/lang/Float;

    return-object p1
.end method

.method private a(J)V
    .locals 6

    .line 361
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->m:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->n:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->o:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->p:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/32 v1, 0x36ee80

    .line 373
    div-long v3, p1, v1

    long-to-int v3, v3

    .line 374
    rem-long v1, p1, v1

    const-wide/32 v4, 0xea60

    div-long/2addr v1, v4

    long-to-int v1, v1

    .line 375
    rem-long/2addr p1, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr p1, v4

    long-to-int p1, p1

    if-lez v3, :cond_1

    .line 378
    sget-object p2, Lcom/oppo/camera/ui/preview/m;->a:[I

    div-int/lit8 v2, v3, 0xa

    aget p2, p2, v2

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    rem-int/lit8 v3, v3, 0xa

    aget v0, v0, v3

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->i()V

    goto :goto_0

    .line 382
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->j()V

    .line 385
    :goto_0
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->m:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    div-int/lit8 v2, v1, 0xa

    aget v0, v0, v2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->n:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    rem-int/lit8 v1, v1, 0xa

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->o:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    div-int/lit8 v1, p1, 0xa

    aget v0, v0, v1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/m;->p:Landroid/widget/ImageView;

    sget-object v0, Lcom/oppo/camera/ui/preview/m;->a:[I

    rem-int/lit8 p1, p1, 0xa

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "VideoRecordingTimeUI"

    const-string p2, "updateNormalRecordTimeView: parameter is invalid"

    .line 368
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/m;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/m;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->g()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    .line 78
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b009d

    .line 84
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    const v1, 0x7f08020d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    .line 87
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    .line 89
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f080207

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    .line 90
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f080208

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    .line 91
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08020a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->m:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08020b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->n:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f080206

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    .line 94
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08020e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->o:Landroid/widget/ImageView;

    .line 95
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f08020f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->p:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    const v1, 0x7f08006b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    .line 102
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    :cond_1
    return-void
.end method

.method private f()[I
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0x1fffffff

    const/high16 v1, -0x80000000

    .line 212
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 214
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 215
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 216
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 217
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    const/4 v4, 0x2

    div-int/2addr v2, v4

    const/4 v5, 0x3

    .line 218
    new-array v5, v5, [I

    aput v0, v5, v3

    const/4 v0, 0x1

    aput v1, v5, v0

    aput v2, v5, v4

    return-object v5
.end method

.method private g()V
    .locals 14

    .line 222
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 223
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 226
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 227
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->f()[I

    move-result-object v2

    .line 228
    iget-object v3, p0, Lcom/oppo/camera/ui/preview/m;->f:Landroid/app/Activity;

    const v4, 0x7f0800f8

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;

    .line 229
    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getTop()I

    move-result v4

    .line 230
    invoke-virtual {v3}, Lcom/oppo/camera/ui/preview/PreviewFrameLayout;->getHeight()I

    move-result v3

    if-eqz v2, :cond_3

    .line 232
    array-length v5, v2

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 236
    aget v6, v2, v5

    const/4 v7, 0x1

    .line 237
    aget v7, v2, v7

    const/4 v8, 0x2

    .line 238
    aget v2, v2, v8

    .line 240
    iget v9, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    const/high16 v10, 0x41dc0000    # 27.5f

    const/16 v11, 0xa

    const/16 v12, 0x10e

    const/16 v13, 0x5a

    if-eq v9, v13, :cond_2

    const/16 v13, 0x9

    if-eq v9, v12, :cond_1

    .line 258
    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xc

    .line 259
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    div-int/2addr v1, v8

    div-int/2addr v6, v8

    add-int/2addr v6, v2

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 261
    iget v1, p0, Lcom/oppo/camera/ui/preview/m;->r:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {v0, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 251
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    div-int/2addr v3, v8

    add-int/2addr v4, v3

    sub-int/2addr v4, v2

    div-int/2addr v7, v8

    sub-int/2addr v4, v7

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 253
    invoke-static {v10}, Lcom/oppo/camera/o/d;->a(F)I

    move-result v1

    div-int/2addr v6, v8

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move v5, v12

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    .line 243
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 244
    div-int/2addr v3, v8

    add-int/2addr v4, v3

    add-int/2addr v4, v2

    div-int/2addr v7, v8

    sub-int/2addr v4, v7

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 245
    invoke-static {v10}, Lcom/oppo/camera/o/d;->a(F)I

    move-result v1

    div-int/2addr v6, v8

    sub-int/2addr v1, v6

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move v5, v13

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    neg-int v1, v5

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 269
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 270
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    nop

    :cond_3
    :goto_1
    return-void
.end method

.method private h()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 291
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/ui/preview/m;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 294
    new-instance v1, Lcom/oppo/camera/ui/preview/m$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/m$2;-><init>(Lcom/oppo/camera/ui/preview/m;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 319
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->g()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->g:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->g()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 416
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "VideoRecordingTimeUI"

    const-string v1, "onPause"

    .line 275
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 279
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    .line 283
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->e()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 194
    iput p1, p0, Lcom/oppo/camera/ui/preview/m;->c:I

    .line 196
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/m;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iput p1, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    .line 202
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    if-nez p1, :cond_1

    .line 203
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->h()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(JZ)V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 347
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/ui/preview/m;->a(J)V

    .line 349
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    .line 350
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "VideoRecordingTimeUI"

    const-string p2, "updateRecordingTime: parameter is invalid"

    .line 342
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Float;I)V
    .locals 2

    const-string v0, "VideoRecordingTimeUI"

    const-string v1, "showTimeUI"

    .line 113
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m;->q:Ljava/lang/Float;

    .line 116
    iput p2, p0, Lcom/oppo/camera/ui/preview/m;->r:I

    .line 117
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->e()V

    .line 118
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->d()V

    .line 120
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/m;->g()V

    .line 122
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    const p1, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 126
    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/ui/preview/m;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object p1

    .line 127
    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v1, p1}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    .line 128
    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 129
    invoke-virtual {v1, p2}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 131
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 132
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    const-string p1, "CameraTest Video Shutter Timing Start"

    .line 134
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    iput-boolean p2, p0, Lcom/oppo/camera/ui/preview/m;->d:Z

    return-void
.end method

.method public a(Z)V
    .locals 6

    const-string v0, "VideoRecordingTimeUI"

    const-string v1, "hideTimeUI"

    .line 141
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 143
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    .line 145
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 146
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 147
    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    if-eqz p1, :cond_0

    .line 150
    new-instance p1, Lcom/oppo/camera/ui/preview/m$1;

    invoke-direct {p1, p0}, Lcom/oppo/camera/ui/preview/m$1;-><init>(Lcom/oppo/camera/ui/preview/m;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 171
    invoke-direct {p0, v0, v2}, Lcom/oppo/camera/ui/preview/m;->a(FF)Landroid/view/animation/AnimationSet;

    move-result-object v0

    const-wide/16 v4, 0x64

    .line 172
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 173
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 174
    new-instance p1, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {p1, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 175
    invoke-virtual {p1, v2}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 176
    invoke-virtual {p1, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 178
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 179
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->startLayoutAnimation()V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/m;->q:Ljava/lang/Float;

    .line 183
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    const-string p1, "hideTimeUI, without Animation"

    .line 185
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/m;->d:Z

    .line 190
    iget p1, p0, Lcom/oppo/camera/ui/preview/m;->c:I

    iput p1, p0, Lcom/oppo/camera/ui/preview/m;->b:I

    return-void
.end method

.method public b()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 356
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    const v0, 0x7f0702dc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 336
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/m;->i:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/m;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/m;->h:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
