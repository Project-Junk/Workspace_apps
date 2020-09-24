.class public Lcom/android/settings/widget/VideoPreference;
.super Landroidx/preference/Preference;
.source "VideoPreference.java"


# instance fields
.field public final a:Landroid/content/Context;

.field b:Landroid/media/MediaPlayer;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field d:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public e:Z

.field public f:I

.field private g:Landroid/net/Uri;

.field private h:F

.field private i:I

.field private j:Z

.field private k:Landroid/view/Surface;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->h:F

    const/4 v0, -0x2

    .line 61
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->f:I

    .line 65
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/VideoPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 70
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->h:F

    const/4 v0, -0x2

    .line 61
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->f:I

    .line 71
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->a:Landroid/content/Context;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/VideoPreference;)Landroid/view/Surface;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreference;->k:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/widget/VideoPreference;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->k:Landroid/view/Surface;

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/g$a;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 83
    :try_start_0
    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->l:I

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->l:I

    :goto_0
    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->l:I

    .line 86
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/widget/VideoPreference;->l:I

    .line 88
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/widget/VideoPreference;->g:Landroid/net/Uri;

    .line 90
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->i:I

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 91
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->i:I

    :goto_1
    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->i:I

    .line 93
    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->i:I

    if-nez p1, :cond_2

    iget p1, p0, Lcom/android/settings/widget/VideoPreference;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    .line 108
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 96
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->b()V

    .line 97
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    if-lez p1, :cond_3

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/VideoPreference;->setVisible(Z)V

    const p1, 0x7f0d0394

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/VideoPreference;->setLayoutResource(I)V

    .line 100
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->c:Z

    .line 101
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->d()V

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/VideoPreference;->setVisible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_2
    const-string p1, "VideoPreference"

    const-string v0, "Animation resource not found. Will not show animation."

    .line 106
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    throw p1
.end method

.method private static synthetic a(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private a(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 184
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->e:Z

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 188
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 189
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 191
    iput-boolean v1, p0, Lcom/android/settings/widget/VideoPreference;->e:Z

    :cond_1
    return-void
.end method

.method private synthetic a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-void
.end method

.method private b()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->g:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    .line 232
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$ViLkN-K4yemtRobGT5UcpEHSt6E;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$ViLkN-K4yemtRobGT5UcpEHSt6E;-><init>(Lcom/android/settings/widget/VideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$uHcwL1P6VGq-fub6P9-ajtlMex4;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$VideoPreference$uHcwL1P6VGq-fub6P9-ajtlMex4;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->k:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/media/MediaPlayer;)V
    .locals 0

    const/4 p1, 0x1

    .line 234
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/VideoPreference;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->j:Z

    return p0
.end method

.method private c()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 246
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 247
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->d:Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/android/settings/widget/VideoPreference;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreference;->e:Z

    return p0
.end method

.method private d()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/VideoPreference;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/VideoPreference;->h:F

    return-void
.end method

.method public static synthetic lambda$IiPTVbnM_FGbq-q61gmWXSYdfYU(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/VideoPreference;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$ViLkN-K4yemtRobGT5UcpEHSt6E(Lcom/android/settings/widget/VideoPreference;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/VideoPreference;->b(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic lambda$uHcwL1P6VGq-fub6P9-ajtlMex4(Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/widget/VideoPreference;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->j:Z

    .line 210
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->c()V

    return-void
.end method

.method public final a(II)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/android/settings/widget/VideoPreference;->l:I

    .line 222
    iput p2, p0, Lcom/android/settings/widget/VideoPreference;->i:I

    .line 223
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->c()V

    .line 224
    iget-object p1, p0, Lcom/android/settings/widget/VideoPreference;->a:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/VideoPreference;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->j:Z

    .line 204
    iput-boolean p1, p0, Lcom/android/settings/widget/VideoPreference;->e:Z

    .line 205
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->b()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 114
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 116
    iget-boolean v0, p0, Lcom/android/settings/widget/VideoPreference;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a0786

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    const v1, 0x7f0a0785

    .line 121
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a0784

    .line 122
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0a0782

    .line 123
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AspectRatioFrameLayout;

    .line 126
    iget v3, p0, Lcom/android/settings/widget/VideoPreference;->i:I

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget v3, p0, Lcom/android/settings/widget/VideoPreference;->h:F

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    .line 128
    iget v3, p0, Lcom/android/settings/widget/VideoPreference;->f:I

    const/4 v4, -0x1

    if-lt v3, v4, :cond_1

    .line 129
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v5}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/settings/widget/VideoPreference;->a(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 134
    new-instance p1, Lcom/android/settings/widget/-$$Lambda$VideoPreference$IiPTVbnM_FGbq-q61gmWXSYdfYU;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/widget/-$$Lambda$VideoPreference$IiPTVbnM_FGbq-q61gmWXSYdfYU;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance p1, Lcom/android/settings/widget/VideoPreference$1;

    invoke-direct {p1, p0, v1, v2}, Lcom/android/settings/widget/VideoPreference$1;-><init>(Lcom/android/settings/widget/VideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/settings/widget/VideoPreference;->c()V

    .line 199
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    return-void
.end method
