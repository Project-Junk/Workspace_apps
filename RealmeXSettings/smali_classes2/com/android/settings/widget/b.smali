.class public Lcom/android/settings/widget/b;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Z

.field public h:Z

.field private final i:Landroid/content/Context;

.field private final j:Landroid/app/Activity;

.field private final k:Landroidx/fragment/app/Fragment;

.field private final l:I

.field private final m:Landroid/view/View;

.field private n:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private o:Landroidx/recyclerview/widget/RecyclerView;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/content/Intent;

.field private r:I

.field private s:I

.field private t:Landroid/view/View$OnClickListener;

.field private u:Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x2710

    .line 92
    iput v0, p0, Lcom/android/settings/widget/b;->f:I

    .line 117
    iput-object p1, p0, Lcom/android/settings/widget/b;->j:Landroid/app/Activity;

    .line 118
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/b;->i:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/settings/widget/b;->k:Landroidx/fragment/app/Fragment;

    .line 120
    iget-object p1, p0, Lcom/android/settings/widget/b;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    .line 121
    invoke-static {p2}, Lcom/android/settingslib/core/instrumentation/d;->a(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/b;->l:I

    if-eqz p3, :cond_0

    .line 123
    iput-object p3, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    return-void

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 126
    invoke-direct {p0}, Lcom/android/settings/widget/b;->b()Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    move-result-object p2

    const p3, 0x7f0d02d1

    invoke-virtual {p2, p3}, Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;->getDefaultLayoutId(I)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;
    .locals 1

    .line 113
    new-instance v0, Lcom/android/settings/widget/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/widget/b;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/widget/b;)Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/widget/b;->b()Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/CharSequence;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 386
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .line 285
    iget-boolean v0, p0, Lcom/android/settings/widget/b;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/settings/widget/b;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "os"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/settings/widget/b;->f:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 296
    :cond_1
    new-instance v0, Lcom/android/settings/widget/b$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/b$1;-><init>(Lcom/android/settings/widget/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "AppDetailFeature"

    const-string v0, "Missing ingredients to build app info link, skip"

    .line 293
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Landroid/widget/ImageButton;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    return-void

    .line 350
    :cond_1
    iget-object p2, p0, Lcom/android/settings/widget/b;->t:Landroid/view/View$OnClickListener;

    if-nez p2, :cond_2

    .line 351
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    :cond_2
    const-string p2, "com.android.internal.R.drawable.ic_mode_edit"

    .line 353
    invoke-static {p2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 354
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 355
    iget-object p2, p0, Lcom/android/settings/widget/b;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 360
    :cond_3
    iget-object p2, p0, Lcom/android/settings/widget/b;->q:Landroid/content/Intent;

    if-nez p2, :cond_4

    .line 361
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 363
    :cond_4
    new-instance p2, Lcom/android/settings/widget/-$$Lambda$b$1DKdU5Rsq7Os5vLii-9HAknnj_k;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/-$$Lambda$b$1DKdU5Rsq7Os5vLii-9HAknnj_k;-><init>(Lcom/android/settings/widget/b;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void

    .line 376
    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method private b()Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/android/settings/widget/b;->u:Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    if-nez v0, :cond_0

    .line 396
    const-class v0, Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    iput-object v0, p0, Lcom/android/settings/widget/b;->u:Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/b;->u:Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/widget/b;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/widget/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 6

    .line 364
    iget-object p1, p0, Lcom/android/settings/widget/b;->i:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/widget/b;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x3f8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 365
    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/d;->a(IIILjava/lang/String;I)V

    .line 369
    iget-object p1, p0, Lcom/android/settings/widget/b;->k:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Lcom/android/settings/widget/b;->q:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/widget/b;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic d(Lcom/android/settings/widget/b;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/settings/widget/b;->k:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic e(Lcom/android/settings/widget/b;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/settings/widget/b;->l:I

    return p0
.end method

.method public static synthetic lambda$1DKdU5Rsq7Os5vLii-9HAknnj_k(Lcom/android/settings/widget/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/b;->b(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Z)Landroid/view/View;
    .locals 2

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;)Lcom/android/settings/widget/b;

    .line 251
    iget-object p1, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    const v0, 0x7f0a0262

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/settings/widget/b;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/widget/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    const p1, 0x7f0a0266

    .line 256
    iget-object v0, p0, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/b;->a(ILjava/lang/CharSequence;)V

    const p1, 0x7f0a0265

    .line 257
    iget-object v0, p0, Lcom/android/settings/widget/b;->c:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/b;->a(ILjava/lang/CharSequence;)V

    const p1, 0x7f0a0264

    .line 258
    iget-object v0, p0, Lcom/android/settings/widget/b;->d:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/b;->a(ILjava/lang/CharSequence;)V

    .line 259
    iget-boolean p1, p0, Lcom/android/settings/widget/b;->h:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0a0334

    .line 260
    iget-object v0, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    .line 261
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120b31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/b;->a(ILjava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/widget/b;->a()Lcom/android/settings/widget/b;

    .line 268
    :cond_2
    iget-object p1, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    return-object p1
.end method

.method public final a()Lcom/android/settings/widget/b;
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    const v1, 0x7f0a0261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 276
    iget-object v1, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    const v2, 0x1020019

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 277
    iget-object v2, p0, Lcom/android/settings/widget/b;->m:Landroid/view/View;

    const v3, 0x102001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 278
    invoke-direct {p0, v0}, Lcom/android/settings/widget/b;->a(Landroid/view/View;)V

    .line 279
    iget v0, p0, Lcom/android/settings/widget/b;->r:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/widget/b;->a(Landroid/widget/ImageButton;I)V

    .line 280
    iget v0, p0, Lcom/android/settings/widget/b;->s:I

    invoke-direct {p0, v2, v0}, Lcom/android/settings/widget/b;->a(Landroid/widget/ImageButton;I)V

    return-object p0
.end method

.method public final a(I)Lcom/android/settings/widget/b;
    .locals 0

    .line 203
    iput p1, p0, Lcom/android/settings/widget/b;->r:I

    const/4 p1, 0x0

    .line 204
    iput p1, p0, Lcom/android/settings/widget/b;->s:I

    return-object p0
.end method

.method public final a(Landroid/app/Activity;)Lcom/android/settings/widget/b;
    .locals 3

    const-string v0, "AppDetailFeature"

    if-nez p1, :cond_0

    const-string p1, "No activity, cannot style actionbar."

    .line 317
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "No actionbar, cannot style actionbar."

    .line 322
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 325
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x1010434

    .line 327
    invoke-static {p1, v2}, Lcom/android/settings/m;->i(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 325
    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 328
    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 329
    iget-object p1, p0, Lcom/android/settings/widget/b;->o:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/b;->n:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz v0, :cond_2

    .line 330
    iget-object v1, p0, Lcom/android/settings/widget/b;->j:Landroid/app/Activity;

    invoke-static {v1, v0, p1}, Lcom/android/settingslib/widget/ActionBarShadowController;->a(Landroid/app/Activity;Landroidx/lifecycle/Lifecycle;Landroid/view/View;)Lcom/android/settingslib/widget/ActionBarShadowController;

    :cond_2
    return-object p0
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;
    .locals 1

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/widget/b;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/b;->p:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-object p0
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/settings/widget/b;->o:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    iput-object p2, p0, Lcom/android/settings/widget/b;->n:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-object p0
.end method

.method public final a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/widget/b;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settings/widget/b;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/b;->p:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;
    .locals 2

    .line 237
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    .line 1341
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Z)Landroid/view/View;

    move-result-object p1

    .line 237
    invoke-direct {v0, p2, p1}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/16 p1, -0x3e8

    .line 239
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->setOrder(I)V

    const/4 p1, 0x0

    .line 240
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->setSelectable(Z)V

    const-string p1, "pref_app_header"

    .line 241
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->setKey(Ljava/lang/String;)V

    .line 2165
    iput-boolean v1, v0, Lcom/android/settingslib/widget/LayoutPreference;->d:Z

    return-object v0
.end method

.method public final b(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/widget/b;
    .locals 0

    .line 168
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    return-object p0
.end method
