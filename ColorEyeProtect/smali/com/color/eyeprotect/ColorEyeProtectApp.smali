.class public Lcom/color/eyeprotect/ColorEyeProtectApp;
.super Landroid/app/Application;


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/color/eyeprotect/ColorEyeProtectApp;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/color/eyeprotect/ColorEyeProtectApp;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    sget-object v0, Lcom/color/eyeprotect/ColorEyeProtectApp;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method private c()V
    .locals 4

    sget-object v0, Lcom/color/eyeprotect/ColorEyeProtectApp;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/color/eyeprotect/ColorEyeProtectApp$1;

    invoke-direct {v1, p0}, Lcom/color/eyeprotect/ColorEyeProtectApp$1;-><init>(Lcom/color/eyeprotect/ColorEyeProtectApp;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v1, v2, v3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    sput-object p1, Lcom/color/eyeprotect/ColorEyeProtectApp;->a:Landroid/content/Context;

    return-void
.end method

.method public onCreate()V
    .locals 5

    invoke-virtual {p0}, Lcom/color/eyeprotect/ColorEyeProtectApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.intelligent.color.temperature.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v2, "ColorEyeProtect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application onCreate starService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/color/common/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ColorEyeProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/color/eyeprotect/services/ColorEyeProtectManagerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/color/eyeprotect/ColorEyeProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    invoke-virtual {p0}, Lcom/color/eyeprotect/ColorEyeProtectApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/DarkModeManager;->init(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/color/eyeprotect/ColorEyeProtectApp;->c()V

    return-void
.end method
