.class public Lcom/coloros/settings/feature/display/video/TileLongClickActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TileLongClickActivity.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTiles$ShowLayout;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTiles$GPUProfiling;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTiles$ForceRTL;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTiles$AnimationSpeed;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/development/qstile/DevelopmentTiles$SensorsOff;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-class v1, Lcom/android/settings/inputmethod/qstile/InputMethodTile;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .line 87
    sget-object v0, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 88
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "android.intent.extra.COMPONENT_NAME"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->finish()V

    return-void

    .line 57
    :cond_0
    const-class v1, Lcom/coloros/partners/dolby/DolbyTileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-class v0, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 60
    :cond_1
    const-class v1, Lcom/coloros/settings/feature/display/video/Iris5TileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Lcom/coloros/settings/feature/display/video/OsieTileService;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 64
    :cond_2
    const-class v1, Lcom/coloros/settings/scenemode/SceneTileService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/coloros/settings/scenemode/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    invoke-static {p0, p1}, Lcom/coloros/settings/scenemode/SceneModeActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 68
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 70
    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    const-class v0, Lcom/android/settings/Settings$DevelopmentTileConfigActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 72
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 62
    :cond_4
    :goto_0
    const-class v0, Lcom/coloros/settings/feature/display/video/OsieIris5TileLongClickActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/TileLongClickActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 80
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 81
    invoke-static {}, Lcom/coloros/settings/scenemode/c;->b()V

    return-void
.end method
