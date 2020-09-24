.class public final Lcom/coloros/settings/feature/homepage/a;
.super Ljava/lang/Object;
.source "ColorHomepageImpl.java"


# instance fields
.field a:Landroid/widget/TextView;

.field private b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private c:Lcolor/support/design/widget/ColorAppBarLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/LinearLayout$LayoutParams;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/view/ViewGroup$LayoutParams;

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/widget/ImageView;

.field private k:Lcolor/support/v7/widget/Toolbar;

.field private l:Landroid/view/ViewGroup$LayoutParams;

.field private m:I

.field private n:I

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/android/settings/search/c;Landroid/app/Activity;I)V
    .locals 3

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-interface {p0, v0, p2}, Lcom/android/settings/search/c;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    .line 161
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/high16 v1, 0x10000

    invoke-virtual {p2, p0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 162
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getSlicesFeatureProvider()Lcom/android/settings/slices/j;

    move-result-object p2

    .line 167
    invoke-interface {p2, v0}, Lcom/android/settings/slices/j;->b(Landroid/content/Context;)V

    .line 168
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p2

    const/16 v1, 0xe2

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    .line 169
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/16 p2, 0x1f5

    .line 170
    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic a(Lcom/android/settings/search/c;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    .line 153
    invoke-static {p1, p2, p3}, Lcom/coloros/settings/feature/homepage/a;->a(Lcom/android/settings/search/c;Landroid/app/Activity;I)V

    return-void
.end method

.method static a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "oppo.settings.main.search"

    .line 418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 420
    invoke-static {p0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object p1

    .line 421
    invoke-static {p0}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ax(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x5de

    .line 422
    invoke-static {p1, p0, v0}, Lcom/coloros/settings/feature/homepage/a;->a(Lcom/android/settings/search/c;Landroid/app/Activity;I)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 394
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0386

    if-ne p1, v0, :cond_0

    .line 2403
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "heytap.intent.action.ACTIVATE_SPEECH_ASSIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2404
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.heytap.speechassist"

    const-string v2, "com.heytap.speechassist.core.SpeechService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "caller_package"

    .line 2406
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "start_type"

    const/16 v1, 0x800

    .line 2407
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2408
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2410
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "launchBreeno: failed to launch Breeno. : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomepageFeature"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error occur, e = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic c(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V
    .locals 8

    .line 296
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->c:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 297
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    instance-of v1, v0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    if-eqz v1, :cond_0

    const v1, 0x7f0a05f2

    .line 299
    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 300
    check-cast v0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/a;->c:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;)V

    .line 3314
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    .line 3316
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/homepage/a;->o:Z

    .line 3318
    iget-boolean v1, p0, Lcom/coloros/settings/feature/homepage/a;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3319
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    .line 3320
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 3319
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 3322
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->l:Landroid/view/ViewGroup$LayoutParams;

    const v1, 0x7f0703df

    .line 3323
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 3324
    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/a;->l:Landroid/view/ViewGroup$LayoutParams;

    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    neg-int v1, v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 3325
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3328
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 3331
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 3333
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/coloros/settings/feature/homepage/a;->h:I

    .line 3334
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->g:Landroid/view/ViewGroup$LayoutParams;

    .line 3335
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->g:Landroid/view/ViewGroup$LayoutParams;

    iget v5, p0, Lcom/coloros/settings/feature/homepage/a;->h:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3336
    iget-object v5, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3337
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    iget v5, p0, Lcom/coloros/settings/feature/homepage/a;->n:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/coloros/settings/feature/homepage/a;->n:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    iget v7, p0, Lcom/coloros/settings/feature/homepage/a;->n:I

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v2, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3339
    invoke-static {p1}, Lcom/color/support/c/c;->a(Landroid/content/Context;)Z

    move-result v1

    const/16 v5, 0xff

    if-eqz v1, :cond_2

    .line 3340
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->i:Landroid/graphics/drawable/Drawable;

    .line 3341
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->i:Landroid/graphics/drawable/Drawable;

    instance-of v6, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_2

    .line 3342
    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const/16 v6, 0x33

    invoke-static {v6, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 3347
    :cond_2
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 3348
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/coloros/settings/feature/homepage/a;->h:I

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v1, 0x7f070214

    .line 3349
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 3350
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 3351
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v6, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v2, v1, v2, v6}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 3352
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3353
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    iget-boolean v1, p0, Lcom/coloros/settings/feature/homepage/a;->o:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 3354
    invoke-static {p1}, Lcom/coloros/settings/custom/b;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3355
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3357
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/a;->k:Lcolor/support/v7/widget/Toolbar;

    iget v0, p0, Lcom/coloros/settings/feature/homepage/a;->m:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/coloros/settings/feature/homepage/a;->m:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lcom/coloros/settings/feature/homepage/a;->m:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v5, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    return-void
.end method

.method private synthetic d(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->c:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 276
    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 277
    instance-of v1, v0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    if-eqz v1, :cond_0

    const v1, 0x7f0a05f2

    .line 278
    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 279
    check-cast v0, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->c:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/behavior/HomepageHeadScaleWithSearchBhv;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcolor/support/design/widget/ColorAppBarLayout;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$iLTYfoFHutgnFJxe7MAQXbNvKhY(Lcom/coloros/settings/feature/homepage/a;Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/a;->c(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V

    return-void
.end method

.method public static synthetic lambda$jz91ZWBI9hVn-AfSnXJot1MEMRI(Lcom/coloros/settings/feature/homepage/a;Lcom/android/settings/search/c;Landroid/app/Activity;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/homepage/a;->a(Lcom/android/settings/search/c;Landroid/app/Activity;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$mlOV6E4R3GcO5HoK7EeKVIwfE_4(Lcom/coloros/settings/feature/homepage/a;Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/a;->d(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;Landroid/os/Bundle;)V
    .locals 3

    const v0, 0x7f0a05f2

    .line 185
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 187
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/homepage/a;->o:Z

    const v1, 0x7f0a0098

    .line 189
    invoke-virtual {p1, v1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->c:Lcolor/support/design/widget/ColorAppBarLayout;

    .line 191
    iget-boolean v1, p0, Lcom/coloros/settings/feature/homepage/a;->o:Z

    if-nez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->c:Lcolor/support/design/widget/ColorAppBarLayout;

    const v2, 0x7f0804cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0a05ba

    .line 195
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    const v1, 0x7f0a0089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    .line 197
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    const v1, 0x7f0a008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->j:Landroid/widget/ImageView;

    const v0, 0x7f0a070b

    .line 199
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->k:Lcolor/support/v7/widget/Toolbar;

    const v0, 0x7f0a070c

    .line 200
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    .line 202
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/homepage/a;->m:I

    .line 203
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/homepage/a;->n:I

    .line 204
    invoke-static {p1}, Lcom/coloros/settings/custom/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    :cond_1
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 209
    invoke-static {p1, v0}, Lcom/coloros/settings/feature/homepage/a;->a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;Landroid/content/Intent;)Z

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    const-string v1, "search_bar_state"

    .line 2291
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_2

    .line 2294
    iget-object p2, p0, Lcom/coloros/settings/feature/homepage/a;->c:Lcolor/support/design/widget/ColorAppBarLayout;

    new-instance v0, Lcom/coloros/settings/feature/homepage/-$$Lambda$a$iLTYfoFHutgnFJxe7MAQXbNvKhY;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/homepage/-$$Lambda$a$iLTYfoFHutgnFJxe7MAQXbNvKhY;-><init>(Lcom/coloros/settings/feature/homepage/a;Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V

    invoke-virtual {p2, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    .line 2307
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)Z
    .locals 4

    const v0, 0x7f0a070b

    .line 124
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 126
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 1153
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/HomepageAppCompatActivity;->b()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDelegate;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    const v0, 0x7f0a008a

    .line 130
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/b;->getSearchFeatureProvider()Lcom/android/settings/search/c;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 2144
    invoke-static {p1}, Lcom/android/settings/m;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2145
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->ax(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x5de

    .line 2152
    new-instance v3, Lcom/coloros/settings/feature/homepage/-$$Lambda$a$jz91ZWBI9hVn-AfSnXJot1MEMRI;

    invoke-direct {v3, p0, v1, p1, v2}, Lcom/coloros/settings/feature/homepage/-$$Lambda$a$jz91ZWBI9hVn-AfSnXJot1MEMRI;-><init>(Lcom/coloros/settings/feature/homepage/a;Lcom/android/settings/search/c;Landroid/app/Activity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 2146
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    .line 2148
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method protected final b(Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V
    .locals 7

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0a070c

    .line 231
    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/settings/feature/homepage/a;->o:Z

    .line 235
    iget-boolean v1, p0, Lcom/coloros/settings/feature/homepage/a;->o:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    .line 237
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    .line 236
    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->l:Landroid/view/ViewGroup$LayoutParams;

    .line 240
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->l:Landroid/view/ViewGroup$LayoutParams;

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 241
    iget-object v3, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->a:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 245
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->k:Lcolor/support/v7/widget/Toolbar;

    const v4, 0x7f0602c4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 247
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    .line 248
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    const v4, 0x7f07021c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 249
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x7f070214

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 250
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    const v5, 0x7f07028d

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 251
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 250
    invoke-virtual {v1, v6, v2, v5, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 252
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/a;->e:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    iget-boolean v2, p0, Lcom/coloros/settings/feature/homepage/a;->o:Z

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 254
    invoke-static {p1}, Lcom/coloros/settings/custom/b;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 255
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->d:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :cond_3
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->g:Landroid/view/ViewGroup$LayoutParams;

    .line 259
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->g:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/a;->g:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    iget v1, p0, Lcom/coloros/settings/feature/homepage/a;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    invoke-static {p1}, Lcom/color/support/c/c;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->i:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->i:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_4

    .line 265
    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/16 v2, 0x33

    .line 266
    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    .line 265
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 272
    :cond_4
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 274
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/a;->c:Lcolor/support/design/widget/ColorAppBarLayout;

    new-instance v1, Lcom/coloros/settings/feature/homepage/-$$Lambda$a$mlOV6E4R3GcO5HoK7EeKVIwfE_4;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/homepage/-$$Lambda$a$mlOV6E4R3GcO5HoK7EeKVIwfE_4;-><init>(Lcom/coloros/settings/feature/homepage/a;Lcom/coloros/settings/feature/homepage/ColorSettingsHomepageActivity;)V

    invoke-virtual {v0, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
