.class public Lcom/android/settings/panel/PanelFragment;
.super Landroidx/fragment/app/Fragment;
.source "PanelFragment.java"


# instance fields
.field a:Lcom/android/settings/panel/g;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroidx/recyclerview/widget/RecyclerView;

.field private g:Lcom/android/settings/panel/d;

.field private h:Lcom/android/settingslib/core/instrumentation/d;

.field private i:Ljava/lang/String;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/slice/Slice;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private m:Lcom/android/settings/panel/PanelSlicesAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->j:Ljava/util/List;

    .line 92
    sget-object v0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$gZ2YagGRhjS1p4TFoNejjQowxGA;->INSTANCE:Lcom/android/settings/panel/-$$Lambda$PanelFragment$gZ2YagGRhjS1p4TFoNejjQowxGA;

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 96
    new-instance v0, Lcom/android/settings/panel/PanelFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/panel/PanelFragment$1;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method private static a(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;
    .locals 5
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f0a04ad

    .line 311
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 312
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-long v1, p5

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 314
    new-instance p5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p5, 0x2

    .line 315
    new-array v1, p5, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, p5, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 p1, 0x1

    aput p2, v3, p1

    .line 316
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    aput-object p2, v1, v4

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p5, p5, [F

    aput p3, p5, v4

    aput p4, p5, p1

    .line 317
    invoke-static {p0, p2, p5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    aput-object p0, v1, p1

    .line 315
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private synthetic a(Landroid/net/Uri;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->a:Lcom/android/settings/panel/g;

    invoke-virtual {v0, p1}, Lcom/android/settings/panel/g;->a(Landroid/net/Uri;)V

    .line 246
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->d()V

    return-void
.end method

.method private synthetic a(Landroid/net/Uri;Landroidx/lifecycle/LiveData;Landroidx/slice/Slice;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->a:Lcom/android/settings/panel/g;

    .line 3066
    iget-object v0, v0, Lcom/android/settings/panel/g;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v0

    if-eqz p3, :cond_3

    .line 237
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->isErrorSlice()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 241
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->a:Lcom/android/settings/panel/g;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/g;->a(Landroid/net/Uri;)V

    goto :goto_1

    .line 243
    :cond_2
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 244
    new-instance p3, Lcom/android/settings/panel/-$$Lambda$PanelFragment$3sBjst5crTp6CX42uxUR5hxHUkY;

    invoke-direct {p3, p0, p1}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$3sBjst5crTp6CX42uxUR5hxHUkY;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V

    const-wide/16 v0, 0xfa

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 238
    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/android/settings/panel/PanelFragment;->j:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object p2, p0, Lcom/android/settings/panel/PanelFragment;->a:Lcom/android/settings/panel/g;

    invoke-virtual {p2, p1}, Lcom/android/settings/panel/g;->a(Landroid/net/Uri;)V

    .line 250
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->d()V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 0

    const-string p1, "done"

    .line 350
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->i:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/panel/PanelFragment;)V
    .locals 7

    .line 3289
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    const v1, 0x7f0a04ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3290
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    .line 3291
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xfa

    .line 3290
    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->a(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 3294
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    .line 3295
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3296
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 3297
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 3299
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Lcom/android/settings/panel/PanelFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/panel/PanelFragment;->f:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private b()V
    .locals 11

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    if-nez v1, :cond_0

    .line 148
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    const v2, 0x7f0a04ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    const v2, 0x7f0a05d8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->d:Landroid/widget/Button;

    .line 153
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    const v2, 0x7f0a021e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->e:Landroid/widget/Button;

    .line 154
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    const v2, 0x7f0a04af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->c:Landroid/widget/TextView;

    .line 158
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "PANEL_TYPE_ARGUMENT"

    .line 162
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PANEL_CALLING_PACKAGE_NAME"

    .line 164
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v4, "PANEL_MEDIA_PACKAGE_NAME"

    .line 166
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Lcom/android/settings/overlay/b;->getPanelFeatureProvider()Lcom/android/settings/panel/e;

    move-result-object v4

    .line 171
    invoke-interface {v4, v0, v3, v1}, Lcom/android/settings/panel/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/panel/d;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    .line 173
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    if-nez v1, :cond_1

    .line 174
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 177
    :cond_1
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->h:Lcom/android/settingslib/core/instrumentation/d;

    .line 179
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->k:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 185
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->c()V

    .line 187
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    invoke-interface {v1}, Lcom/android/settings/panel/d;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->d:Landroid/widget/Button;

    .line 1339
    new-instance v1, Lcom/android/settings/panel/-$$Lambda$PanelFragment$7xLElNHUvuGE0RmeP12E5GkQh4w;

    invoke-direct {v1, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$7xLElNHUvuGE0RmeP12E5GkQh4w;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->e:Landroid/widget/Button;

    .line 1349
    new-instance v1, Lcom/android/settings/panel/-$$Lambda$PanelFragment$u1WvEq4J9KNI0S5UArdNecDyU7s;

    invoke-direct {v1, p0}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$u1WvEq4J9KNI0S5UArdNecDyU7s;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    .line 189
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    invoke-interface {v0}, Lcom/android/settings/panel/d;->c()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->d:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    :cond_2
    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->h:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    .line 200
    invoke-interface {v0}, Lcom/android/settings/panel/d;->getMetricsCategory()I

    move-result v8

    const/4 v10, 0x0

    .line 197
    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 2

    const-string p1, "see_more"

    .line 340
    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->i:Ljava/lang/String;

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 342
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    invoke-interface {v0}, Lcom/android/settings/panel/d;->c()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 343
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method private c()V
    .locals 5

    .line 206
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    invoke-interface {v0}, Lcom/android/settings/panel/d;->b()Ljava/util/List;

    move-result-object v0

    .line 208
    new-instance v1, Lcom/android/settings/panel/g;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/android/settings/panel/g;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/panel/PanelFragment;->a:Lcom/android/settings/panel/g;

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/slice/widget/SliceLiveData;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/lifecycle/LiveData;

    move-result-object v2

    .line 214
    iget-object v3, p0, Lcom/android/settings/panel/PanelFragment;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v3

    new-instance v4, Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/settings/panel/-$$Lambda$PanelFragment$z89RtpX81HMA1iw7Nvof3FjFSzU;-><init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;Landroidx/lifecycle/LiveData;)V

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/android/settings/panel/PanelFragment;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->b()V

    return-void
.end method

.method private d()V
    .locals 5

    .line 263
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->a:Lcom/android/settings/panel/g;

    .line 2077
    iget-object v1, v0, Lcom/android/settings/panel/g;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/settings/panel/g;->c:Z

    if-nez v1, :cond_0

    .line 2078
    iput-boolean v3, v0, Lcom/android/settings/panel/g;->c:Z

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Lcom/android/settings/panel/PanelSlicesAdapter;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->j:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    .line 265
    invoke-interface {v4}, Lcom/android/settings/panel/d;->getMetricsCategory()I

    move-result v4

    invoke-direct {v0, p0, v1, v4}, Lcom/android/settings/panel/PanelSlicesAdapter;-><init>(Lcom/android/settings/panel/PanelFragment;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->m:Lcom/android/settings/panel/PanelSlicesAdapter;

    .line 266
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->m:Lcom/android/settings/panel/PanelSlicesAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 268
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 271
    new-instance v0, Lcom/google/android/setupdesign/DividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/settings/panel/PanelFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/setupdesign/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    .line 2215
    iput v3, v0, Lcom/google/android/setupdesign/DividerItemDecoration;->b:I

    :cond_1
    return-void
.end method

.method private static synthetic e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$3sBjst5crTp6CX42uxUR5hxHUkY(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$7xLElNHUvuGE0RmeP12E5GkQh4w(Lcom/android/settings/panel/PanelFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$gZ2YagGRhjS1p4TFoNejjQowxGA()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/panel/PanelFragment;->e()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$u1WvEq4J9KNI0S5UArdNecDyU7s(Lcom/android/settings/panel/PanelFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/panel/PanelFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$z89RtpX81HMA1iw7Nvof3FjFSzU(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;Landroidx/lifecycle/LiveData;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/panel/PanelFragment;->a(Landroid/net/Uri;Landroidx/lifecycle/LiveData;Landroidx/slice/Slice;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    .line 127
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    const v1, 0x7f0a04ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v3, v0

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v6, 0xc8

    .line 128
    invoke-static/range {v1 .. v6}, Lcom/android/settings/panel/PanelFragment;->a(Landroid/view/View;FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 133
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    .line 134
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 136
    new-instance v1, Lcom/android/settings/panel/PanelFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/panel/PanelFragment$2;-><init>(Lcom/android/settings/panel/PanelFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 142
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const p3, 0x7f0d0245

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    .line 114
    invoke-direct {p0}, Lcom/android/settings/panel/PanelFragment;->b()V

    .line 115
    iget-object p1, p0, Lcom/android/settings/panel/PanelFragment;->b:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 7

    .line 323
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 325
    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "others"

    .line 326
    iput-object v0, p0, Lcom/android/settings/panel/PanelFragment;->i:Ljava/lang/String;

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/android/settings/panel/PanelFragment;->h:Lcom/android/settingslib/core/instrumentation/d;

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/settings/panel/PanelFragment;->g:Lcom/android/settings/panel/d;

    .line 332
    invoke-interface {v0}, Lcom/android/settings/panel/d;->getMetricsCategory()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/panel/PanelFragment;->i:Ljava/lang/String;

    const/4 v6, 0x0

    .line 329
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    return-void
.end method
