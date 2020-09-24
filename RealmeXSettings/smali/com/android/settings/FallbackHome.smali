.class public Lcom/android/settings/FallbackHome;
.super Landroid/app/Activity;
.source "FallbackHome.java"


# instance fields
.field private a:Z

.field private b:Landroid/app/WallpaperManager;

.field private final c:Ljava/lang/Runnable;

.field private final d:Landroid/app/WallpaperManager$OnColorsChangedListener;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/os/Handler;

.field private g:Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/settings/-$$Lambda$FallbackHome$2K5ZUwQwAi3GVP3hu_brJHjvUZA;

    invoke-direct {v0, p0}, Lcom/android/settings/-$$Lambda$FallbackHome$2K5ZUwQwAi3GVP3hu_brJHjvUZA;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->c:Ljava/lang/Runnable;

    .line 68
    new-instance v0, Lcom/android/settings/FallbackHome$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$1;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->d:Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 136
    new-instance v0, Lcom/android/settings/FallbackHome$2;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$2;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->e:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v0, Lcom/android/settings/FallbackHome$4;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$4;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Landroid/app/WallpaperColors;I)I
    .locals 0

    .line 1196
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    or-int/lit16 p0, p1, 0x2000

    or-int/lit8 p0, p0, 0x10

    return p0

    :cond_0
    and-int/lit16 p0, p1, -0x2001

    and-int/lit8 p0, p0, -0x11

    return p0
.end method

.method static synthetic a(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->b:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 171
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FallbackHome"

    if-eqz v0, :cond_1

    .line 176
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "User unlocked but no home; let\'s hope someone enables one soon?"

    .line 182
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->f:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    const-string v0, "User unlocked and real home found; let\'s go!"

    .line 185
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 186
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 188
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->finish()V

    :cond_2
    return-void
.end method

.method private b()Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->g:Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    if-nez v0, :cond_0

    .line 216
    const-class v0, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->g:Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    .line 217
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->g:Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;->bind(Ljava/lang/Object;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->g:Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/FallbackHome;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->a()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager$OnColorsChangedListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->d:Landroid/app/WallpaperManager$OnColorsChangedListener;

    return-object p0
.end method

.method private synthetic c()V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d017c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 59
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 61
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x10c000d

    .line 62
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static synthetic lambda$2K5ZUwQwAi3GVP3hu_brJHjvUZA(Lcom/android/settings/FallbackHome;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->c()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->b()Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;->setFallbackHomeActiveStatus(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/FallbackHome;->a:Z

    .line 89
    iget-boolean p1, p0, Lcom/android/settings/FallbackHome;->a:Z

    if-nez p1, :cond_1

    const p1, 0x7f13017c

    .line 90
    invoke-virtual {p0, p1}, Lcom/android/settings/FallbackHome;->setTheme(I)V

    const/16 p1, 0x1006

    goto :goto_1

    :cond_1
    const/16 p1, 0x600

    .line 98
    :goto_1
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->b:Landroid/app/WallpaperManager;

    .line 99
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->b:Landroid/app/WallpaperManager;

    if-nez v0, :cond_2

    const-string v0, "FallbackHome"

    const-string v1, "Wallpaper manager isn\'t ready, can\'t listen to color changes!"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1144
    :cond_2
    new-instance v0, Lcom/android/settings/FallbackHome$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/FallbackHome$3;-><init>(Lcom/android/settings/FallbackHome;I)V

    .line 1167
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 104
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/FallbackHome;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/FallbackHome;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->b()Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;->setFallbackHomeActiveStatus(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/FallbackHome;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->b:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/FallbackHome;->d:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->g:Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;->unbind()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/android/settings/FallbackHome;->g:Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/FallbackHome;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 113
    iget-boolean v0, p0, Lcom/android/settings/FallbackHome;->a:Z

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/FallbackHome;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
