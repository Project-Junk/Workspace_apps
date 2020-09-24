.class public Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;
.super Landroid/app/Activity;
.source "PowerWakeUpGuideActivity.java"


# instance fields
.field a:Lcom/android/internal/app/AssistUtils;

.field final b:Landroid/animation/Animator$AnimatorListener;

.field private c:Landroid/animation/AnimatorSet;

.field private d:Z

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/Button;

.field private i:I

.field private j:Landroid/view/ViewTreeObserver;

.field private k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->c:Landroid/animation/AnimatorSet;

    .line 69
    new-instance v0, Lcom/coloros/settings/feature/convenient/-$$Lambda$PowerWakeUpGuideActivity$0QTPCyrB0n13CNlxBMq3HCsob_4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/convenient/-$$Lambda$PowerWakeUpGuideActivity$0QTPCyrB0n13CNlxBMq3HCsob_4;-><init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 277
    new-instance v0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$6;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$6;-><init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->b:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->f:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private synthetic a()V
    .locals 3

    .line 2177
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->aj(Landroid/content/Context;)I

    move-result v0

    .line 2178
    iget v1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->i:I

    if-eq v1, v0, :cond_0

    .line 2181
    iput v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->i:I

    .line 2182
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->f:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->i:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;Landroid/view/View;)V
    .locals 4

    .line 2260
    iget-boolean v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2263
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2269
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->b:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2271
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2272
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->c:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2273
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->c:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2274
    iget-object p0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->d:Z

    return p1
.end method

.method public static synthetic lambda$0QTPCyrB0n13CNlxBMq3HCsob_4(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 79
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x3e99999a    # 0.3f

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const p1, 0x7f0d0207

    .line 85
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->setContentView(I)V

    const p1, 0x7f0a02e1

    .line 1095
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->f:Landroid/widget/RelativeLayout;

    const p1, 0x7f0a0587

    .line 1096
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->e:Landroid/widget/RelativeLayout;

    .line 1097
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->e:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$1;-><init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0a04f6

    .line 1123
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->g:Landroid/widget/Button;

    const v0, 0x7f0a04f5

    .line 1124
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->h:Landroid/widget/Button;

    .line 1125
    iget-object v1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->h:Landroid/widget/Button;

    new-instance v2, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$2;-><init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1132
    iget-object v1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->g:Landroid/widget/Button;

    new-instance v2, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$3;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$3;-><init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1140
    iget-object v1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->c:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$4;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity$4;-><init>(Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1161
    new-instance v1, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->a:Lcom/android/internal/app/AssistUtils;

    const v1, 0x7f0a04fa

    .line 1186
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1187
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    const v4, 0x7f07001b

    invoke-static {v2, v1, v4, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    const v1, 0x7f0a04f7

    .line 1189
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a04f8

    .line 1190
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a04f9

    .line 1191
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1193
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070013

    invoke-static {v5, v1, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 1194
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 1195
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    const v1, 0x7f0a04ef

    .line 1197
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a04f0

    .line 1198
    invoke-virtual {p0, v2}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a04f1

    .line 1199
    invoke-virtual {p0, v4}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1201
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070017

    invoke-static {v5, v1, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 1202
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 1203
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v4, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 1205
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 1206
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1208
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 1209
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, v0, v6, v3}, Lcom/coloros/settings/utils/al;->a(Landroid/content/res/Resources;Landroid/widget/TextView;II)V

    .line 1164
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->j:Landroid/view/ViewTreeObserver;

    .line 1165
    iget-object p1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->j:Landroid/view/ViewTreeObserver;

    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 87
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-nez p1, :cond_0

    const-string p1, "PowerWakeUpGuideActivity"

    const-string v0, "It\'s not exp version !"

    .line 88
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->j:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->j:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/coloros/settings/feature/convenient/PowerWakeUpGuideActivity;->k:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
