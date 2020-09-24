.class public final Lcom/coloros/settings/feature/display/a;
.super Ljava/lang/Object;
.source "ColorSettingsBrightnessController.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/display/a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/color/support/widget/seekbar/ColorSeekBar;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/hardware/display/DisplayManager;

.field private g:Lcom/coloros/settings/feature/display/a$a;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/os/Handler;

.field private r:Landroid/os/HandlerThread;

.field private s:I

.field private final t:Ljava/lang/Runnable;

.field private final u:Ljava/lang/Runnable;

.field private final v:Ljava/lang/Runnable;

.field private final w:Ljava/lang/Runnable;

.field private final x:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->l:Z

    .line 146
    new-instance v0, Lcom/coloros/settings/feature/display/a$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/a$1;-><init>(Lcom/coloros/settings/feature/display/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/a;->t:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Lcom/coloros/settings/feature/display/a$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/a$2;-><init>(Lcom/coloros/settings/feature/display/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/a;->u:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Lcom/coloros/settings/feature/display/a$3;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/a$3;-><init>(Lcom/coloros/settings/feature/display/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/a;->v:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/coloros/settings/feature/display/a$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/a$4;-><init>(Lcom/coloros/settings/feature/display/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/a;->w:Ljava/lang/Runnable;

    .line 241
    new-instance v0, Lcom/coloros/settings/feature/display/a$5;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/display/a$5;-><init>(Lcom/coloros/settings/feature/display/a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/a;->x:Landroid/os/Handler;

    .line 266
    iput-object p1, p0, Lcom/coloros/settings/feature/display/a;->a:Landroid/content/Context;

    const v0, 0x7f0a05db

    .line 267
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/seekbar/ColorSeekBar;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/a;->d:Lcom/color/support/widget/seekbar/ColorSeekBar;

    const v0, 0x7f0a0393

    .line 268
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080991

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0575

    .line 270
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coloros/settings/feature/display/a;->b:Landroid/widget/ImageView;

    .line 271
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->b:Landroid/widget/ImageView;

    const v1, 0x7f08098f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0a0577

    .line 272
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/a;->c:Landroid/widget/TextView;

    .line 274
    new-instance p2, Lcom/coloros/settings/feature/display/a$a;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->x:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/coloros/settings/feature/display/a$a;-><init>(Lcom/coloros/settings/feature/display/a;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/display/a;->g:Lcom/coloros/settings/feature/display/a$a;

    const-string p2, "power"

    .line 276
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 277
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->f(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->p:Z

    .line 278
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->p:Z

    invoke-static {p2, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/os/PowerManager;Z)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/display/a;->h:I

    .line 279
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->p:Z

    invoke-static {p2, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/os/PowerManager;Z)I

    move-result p2

    iput p2, p0, Lcom/coloros/settings/feature/display/a;->i:I

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "com.android.internal.R.bool.config_automatic_brightness_available"

    .line 282
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 281
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/a;->k:Z

    .line 283
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/coloros/settings/feature/display/a;->f:Landroid/hardware/display/DisplayManager;

    .line 284
    iget-object p2, p0, Lcom/coloros/settings/feature/display/a;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "oppo.autobrightctl.animation.support"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/coloros/settings/feature/display/a;->o:Z

    .line 286
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mIsMultiBits = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->p:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAutomaticAvailable = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->k:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mbSupportAutoBrightAnimation = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->o:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ColorSettingsBrightnessController"

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p2, 0x7f060078

    .line 289
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/a;->e:Landroid/content/res/ColorStateList;

    .line 291
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "Thread-Brightness"

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/a;->r:Landroid/os/HandlerThread;

    .line 292
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a;->r:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 293
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/coloros/settings/feature/display/a;->r:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/display/a;->q:Landroid/os/Handler;

    return-void
.end method

.method private a(F)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->f:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryAutoBrightnessAdjustment(F)V

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->f:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    return-void
.end method

.method private synthetic a(II)V
    .locals 1

    .line 1395
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->o:Z

    if-eqz v0, :cond_0

    .line 1396
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/a;->b(I)V

    int-to-float p1, p1

    .line 1398
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/a;->b(F)V

    return-void

    .line 1400
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->l:Z

    if-nez v0, :cond_1

    .line 1401
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/a;->b(I)V

    return-void

    :cond_1
    int-to-float p1, p2

    const/high16 p2, 0x42480000    # 50.0f

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    .line 1404
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/a;->b(F)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/a;II)V
    .locals 2

    .line 2297
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->d:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setMax(I)V

    .line 2298
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->d:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-virtual {v0, p2}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setProgress(I)V

    .line 2299
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->d:Lcom/color/support/widget/seekbar/ColorSeekBar;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    .line 2300
    div-int/lit8 p1, p1, 0x5

    iput p1, p0, Lcom/coloros/settings/feature/display/a;->s:I

    .line 2301
    iget p1, p0, Lcom/coloros/settings/feature/display/a;->s:I

    if-le p2, p1, :cond_0

    .line 2302
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a;->b:Landroid/widget/ImageView;

    const p2, 0x7f080990

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2303
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->c:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 2305
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a;->b:Landroid/widget/ImageView;

    const p2, 0x7f08098f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2306
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private a(ZI)V
    .locals 3

    .line 359
    iget v0, p0, Lcom/coloros/settings/feature/display/a;->s:I

    if-le p2, v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->b:Landroid/widget/ImageView;

    const v1, 0x7f080990

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 361
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->b:Landroid/widget/ImageView;

    const v1, 0x7f08098f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 364
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->c:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    :goto_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->n:Z

    if-eqz v0, :cond_1

    const-string p1, "ColorSettingsBrightnessController"

    const-string p2, "onSeekbarProChange ignore as mExternalChange is true"

    .line 368
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_1
    iget v0, p0, Lcom/coloros/settings/feature/display/a;->h:I

    add-int/2addr v0, p2

    .line 373
    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/a;->o:Z

    if-eqz v1, :cond_2

    int-to-float v1, v0

    .line 374
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/display/a;->a(F)V

    .line 375
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/a;->a(I)V

    goto :goto_1

    .line 377
    :cond_2
    iget-boolean v1, p0, Lcom/coloros/settings/feature/display/a;->l:Z

    if-nez v1, :cond_3

    .line 378
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/a;->a(I)V

    goto :goto_1

    :cond_3
    int-to-float v1, p2

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    .line 381
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/display/a;->a(F)V

    :goto_1
    if-eqz p1, :cond_4

    return-void

    .line 390
    :cond_4
    new-instance p1, Lcom/coloros/settings/feature/display/-$$Lambda$a$8Xde3eUGEvCUNA-L7gHvZ-nD-Qs;

    invoke-direct {p1, p0, v0, p2}, Lcom/coloros/settings/feature/display/-$$Lambda$a$8Xde3eUGEvCUNA-L7gHvZ-nD-Qs;-><init>(Lcom/coloros/settings/feature/display/a;II)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 391
    iget-object p1, p0, Lcom/coloros/settings/feature/display/a;->a:Landroid/content/Context;

    const-string p2, "manual_brightness"

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/a;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/a;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/a;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/a;->l:Z

    return p1
.end method

.method private b(F)V
    .locals 3

    .line 423
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method private b(I)V
    .locals 9

    .line 410
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->p:Z

    const/4 v1, -0x2

    const-string v2, "screen_brightness"

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 411
    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/ContentResolver;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/coloros/settings/feature/display/a;->a:Landroid/content/Context;

    .line 413
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    aput-object v4, v0, v5

    aput-object v2, v0, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v7

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v8

    const-string p1, "android.provider.Settings$System"

    const-string v1, "putIntForBrightness"

    .line 411
    invoke-static {p1, v1, v3, v0}, Lcom/coloros/b/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/a;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/a;->o:Z

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/a;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/a;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->v:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->q:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/display/a;)Ljava/lang/Runnable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/display/a;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/display/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/a;->b(F)V

    return-void
.end method

.method static synthetic h(Lcom/coloros/settings/feature/display/a;)Lcom/coloros/settings/feature/display/a$a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->g:Lcom/coloros/settings/feature/display/a$a;

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/display/a;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->x:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/display/a;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/a;->k:Z

    return p0
.end method

.method static synthetic k(Lcom/coloros/settings/feature/display/a;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/a;->p:Z

    return p0
.end method

.method static synthetic l(Lcom/coloros/settings/feature/display/a;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/settings/feature/display/a;->i:I

    return p0
.end method

.method public static synthetic lambda$8Xde3eUGEvCUNA-L7gHvZ-nD-Qs(Lcom/coloros/settings/feature/display/a;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/a;->a(II)V

    return-void
.end method

.method static synthetic m(Lcom/coloros/settings/feature/display/a;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/coloros/settings/feature/display/a;->h:I

    return p0
.end method

.method static synthetic n(Lcom/coloros/settings/feature/display/a;)Lcom/color/support/widget/seekbar/ColorSeekBar;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/display/a;->d:Lcom/color/support/widget/seekbar/ColorSeekBar;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 311
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/a;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 316
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->m:Z

    return-void
.end method

.method public final b()V
    .locals 2

    .line 321
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/display/a;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/settings/feature/display/a;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->m:Z

    return-void
.end method

.method public final onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V
    .locals 0

    .line 339
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p3, "onProgressChanged, "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "ColorSettingsBrightnessController"

    invoke-static {p3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-boolean p1, p0, Lcom/coloros/settings/feature/display/a;->j:Z

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/display/a;->a(ZI)V

    return-void
.end method

.method public final onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 3

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->j:Z

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStartTrackingTouch, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorSettingsBrightnessController"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/a;->a(ZI)V

    return-void
.end method

.method public final onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 3

    const/4 v0, 0x0

    .line 352
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/a;->j:Z

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onStopTrackingTouch, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorSettingsBrightnessController"

    invoke-static {v2, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/color/support/widget/seekbar/ColorSeekBar;->getProgress()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/a;->a(ZI)V

    return-void
.end method
