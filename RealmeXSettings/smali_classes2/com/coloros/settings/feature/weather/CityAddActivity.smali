.class public Lcom/coloros/settings/feature/weather/CityAddActivity;
.super Lcom/coloros/settings/feature/weather/BaseActivity;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/coloros/settings/feature/weather/a/e$a;
.implements Lcom/coloros/settings/feature/weather/module/a/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/weather/CityAddActivity$b;,
        Lcom/coloros/settings/feature/weather/CityAddActivity$c;,
        Lcom/coloros/settings/feature/weather/CityAddActivity$a;,
        Lcom/coloros/settings/feature/weather/CityAddActivity$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private A:Lcom/coloros/settings/feature/weather/module/city/b;

.field private B:Lcom/coloros/settings/feature/weather/module/city/b$c;

.field private C:Landroid/os/Handler;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:F

.field private G:Landroid/widget/RelativeLayout;

.field private H:Z

.field private I:Lcom/coloros/settings/feature/weather/module/a/a;

.field private J:Lcom/color/support/widget/ColorSecurityAlertDialog;

.field private K:Z

.field private L:Landroid/view/animation/Interpolator;

.field private M:Landroid/view/animation/Interpolator;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Z

.field private Q:Landroid/animation/AnimatorSet;

.field private R:Landroid/animation/AnimatorSet;

.field private S:Landroid/animation/ValueAnimator;

.field private T:Landroid/animation/ValueAnimator;

.field private U:Lcom/coloros/settings/utils/bm;

.field private V:Lcom/coloros/settings/utils/t;

.field private W:Landroid/view/View;

.field private X:Landroid/widget/AutoCompleteTextView;

.field private Y:Z

.field private Z:Landroid/view/View$OnFocusChangeListener;

.field private aa:Lcolor/support/v7/widget/SearchView$OnQueryTextListener;

.field private ab:Lcom/coloros/settings/feature/weather/CityAddActivity$b;

.field private ac:Landroid/widget/TextView$OnEditorActionListener;

.field private ad:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

.field private ae:Z

.field private af:Landroid/view/View$OnTouchListener;

.field private b:Lcom/coloros/settings/feature/weather/a/e;

.field private c:Lcom/coloros/settings/feature/weather/view/b;

.field private d:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:I

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lcolor/support/v7/widget/Toolbar;

.field private n:Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;

.field private o:Landroid/view/LayoutInflater;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/widget/TextView;

.field private r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

.field private s:Lcom/color/support/widget/ColorSearchViewAnimate;

.field private t:Lcolor/support/v7/widget/SearchView;

.field private u:Landroid/widget/ListView;

.field private v:Lcom/coloros/settings/a/a;

.field private w:Z

.field private x:Landroid/widget/TextView;

.field private y:Landroid/content/Context;

.field private z:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->f:Ljava/util/List;

    .line 152
    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->g:Ljava/util/List;

    const/4 v1, 0x0

    .line 153
    iput v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->h:I

    .line 154
    iput v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->i:I

    .line 155
    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->j:Z

    .line 162
    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->F:F

    .line 182
    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->H:Z

    .line 185
    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->K:Z

    .line 191
    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->O:Z

    .line 206
    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Y:Z

    .line 906
    new-instance v0, Lcom/coloros/settings/feature/weather/CityAddActivity$13;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$13;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Z:Landroid/view/View$OnFocusChangeListener;

    .line 917
    new-instance v0, Lcom/coloros/settings/feature/weather/CityAddActivity$14;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$14;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->aa:Lcolor/support/v7/widget/SearchView$OnQueryTextListener;

    .line 976
    new-instance v0, Lcom/coloros/settings/feature/weather/CityAddActivity$b;

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity$b;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ab:Lcom/coloros/settings/feature/weather/CityAddActivity$b;

    .line 1199
    new-instance v0, Lcom/coloros/settings/feature/weather/CityAddActivity$15;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$15;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ac:Landroid/widget/TextView$OnEditorActionListener;

    .line 1243
    new-instance v0, Lcom/coloros/settings/feature/weather/CityAddActivity$16;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$16;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ad:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

    .line 1334
    new-instance v0, Lcom/coloros/settings/feature/weather/CityAddActivity$6;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$6;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->af:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic A(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->g()V

    return-void
.end method

.method static synthetic B(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 4

    .line 15296
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ae:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 15299
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ae:Z

    .line 15300
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 15301
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->P:Z

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 15302
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 15304
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/coloros/settings/feature/weather/CityAddActivity$4;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$4;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 15305
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 15313
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 15314
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 15318
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15319
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 15320
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 15321
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 15322
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->L:Landroid/view/animation/Interpolator;

    .line 15323
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/weather/CityAddActivity$5;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$5;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 15324
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 15331
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method static synthetic C(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 4

    .line 16257
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ae:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 16260
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ae:Z

    .line 16261
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 16262
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->P:Z

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 16263
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->T:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 16265
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lcom/coloros/settings/feature/weather/CityAddActivity$2;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$2;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 16266
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 16274
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 16275
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 16278
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v3, 0x0

    .line 16279
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 16280
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->M:Landroid/view/animation/Interpolator;

    .line 16281
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/feature/weather/CityAddActivity$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$3;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 16282
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 16291
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    return-void
.end method

.method static synthetic D(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcolor/support/v7/widget/Toolbar;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic E(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic F(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ae:Z

    return v0
.end method

.method static synthetic G(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ae:Z

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/CityAddActivity;I)I
    .locals 0

    .line 98
    iput p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->l:I

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/content/Context;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->N:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 14954
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14955
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private a(F)V
    .locals 2

    const/4 v0, 0x0

    .line 1422
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1424
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1380
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(F)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 1100
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->H:Z

    return-void
.end method

.method private synthetic a(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 239
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->n:Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;->getMeasuredHeight()I

    move-result v2

    .line 240
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v4, v4}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setPadding(IIII)V

    .line 241
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v3, v4}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setClipToPadding(Z)V

    .line 242
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v3}, Lcom/color/support/widget/ColorSearchViewAnimate;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 243
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    invoke-virtual {v3, v4, v2, v4, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 244
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 246
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 247
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 248
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14361
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const v7, 0x3e99999a    # 0.3f

    const v8, 0x3dcccccd    # 0.1f

    invoke-direct {v2, v7, v6, v8, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 14362
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v9, 0x3f666666    # 0.9f

    invoke-direct {v8, v7, v6, v9, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 14364
    iget-boolean v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->P:Z

    const/4 v6, 0x2

    if-eqz v3, :cond_0

    .line 14365
    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->S:Landroid/animation/ValueAnimator;

    .line 14366
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->S:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$4SiQCuiRcaijbTEreOufKF1Xs2U;

    invoke-direct {v7, v0}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$4SiQCuiRcaijbTEreOufKF1Xs2U;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14369
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->S:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/coloros/settings/feature/weather/CityAddActivity$7;

    invoke-direct {v7, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity$7;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14378
    new-array v3, v6, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->T:Landroid/animation/ValueAnimator;

    .line 14379
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->T:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$D_zpyGupnH7TzQuASmTdQPcBBJA;

    invoke-direct {v7, v0}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$D_zpyGupnH7TzQuASmTdQPcBBJA;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 14382
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->T:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/coloros/settings/feature/weather/CityAddActivity$8;

    invoke-direct {v7, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity$8;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    invoke-virtual {v3, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 14390
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->T:Landroid/animation/ValueAnimator;

    const-wide/16 v9, 0xc8

    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14391
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14394
    :cond_0
    new-instance v3, Lcom/coloros/settings/utils/bm;

    invoke-direct {v3}, Lcom/coloros/settings/utils/bm;-><init>()V

    iput-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->U:Lcom/coloros/settings/utils/bm;

    .line 14395
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->U:Lcom/coloros/settings/utils/bm;

    iget-object v7, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v3, v7}, Lcom/coloros/settings/utils/bm;->a(Landroid/view/View;)Lcom/coloros/settings/utils/bm;

    .line 14396
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->U:Lcom/coloros/settings/utils/bm;

    iget-object v7, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v3, v7}, Lcom/coloros/settings/utils/bm;->a(Landroid/view/View;)Lcom/coloros/settings/utils/bm;

    .line 14397
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-static {v3}, Lcom/coloros/settings/utils/bm;->b(Landroid/view/View;)I

    move-result v3

    .line 14398
    iget-object v7, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v7}, Lcolor/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result v7

    iget-object v9, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v9}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v7, v9

    neg-int v7, v7

    .line 14399
    iget-object v9, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->U:Lcom/coloros/settings/utils/bm;

    new-array v10, v6, [I

    aput v3, v10, v4

    aput v7, v10, v5

    const-string v11, "topMargin"

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 14401
    new-instance v10, Lcom/coloros/settings/utils/t;

    iget-object v12, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-direct {v10, v12}, Lcom/coloros/settings/utils/t;-><init>(Landroid/view/View;)V

    iput-object v10, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->V:Lcom/coloros/settings/utils/t;

    .line 14402
    iget-object v10, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v10}, Lcom/color/support/widget/ColorSearchViewAnimate;->getMeasuredHeight()I

    move-result v10

    .line 14403
    iget-object v12, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v12}, Lcolor/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result v12

    iget-object v13, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v13}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v13

    sub-int/2addr v12, v13

    .line 14404
    iget-object v13, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->V:Lcom/coloros/settings/utils/t;

    new-array v14, v6, [I

    aput v10, v14, v4

    aput v12, v14, v5

    const-string v15, "height"

    invoke-static {v13, v15, v14}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 14406
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v14, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Q:Landroid/animation/AnimatorSet;

    .line 14407
    iget-object v14, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Q:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    aput-object v9, v1, v4

    aput-object v13, v1, v5

    invoke-virtual {v14, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 14408
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Q:Landroid/animation/AnimatorSet;

    const-wide/16 v13, 0xfa

    invoke-virtual {v1, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 14409
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Q:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14411
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->U:Lcom/coloros/settings/utils/bm;

    new-array v2, v6, [I

    aput v7, v2, v4

    aput v3, v2, v5

    invoke-static {v1, v11, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 14412
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->V:Lcom/coloros/settings/utils/t;

    new-array v3, v6, [I

    aput v12, v3, v4

    aput v10, v3, v5

    invoke-static {v2, v15, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 14414
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->R:Landroid/animation/AnimatorSet;

    .line 14415
    iget-object v3, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->R:Landroid/animation/AnimatorSet;

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v4

    aput-object v2, v6, v5

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 14416
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v13, v14}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 14417
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->R:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v1, p1

    if-eqz v1, :cond_2

    .line 255
    invoke-static/range {p0 .. p0}, Lcom/coloros/settings/feature/weather/a/d;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->X:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 257
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->X:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1, v4}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    return-void

    :cond_1
    const-string v2, "state_search_view_state"

    .line 259
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 261
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v2, v5}, Lcom/color/support/widget/ColorSearchViewAnimate;->changeStateWithAnimation(I)V

    const-string v2, "state_is_show_key_board"

    .line 262
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->g()V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/util/List;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;I)V
    .locals 5
    .param p1    # Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "CityAddActivity"

    const-string p2, "CityAddActivity#saveCity(@Nullable CityInfoLocal city, int virtual, int fromSearch) >>>> Not saved , city is empty !!!"

    .line 1076
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->H:Z

    return-void

    .line 1081
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->N:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->N:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1083
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->H:Z

    return-void

    .line 1086
    :cond_1
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1087
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120887

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityNameLocal()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120886

    new-instance v3, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;

    invoke-direct {v3, p0, p1, v0, p2}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$WEPVKCz7wSBmVPQIz5eYWsqDLhQ;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;II)V

    .line 1088
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f120491

    new-instance v1, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$1OpHC_r0ZpOFV6LLYR0Gapui8Sg;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$1OpHC_r0ZpOFV6LLYR0Gapui8Sg;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 1100
    invoke-virtual {p1, p2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1101
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1102
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 1103
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;IILandroid/content/DialogInterface;I)V
    .locals 0

    .line 1089
    iget-object p4, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->C:Landroid/os/Handler;

    const/16 p5, 0x8

    invoke-virtual {p4, p5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1090
    iget-object p4, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->C:Landroid/os/Handler;

    invoke-virtual {p4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p4

    .line 1091
    iput p5, p4, Landroid/os/Message;->what:I

    .line 1092
    iput-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1093
    iput p2, p4, Landroid/os/Message;->arg1:I

    .line 1094
    iput p3, p4, Landroid/os/Message;->arg2:I

    .line 1095
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->C:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1096
    iget-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->O:Z

    if-eqz p1, :cond_0

    .line 1097
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->g()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/feature/weather/module/city/b;Z)V
    .locals 7

    const-string v0, "Error occur, e = "

    const-string v1, "WeatherServiceBridge"

    .line 363
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    .line 11080
    invoke-static {v2}, Lcom/coloros/settings/feature/weather/module/city/b;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11081
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/coloros/settings/feature/weather/module/city/a;->a()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12100
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 12102
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 12103
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 12104
    invoke-virtual {v3, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "ZH"

    :cond_2
    :goto_0
    const-string v2, "fil"

    .line 12080
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v3, "tl"

    .line 12083
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13088
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v4, "CN"

    if-eqz v3, :cond_5

    .line 13090
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 13091
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 13092
    invoke-virtual {v5, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    move-object v3, v5

    goto :goto_1

    :cond_5
    move-object v3, v4

    .line 12083
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    iput-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->D:Ljava/lang/String;

    const-string v2, "persist.sys.oppo.region"

    .line 366
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->E:Ljava/lang/String;

    .line 368
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->E:Ljava/lang/String;

    const-string v3, "OC"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 369
    iput-object v4, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->E:Ljava/lang/String;

    .line 371
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mLocale "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->D:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mCountryCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->E:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CityAddActivity"

    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    .line 373
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->c()V

    .line 376
    :cond_7
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->E:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->D:Ljava/lang/String;

    new-instance v3, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$sldAsXqNpWLacj28NT8TOc2ARlA;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$sldAsXqNpWLacj28NT8TOc2ARlA;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 14046
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/b;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    .line 14048
    iput-object v3, p1, Lcom/coloros/settings/feature/weather/module/city/c;->c:Lcom/coloros/settings/feature/weather/module/city/b$a;

    .line 14115
    iget-object v3, p1, Lcom/coloros/settings/feature/weather/module/city/c;->b:Lcom/coloros/a/b;

    if-nez v3, :cond_8

    .line 14116
    new-instance v3, Lcom/coloros/settings/feature/weather/module/city/c$1;

    invoke-direct {v3, p1}, Lcom/coloros/settings/feature/weather/module/city/c$1;-><init>(Lcom/coloros/settings/feature/weather/module/city/c;)V

    iput-object v3, p1, Lcom/coloros/settings/feature/weather/module/city/c;->b:Lcom/coloros/a/b;

    .line 14050
    :cond_8
    invoke-static {}, Lcom/coloros/settings/feature/weather/module/a/a;->a()Lcom/coloros/settings/feature/weather/module/a/a;

    move-result-object v3

    iget-object p1, p1, Lcom/coloros/settings/feature/weather/module/city/c;->b:Lcom/coloros/a/b;

    .line 14169
    iget-boolean v4, v3, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    if-eqz v4, :cond_9

    .line 14171
    :try_start_0
    iget-object v3, v3, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    invoke-interface {v3, p2, v2, p1}, Lcom/coloros/d/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/a/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14175
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception p1

    .line 14173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    .line 11054
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/weather/module/city/f;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1182
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1183
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->d()V

    .line 1184
    iget-object p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->A:Lcom/coloros/settings/feature/weather/module/city/b;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->D:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->B:Lcom/coloros/settings/feature/weather/module/city/b$c;

    invoke-virtual {p2, p1, v0, v1}, Lcom/coloros/settings/feature/weather/module/city/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/coloros/settings/feature/weather/module/city/b$c;)V

    return-void

    .line 1186
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    const/16 p2, 0x9

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/weather/a/e;->removeMessages(I)V

    .line 1187
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/weather/a/e;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;)V"
        }
    .end annotation

    .line 962
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->e()V

    .line 963
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->c:Lcom/coloros/settings/feature/weather/view/b;

    if-nez v0, :cond_0

    .line 964
    new-instance v0, Lcom/coloros/settings/feature/weather/view/b;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/coloros/settings/feature/weather/view/b;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->c:Lcom/coloros/settings/feature/weather/view/b;

    .line 965
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->c:Lcom/coloros/settings/feature/weather/view/b;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 9043
    :cond_0
    iput-object p1, v0, Lcom/coloros/settings/feature/weather/view/b;->a:Ljava/util/List;

    .line 968
    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/view/b;->notifyDataSetChanged()V

    .line 970
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->P:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 971
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->W:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 973
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;",
            "Ljava/util/List<",
            "Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;",
            ">;)V"
        }
    .end annotation

    .line 589
    invoke-static {p0}, Lcom/coloros/settings/feature/weather/module/city/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 590
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    const/4 v4, 0x1

    if-ge v3, v2, :cond_2

    .line 592
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-virtual {v5}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 593
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-virtual {p1, v4}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setExist(Z)V

    goto :goto_2

    .line 596
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-virtual {v4, v1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setExist(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz p2, :cond_3

    .line 599
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_3

    :cond_3
    move p1, v1

    :goto_3
    move v2, v1

    :goto_4
    if-ge v2, p1, :cond_5

    .line 601
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 602
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-virtual {p1, v4}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setExist(Z)V

    return-void

    .line 605
    :cond_4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-virtual {v3, v1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->setExist(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method private synthetic a(Z)V
    .locals 2

    .line 377
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUpdateCompleted "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CityAddActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/weather/CityAddActivity;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/a/e;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    return-object p0
.end method

.method static synthetic b()Ljava/lang/Object;
    .locals 1

    .line 98
    sget-object v0, Lcom/coloros/settings/feature/weather/CityAddActivity;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private synthetic b(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1367
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(F)V

    return-void
.end method

.method private synthetic b(Ljava/util/List;)V
    .locals 2

    .line 539
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->e()V

    if-nez p1, :cond_0

    .line 541
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/a/e;->removeMessages(I)V

    .line 544
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/weather/a/e;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/LayoutInflater;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->o:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private c()V
    .locals 5

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->A:Lcom/coloros/settings/feature/weather/module/city/b;

    if-nez v1, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    if-nez v2, :cond_1

    return-void

    .line 7050
    :cond_1
    iget-object v1, v1, Lcom/coloros/settings/feature/weather/module/city/b;->a:Lcom/coloros/settings/feature/weather/module/city/c;

    .line 7154
    invoke-virtual {v1}, Lcom/coloros/settings/feature/weather/module/city/c;->a()Lcom/coloros/settings/feature/weather/module/city/b$b;

    move-result-object v1

    .line 402
    iget-object v2, v1, Lcom/coloros/settings/feature/weather/module/city/b$b;->a:Ljava/util/List;

    iput-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->f:Ljava/util/List;

    .line 403
    iget-object v1, v1, Lcom/coloros/settings/feature/weather/module/city/b$b;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->g:Ljava/util/List;

    .line 405
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->f:Ljava/util/List;

    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->g:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Ljava/util/List;Ljava/util/List;)V

    .line 407
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->f:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 408
    :goto_0
    iget-object v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->g:Ljava/util/List;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :cond_3
    add-int v3, v1, v2

    if-lez v1, :cond_4

    .line 411
    iget-object v4, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->f:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-lez v2, :cond_5

    .line 415
    iget-object v4, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    if-lez v3, :cond_6

    .line 419
    iget-object v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    const/4 v4, 0x2

    invoke-static {v3, v4, v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/weather/a/e;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/weather/CityAddActivity;)F
    .locals 0

    .line 98
    iget p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->F:F

    return p0
.end method

.method private d()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->B:Lcom/coloros/settings/feature/weather/module/city/b$c;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$UTlgk1bynQR8qBuhFsSFllEq1BU;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$UTlgk1bynQR8qBuhFsSFllEq1BU;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->B:Lcom/coloros/settings/feature/weather/module/city/b$c;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/coloros/settings/feature/weather/CityAddActivity;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->k:I

    return p0
.end method

.method private e()V
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/a/e;->removeMessages(I)V

    .line 551
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/a/e;->removeMessages(I)V

    .line 552
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/a/e;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic f(Lcom/coloros/settings/feature/weather/CityAddActivity;)I
    .locals 0

    .line 98
    iget p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->l:I

    return p0
.end method

.method private f()V
    .locals 3

    .line 1008
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->j:Z

    if-eqz v0, :cond_0

    return-void

    .line 1011
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1012
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    .line 1013
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->e()V

    .line 1014
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->W:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1015
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setVisibility(I)V

    return-void
.end method

.method static synthetic g(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/view/HeadersGridView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 1235
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    .line 1236
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 1237
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v2}, Lcolor/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private synthetic h()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->I:Lcom/coloros/settings/feature/weather/module/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/module/a/a;->b()V

    return-void
.end method

.method static synthetic h(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->w:Z

    return p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/weather/CityAddActivity;)Ljava/util/List;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/weather/CityAddActivity;)Ljava/util/List;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/CityAddActivity$a;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->d:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    return-object p0
.end method

.method static synthetic l(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->H:Z

    return p0
.end method

.method public static synthetic lambda$1OpHC_r0ZpOFV6LLYR0Gapui8Sg(Lcom/coloros/settings/feature/weather/CityAddActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$4SiQCuiRcaijbTEreOufKF1Xs2U(Lcom/coloros/settings/feature/weather/CityAddActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$D_zpyGupnH7TzQuASmTdQPcBBJA(Lcom/coloros/settings/feature/weather/CityAddActivity;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic lambda$UTlgk1bynQR8qBuhFsSFllEq1BU(Lcom/coloros/settings/feature/weather/CityAddActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$WEPVKCz7wSBmVPQIz5eYWsqDLhQ(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;IILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;IILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$esD97LZ4doJE9FFeskE6CsHNxeM(Lcom/coloros/settings/feature/weather/CityAddActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$mabuwd6xtBetbx9KcC-KGQk-1m0(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->h()V

    return-void
.end method

.method public static synthetic lambda$sldAsXqNpWLacj28NT8TOc2ARlA(Lcom/coloros/settings/feature/weather/CityAddActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Z)V

    return-void
.end method

.method public static synthetic lambda$xY_BqGgbdq0tZ0ACQ2NB_ODHxZ4(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/b;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/module/city/b;Z)V

    return-void
.end method

.method static synthetic m(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->H:Z

    return v0
.end method

.method static synthetic n(Lcom/coloros/settings/feature/weather/CityAddActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->e:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o(Lcom/coloros/settings/feature/weather/CityAddActivity;)Z
    .locals 1

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->O:Z

    return v0
.end method

.method static synthetic p(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->n:Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;

    return-object p0
.end method

.method static synthetic q(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/color/support/widget/ColorSearchViewAnimate;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    return-object p0
.end method

.method static synthetic r(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->f()V

    return-void
.end method

.method static synthetic s(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->x:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic t(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcom/coloros/settings/feature/weather/CityAddActivity$b;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ab:Lcom/coloros/settings/feature/weather/CityAddActivity$b;

    return-object p0
.end method

.method static synthetic u(Lcom/coloros/settings/feature/weather/CityAddActivity;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->e()V

    return-void
.end method

.method static synthetic v(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/view/View;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->W:Landroid/view/View;

    return-object p0
.end method

.method static synthetic w(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/ListView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic x(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/widget/TextView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->q:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic y(Lcom/coloros/settings/feature/weather/CityAddActivity;)Landroid/os/Handler;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->C:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic z(Lcom/coloros/settings/feature/weather/CityAddActivity;)Lcolor/support/v7/widget/SearchView;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 8361
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->A:Lcom/coloros/settings/feature/weather/module/city/b;

    .line 8362
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$xY_BqGgbdq0tZ0ACQ2NB_ODHxZ4;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$xY_BqGgbdq0tZ0ACQ2NB_ODHxZ4;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/b;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8382
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final a(Landroid/os/Message;)V
    .locals 5

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CityAddActivity"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1173
    :pswitch_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->finish()V

    goto/16 :goto_2

    .line 1167
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    .line 1168
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->I:Lcom/coloros/settings/feature/weather/module/a/a;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;->getCityId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/coloros/settings/feature/weather/module/a/a;->a(JZZ)V

    .line 1170
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    const/16 v0, 0xd

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Lcom/coloros/settings/feature/weather/a/e;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1164
    :pswitch_3
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 1161
    :pswitch_4
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->G:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    .line 1138
    :pswitch_5
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->e()V

    .line 1139
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->x:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :pswitch_6
    const/4 v0, 0x0

    .line 1151
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 1153
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "handleMessage msg.obj parse to city exception"

    .line 1155
    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 10557
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->finish()V

    return-void

    .line 10560
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/feature/weather/module/city/d;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 10562
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;I)V

    goto :goto_1

    .line 10564
    :cond_2
    invoke-static {p0, v3}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;I)V

    .line 10566
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/feature/weather/CityAddActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity$9;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10585
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 1145
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v4}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Ljava/lang/String;Z)V

    .line 1146
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/weather/a/e;->removeMessages(I)V

    .line 1147
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/weather/a/e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/weather/a/e;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 1142
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Ljava/lang/String;Z)V

    return-void

    .line 1133
    :pswitch_9
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->z:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1134
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->z:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {p1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->dismiss()V

    return-void

    .line 10192
    :pswitch_a
    new-instance p1, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->z:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    .line 10193
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->z:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12136d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 10194
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->z:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {p1, v4}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setCanceledOnTouchOutside(Z)V

    .line 10195
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->z:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {p1, v3}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setCancelable(Z)V

    .line 10196
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->z:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {p1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->show()V

    return-void

    .line 1117
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1118
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1119
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1122
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->h:I

    .line 1123
    iget v0, p1, Landroid/os/Message;->arg2:I

    iput v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->i:I

    .line 1124
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->e:Ljava/util/ArrayList;

    .line 1125
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->d:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->e:Ljava/util/ArrayList;

    iget v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->h:I

    iget v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->i:I

    .line 9617
    iput-object v0, p1, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->b:Ljava/util/ArrayList;

    .line 9618
    iput v2, p1, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->c:I

    .line 9619
    iput v3, p1, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->d:I

    .line 9620
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "localeSize "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", interSize "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->d:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    .line 9724
    iget-object p1, p1, Lcom/coloros/settings/feature/weather/CityAddActivity$a;->a:Landroid/database/DataSetObservable;

    invoke-virtual {p1}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void

    .line 1111
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 1112
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 9047
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/a/e;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 9048
    iget-object v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    invoke-virtual {v3, v1}, Lcom/coloros/settings/feature/weather/a/e;->removeMessages(I)V

    .line 9049
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/weather/a/e;->sendMessage(Landroid/os/Message;)Z

    .line 9050
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->j:Z

    if-eqz v0, :cond_5

    .line 9051
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Ljava/util/List;)V

    .line 9052
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9053
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->e()V

    .line 9054
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 9055
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 9057
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 1357
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/coloros/settings/feature/weather/BaseActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 211
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/weather/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0065

    .line 212
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->setContentView(I)V

    .line 213
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->P:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "state_dialog"

    .line 216
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Y:Z

    .line 2304
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->o:Landroid/view/LayoutInflater;

    .line 2305
    iput-object p0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    .line 2306
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 2307
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v1, v3}, Lcom/color/support/c/a;->a(FFI)F

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->F:F

    .line 2308
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    :cond_1
    move v1, v0

    goto :goto_0

    .line 3257
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0015

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    .line 2308
    :goto_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->w:Z

    const v1, 0x7f0a03a9

    .line 2309
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    const v1, 0x7f0a0309

    .line 2310
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const v1, 0x7f0a0468

    .line 2311
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->x:Landroid/widget/TextView;

    const v1, 0x7f0a02bd

    .line 2312
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    .line 2313
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->p:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->af:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0a00e6

    .line 2314
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->q:Landroid/widget/TextView;

    const v1, 0x7f0a03b9

    .line 2315
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->G:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0709

    .line 2316
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/v7/widget/Toolbar;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    const v1, 0x7f0a00af

    .line 2317
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->n:Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;

    .line 2318
    iget-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->P:Z

    if-nez v1, :cond_3

    .line 2319
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->n:Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;

    const v3, 0x7f0804e8

    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const v1, 0x7f0a020e

    .line 2321
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->W:Landroid/view/View;

    .line 4111
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 4112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zh"

    .line 4113
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "cn"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    .line 2323
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setNumColumns(I)V

    goto :goto_2

    .line 2325
    :cond_5
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setNumColumns(I)V

    .line 4332
    :goto_2
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/weather/CityAddActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 4334
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v1

    .line 4335
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 4336
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 4338
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 4339
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4341
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 4342
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 4344
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4347
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    const v3, 0x7f120881

    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 4348
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->m:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 4353
    new-instance v1, Lcom/coloros/settings/feature/weather/a/e;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/weather/a/e;-><init>(Lcom/coloros/settings/feature/weather/a/e$a;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    .line 4354
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "query_thread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4355
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 4356
    new-instance v3, Lcom/coloros/settings/feature/weather/a/e;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, p0, v1}, Lcom/coloros/settings/feature/weather/a/e;-><init>(Lcom/coloros/settings/feature/weather/a/e$a;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->C:Landroid/os/Handler;

    .line 4357
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->H:Z

    .line 4836
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v1, v2}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setHeadersIgnorePadding(Z)V

    .line 4837
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setAreHeadersSticky(Z)V

    .line 4838
    new-instance v1, Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity$a;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;B)V

    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->d:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    .line 4839
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    iget-object v3, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->d:Lcom/coloros/settings/feature/weather/CityAddActivity$a;

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4840
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    invoke-virtual {v1, v0, v0}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->smoothScrollToPositionFromTop(II)V

    .line 4841
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    new-instance v3, Lcom/coloros/settings/feature/weather/CityAddActivity$10;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$10;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4869
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->r:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    new-instance v3, Lcom/coloros/settings/feature/weather/CityAddActivity$11;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$11;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    invoke-virtual {v1, v3}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 4878
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4879
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    new-instance v3, Lcom/coloros/settings/feature/weather/CityAddActivity$12;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/weather/CityAddActivity$12;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4903
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    const v3, 0x7f06000b

    invoke-static {v1, v3}, Lcom/coloros/settings/feature/weather/a/d;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->k:I

    .line 224
    invoke-static {p0, v0, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    const v0, 0x7f0a0145

    .line 225
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v1, 0x7f0804bb

    .line 226
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 227
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 229
    new-instance v0, Lcom/coloros/settings/feature/weather/module/city/b;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/weather/module/city/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->A:Lcom/coloros/settings/feature/weather/module/city/b;

    .line 230
    invoke-static {}, Lcom/coloros/settings/feature/weather/module/a/a;->a()Lcom/coloros/settings/feature/weather/module/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->I:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 231
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->I:Lcom/coloros/settings/feature/weather/module/a/a;

    .line 5234
    iget-object v1, v0, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 5235
    iget-object v0, v0, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_6
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->d()V

    const v0, 0x7f0a05cf

    .line 5522
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSearchViewAnimate;

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    .line 5523
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ad:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->addOnStateChangeListener(Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;)V

    .line 5524
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getSearchView()Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    .line 5525
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->f()V

    .line 5526
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Z:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 5527
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->aa:Lcolor/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setOnQueryTextListener(Lcolor/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 5528
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 5529
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->X:Landroid/widget/AutoCompleteTextView;

    .line 5530
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->X:Landroid/widget/AutoCompleteTextView;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 5531
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->X:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->ac:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5532
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->L:Landroid/view/animation/Interpolator;

    .line 5533
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v4, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->M:Landroid/view/animation/Interpolator;

    .line 236
    new-instance v0, Lcom/coloros/settings/a/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->u:Landroid/widget/ListView;

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/a/a;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->v:Lcom/coloros/settings/a/a;

    .line 238
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->n:Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;

    new-instance v1, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$esD97LZ4doJE9FFeskE6CsHNxeM;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$esD97LZ4doJE9FFeskE6CsHNxeM;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/view/CustomColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 474
    invoke-super {p0}, Lcom/coloros/settings/feature/weather/BaseActivity;->onDestroy()V

    .line 475
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->C:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 476
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 480
    :cond_0
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->C:Landroid/os/Handler;

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    if-eqz v0, :cond_2

    .line 486
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/weather/a/e;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 487
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->b:Lcom/coloros/settings/feature/weather/a/e;

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->I:Lcom/coloros/settings/feature/weather/module/a/a;

    if-eqz v0, :cond_3

    .line 7240
    iget-object v2, v0, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 7241
    iget-object v0, v0, Lcom/coloros/settings/feature/weather/module/a/a;->g:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 493
    :cond_3
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->B:Lcom/coloros/settings/feature/weather/module/city/b$c;

    .line 494
    iput-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->A:Lcom/coloros/settings/feature/weather/module/city/b;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p2, 0x1

    .line 1064
    iput-boolean p2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->O:Z

    .line 1065
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/weather/CityAddActivity;->a(Lcom/coloros/settings/feature/weather/module/city/CityInfoLocal;I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1022
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->j:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1024
    iput-boolean p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->j:Z

    .line 1025
    invoke-direct {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->f()V

    .line 1026
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->x:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    .line 1030
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coloros/settings/feature/weather/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1035
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 1043
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/weather/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 6

    const-string v0, "WeatherServiceBridge"

    .line 500
    invoke-super {p0}, Lcom/coloros/settings/feature/weather/BaseActivity;->onPause()V

    .line 501
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->I:Lcom/coloros/settings/feature/weather/module/a/a;

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 8137
    iput v2, v1, Lcom/coloros/settings/feature/weather/module/a/a;->h:I

    .line 8138
    iget-boolean v3, v1, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    if-eqz v3, :cond_1

    .line 8139
    iget-object v3, v1, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    if-eqz v3, :cond_0

    .line 8141
    :try_start_0
    iget-object v3, v1, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    invoke-interface {v3}, Lcom/coloros/d/a/a/b;->a()V

    .line 8142
    iget-object v3, v1, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    invoke-interface {v3}, Lcom/coloros/d/a/a/b;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v1, Lcom/coloros/settings/feature/weather/module/a/a;->i:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 8146
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error occur, e = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    .line 8144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DeadObjectException while unBindUpdateService, e = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/DeadObjectException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8150
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/coloros/settings/feature/weather/module/a/a;->e:Landroid/content/Context;

    iget-object v3, v1, Lcom/coloros/settings/feature/weather/module/a/a;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 8151
    iput-boolean v2, v1, Lcom/coloros/settings/feature/weather/module/a/a;->c:Z

    :cond_1
    const/4 v0, 0x0

    .line 8153
    iput-object v0, v1, Lcom/coloros/settings/feature/weather/module/a/a;->b:Lcom/coloros/d/a/a/b;

    .line 8154
    iput-object v0, v1, Lcom/coloros/settings/feature/weather/module/a/a;->a:Lcom/coloros/d/a/a/a;

    .line 504
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->v:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->c()V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 287
    invoke-super {p0}, Lcom/coloros/settings/feature/weather/BaseActivity;->onResume()V

    .line 291
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Y:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->I:Lcom/coloros/settings/feature/weather/module/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/weather/module/a/a;->b()V

    .line 293
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->v:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->b()V

    return-void

    .line 296
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$mabuwd6xtBetbx9KcC-KGQk-1m0;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/-$$Lambda$CityAddActivity$mabuwd6xtBetbx9KcC-KGQk-1m0;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;)V

    .line 6426
    iget-object v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->y:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->ae(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_3

    .line 6428
    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity$d;->doAfterPermitted()V

    goto :goto_0

    .line 6433
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/feature/weather/a/d;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->K:Z

    .line 6434
    iget-boolean v1, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->K:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    .line 6436
    invoke-interface {v0}, Lcom/coloros/settings/feature/weather/CityAddActivity$d;->doAfterPermitted()V

    goto :goto_0

    .line 6441
    :cond_2
    new-instance v1, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1212c3

    .line 6442
    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setTitle(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f1212c5

    .line 6443
    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setMessage(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f1212c7

    .line 6444
    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setPositiveString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f1212c4

    .line 6445
    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setNegativeString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 6446
    invoke-virtual {v1, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setShowStatementText(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/coloros/settings/feature/weather/CityAddActivity$1;

    invoke-direct {v4, p0, v0}, Lcom/coloros/settings/feature/weather/CityAddActivity$1;-><init>(Lcom/coloros/settings/feature/weather/CityAddActivity;Lcom/coloros/settings/feature/weather/CityAddActivity$d;)V

    .line 6447
    invoke-virtual {v1, v4}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setOnSelectedListener(Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    .line 6460
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setChecked(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    .line 6461
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->create()Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->J:Lcom/color/support/widget/ColorSecurityAlertDialog;

    .line 6462
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/CityAddActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Y:Z

    if-nez v0, :cond_3

    .line 6463
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->J:Lcom/color/support/widget/ColorSecurityAlertDialog;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->show()V

    .line 6467
    iput-boolean v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Y:Z

    .line 297
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->v:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->b()V

    .line 298
    iput-boolean v2, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Y:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 273
    invoke-static {p0}, Lcom/coloros/settings/feature/weather/a/d;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->X:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/weather/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 277
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->s:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getSearchState()I

    move-result v0

    const-string v1, "state_search_view_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 278
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->t:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v0

    const-string v1, "state_is_show_key_board"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 279
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->J:Lcom/color/support/widget/ColorSecurityAlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Y:Z

    .line 282
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/feature/weather/CityAddActivity;->Y:Z

    const-string v1, "state_dialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
