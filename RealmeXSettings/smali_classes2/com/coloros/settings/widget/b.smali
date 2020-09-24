.class public final Lcom/coloros/settings/widget/b;
.super Lcom/android/sdk/a;
.source "SettingsSeekBarVolumizer.java"

# interfaces
.implements Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/widget/b$b;,
        Lcom/coloros/settings/widget/b$d;,
        Lcom/coloros/settings/widget/b$c;,
        Lcom/coloros/settings/widget/b$a;
    }
.end annotation


# instance fields
.field private A:I

.field private final w:I

.field private final x:Lcom/coloros/settings/widget/b$a;

.field private y:Lcom/coloros/settings/widget/SettingsSeekBar;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/coloros/settings/widget/b$a;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/sdk/a;-><init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/android/sdk/a$a;)V

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/coloros/settings/widget/b;->A:I

    .line 66
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    iget p2, p0, Lcom/coloros/settings/widget/b;->f:I

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/widget/b;->w:I

    .line 67
    iput-object p4, p0, Lcom/coloros/settings/widget/b;->x:Lcom/coloros/settings/widget/b$a;

    .line 68
    new-instance p1, Lcom/coloros/settings/widget/b$d;

    invoke-direct {p1, p0}, Lcom/coloros/settings/widget/b$d;-><init>(Lcom/coloros/settings/widget/b;)V

    iput-object p1, p0, Lcom/coloros/settings/widget/b;->b:Lcom/android/sdk/a$b;

    .line 69
    new-instance p1, Lcom/coloros/settings/widget/b$b;

    invoke-direct {p1, p0}, Lcom/coloros/settings/widget/b$b;-><init>(Lcom/coloros/settings/widget/b;)V

    iput-object p1, p0, Lcom/coloros/settings/widget/b;->j:Lcom/android/sdk/a$d;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/widget/b;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/coloros/settings/widget/b;->p:I

    return p1
.end method

.method private synthetic a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 101
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->a:Landroid/content/Context;

    if-eqz p1, :cond_1

    const-string p2, "no_adjust_volume"

    .line 2038
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2042
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 2041
    invoke-static {p1, p2, v0}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2045
    invoke-static {p1, p2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/coloros/settings/widget/b;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/coloros/settings/widget/b;->z:Z

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/widget/b;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/coloros/settings/widget/b;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic b(Lcom/coloros/settings/widget/b;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/coloros/settings/widget/b;->n:I

    return p1
.end method

.method static synthetic c(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic c(Lcom/coloros/settings/widget/b;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/coloros/settings/widget/b;->s:I

    return p1
.end method

.method static synthetic c(I)Z
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/coloros/settings/widget/b;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/coloros/settings/widget/b;)Z
    .locals 1

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/coloros/settings/widget/b;->z:Z

    return v0
.end method

.method static synthetic e(Lcom/coloros/settings/widget/b;)Z
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/coloros/settings/widget/b;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic g(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic h(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic i(Lcom/coloros/settings/widget/b;)Lcom/coloros/settings/widget/SettingsSeekBar;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/widget/b;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/coloros/settings/widget/b;->q:Z

    return p0
.end method

.method private k()I
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/coloros/settings/widget/SettingsSeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Lcom/coloros/settings/widget/SettingsSeekBar;->a(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic k(Lcom/coloros/settings/widget/b;)Lcom/coloros/settings/widget/b$a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/widget/b;->x:Lcom/coloros/settings/widget/b$a;

    return-object p0
.end method

.method static synthetic l(Lcom/coloros/settings/widget/b;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/coloros/settings/widget/b;->q:Z

    return p0
.end method

.method public static synthetic lambda$cmVCzVt7_lHKghSL8xtmKYay6L8(Lcom/coloros/settings/widget/b;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/widget/b;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic m(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/coloros/settings/widget/b;->k()I

    move-result p0

    return p0
.end method

.method static synthetic n(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->p:I

    return p0
.end method

.method static synthetic o(Lcom/coloros/settings/widget/b;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/coloros/settings/widget/b;->i:Z

    return p0
.end method

.method static synthetic p(Lcom/coloros/settings/widget/b;)Landroid/media/AudioManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic q(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic r(Lcom/coloros/settings/widget/b;)Landroid/media/AudioManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic s(Lcom/coloros/settings/widget/b;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/coloros/settings/widget/b;->i:Z

    return p0
.end method

.method static synthetic t(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic u(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->f:I

    return p0
.end method

.method static synthetic v(Lcom/coloros/settings/widget/b;)Landroid/media/AudioManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic w(Lcom/coloros/settings/widget/b;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/coloros/settings/widget/b;->u:Z

    return p0
.end method

.method static synthetic x(Lcom/coloros/settings/widget/b;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/coloros/settings/widget/b;->n:I

    return p0
.end method

.method static synthetic y(Lcom/coloros/settings/widget/b;)Lcom/android/sdk/a$b;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/widget/b;->b:Lcom/android/sdk/a$b;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/os/HandlerThread;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->v:Lcom/android/sdk/a$e;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/coloros/settings/widget/b$c;

    invoke-direct {v0, p0}, Lcom/coloros/settings/widget/b$c;-><init>(Lcom/coloros/settings/widget/b;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/b;->v:Lcom/android/sdk/a$e;

    .line 113
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lcom/coloros/settings/widget/b;->v:Lcom/android/sdk/a$e;

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    .line 114
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final a(Lcom/coloros/settings/widget/SettingsSeekBar;I)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    iget v2, p0, Lcom/coloros/settings/widget/b;->f:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/widget/b;->m:I

    .line 77
    iput-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    .line 78
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    .line 79
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    iget v0, p0, Lcom/coloros/settings/widget/b;->g:I

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/SettingsSeekBar;->setMax(I)V

    .line 80
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    iget v0, p0, Lcom/coloros/settings/widget/b;->f:I

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/widget/b;->q:Z

    .line 81
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/SettingsSeekBar;->getProgress()I

    move-result p1

    if-nez p1, :cond_4

    if-ltz p2, :cond_1

    .line 83
    invoke-static {p2}, Lcom/coloros/settings/widget/SettingsSeekBar;->a(I)I

    move-result p1

    iget v0, p0, Lcom/coloros/settings/widget/b;->m:I

    if-ne p1, v0, :cond_1

    .line 84
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/SettingsSeekBar;->setSeekBarProgress(I)V

    goto :goto_1

    :cond_1
    if-ltz p2, :cond_2

    .line 85
    iget p1, p0, Lcom/coloros/settings/widget/b;->f:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 86
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/SettingsSeekBar;->setSeekBarProgress(I)V

    goto :goto_1

    .line 88
    :cond_2
    iget p1, p0, Lcom/coloros/settings/widget/b;->p:I

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/coloros/settings/widget/b;->p:I

    goto :goto_0

    :cond_3
    iget p1, p0, Lcom/coloros/settings/widget/b;->m:I

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setProgress(I)V

    .line 92
    :cond_4
    :goto_1
    iget p1, p0, Lcom/coloros/settings/widget/b;->f:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 93
    invoke-static {p2}, Lcom/coloros/settings/widget/SettingsSeekBar;->a(I)I

    move-result p1

    iget p2, p0, Lcom/coloros/settings/widget/b;->m:I

    if-eq p1, p2, :cond_5

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    iget p2, p0, Lcom/coloros/settings/widget/b;->m:I

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/SettingsSeekBar;->setProgress(I)V

    .line 96
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->a:Landroid/content/Context;

    const-string p2, "no_adjust_volume"

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1029
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    .line 1033
    :cond_6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1032
    invoke-static {p1, p2, v2}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    .line 97
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/SettingsSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    return-void

    .line 99
    :cond_8
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setOnSeekBarChangeListener(Lcom/color/support/widget/seekbar/ColorSeekBar$OnSeekBarChangeListener;)V

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    new-instance p2, Lcom/coloros/settings/widget/-$$Lambda$b$cmVCzVt7_lHKghSL8xtmKYay6L8;

    invoke-direct {p2, p0}, Lcom/coloros/settings/widget/-$$Lambda$b$cmVCzVt7_lHKghSL8xtmKYay6L8;-><init>(Lcom/coloros/settings/widget/b;)V

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/SettingsSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 248
    invoke-virtual {p0}, Lcom/coloros/settings/widget/b;->a()Z

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/coloros/settings/widget/SettingsSeekBar;->setEnabled(Z)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 252
    iget v1, p0, Lcom/coloros/settings/widget/b;->n:I

    goto :goto_0

    .line 253
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/widget/b;->i:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coloros/settings/widget/b;->s:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-boolean v0, p0, Lcom/coloros/settings/widget/b;->q:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 258
    :cond_2
    iget v0, p0, Lcom/coloros/settings/widget/b;->p:I

    if-ltz v0, :cond_3

    iget v1, p0, Lcom/coloros/settings/widget/b;->p:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/coloros/settings/widget/b;->m:I

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setProgress$2563266(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 241
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 243
    :cond_0
    invoke-super {p0}, Lcom/android/sdk/a;->e()V

    return-void
.end method

.method public final i()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    iget v1, p0, Lcom/coloros/settings/widget/b;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 296
    iget-object v1, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    iget v2, p0, Lcom/coloros/settings/widget/b;->f:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/coloros/settings/widget/b;->d:Landroid/media/AudioManager;

    iget v3, p0, Lcom/coloros/settings/widget/b;->f:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    .line 298
    iget-boolean v3, p0, Lcom/coloros/settings/widget/b;->u:Z

    if-nez v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/coloros/settings/widget/b;->b:Lcom/android/sdk/a$b;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/sdk/a$b;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public final j()Z
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public final onProgressChanged(Lcom/color/support/widget/seekbar/ColorSeekBar;IZ)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    .line 161
    iget v1, p0, Lcom/coloros/settings/widget/b;->w:I

    mul-int/lit8 v1, v1, 0x64

    if-ge p2, v1, :cond_0

    iget v1, p0, Lcom/coloros/settings/widget/b;->f:I

    if-ne v1, v0, :cond_0

    .line 163
    instance-of v1, p1, Lcom/coloros/settings/widget/SettingsSeekBar;

    if-eqz v1, :cond_0

    .line 164
    check-cast p1, Lcom/coloros/settings/widget/SettingsSeekBar;

    iget v1, p0, Lcom/coloros/settings/widget/b;->w:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {p1, v1}, Lcom/coloros/settings/widget/SettingsSeekBar;->setSeekBarProgress(I)V

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->x:Lcom/coloros/settings/widget/b$a;

    if-eqz p1, :cond_1

    .line 169
    invoke-interface {p1, p2}, Lcom/coloros/settings/widget/b$a;->a(I)V

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/widget/b;->k()I

    move-result p1

    .line 172
    iget p2, p0, Lcom/coloros/settings/widget/b;->p:I

    if-ne p2, p1, :cond_2

    return-void

    :cond_2
    if-eqz p3, :cond_4

    .line 177
    invoke-virtual {p0, p1}, Lcom/coloros/settings/widget/b;->b(I)V

    .line 178
    iget p2, p0, Lcom/coloros/settings/widget/b;->f:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_3

    iget p2, p0, Lcom/coloros/settings/widget/b;->f:I

    if-eq p2, v0, :cond_3

    iget p2, p0, Lcom/coloros/settings/widget/b;->f:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    .line 180
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/widget/b;->g()Z

    move-result p2

    if-nez p2, :cond_4

    .line 181
    invoke-virtual {p0}, Lcom/coloros/settings/widget/b;->c()V

    :cond_4
    if-nez p1, :cond_5

    .line 186
    invoke-virtual {p0}, Lcom/coloros/settings/widget/b;->d()V

    .line 188
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->x:Lcom/coloros/settings/widget/b$a;

    if-eqz p1, :cond_6

    .line 189
    iget-object p2, p0, Lcom/coloros/settings/widget/b;->y:Lcom/coloros/settings/widget/SettingsSeekBar;

    invoke-interface {p1, p2}, Lcom/coloros/settings/widget/b$a;->a(Lcom/coloros/settings/widget/SettingsSeekBar;)V

    :cond_6
    return-void
.end method

.method public final onStartTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 3

    .line 195
    invoke-direct {p0}, Lcom/coloros/settings/widget/b;->k()I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/widget/b;->A:I

    .line 196
    invoke-virtual {p0}, Lcom/coloros/settings/widget/b;->c()V

    .line 1305
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 1309
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1310
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/coloros/settings/widget/b;->u:Z

    .line 199
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 200
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onStartTrackingTouch mFromTouch : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/settings/widget/b;->u:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsSeekBarVolumizer"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onStopTrackingTouch(Lcom/color/support/widget/seekbar/ColorSeekBar;)V
    .locals 3

    const-string p1, "SettingsSeekBarVolumizer"

    const-string v0, "onStopTrackingTouch delay"

    .line 207
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object p1, p0, Lcom/coloros/settings/widget/b;->k:Landroid/os/Handler;

    .line 211
    invoke-direct {p0}, Lcom/coloros/settings/widget/b;->k()I

    move-result v1

    iget v2, p0, Lcom/coloros/settings/widget/b;->A:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 210
    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 211
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method
