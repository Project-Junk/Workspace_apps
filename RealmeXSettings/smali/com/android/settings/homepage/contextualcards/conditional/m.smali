.class public final Lcom/android/settings/homepage/contextualcards/conditional/m;
.super Ljava/lang/Object;
.source "GrayscaleConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/m$a;
    }
.end annotation


# static fields
.field static final a:I

.field private static final b:Landroid/content/IntentFilter;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final e:Landroid/hardware/display/ColorDisplayManager;

.field private final f:Lcom/android/settings/homepage/contextualcards/conditional/m$a;

.field private g:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "GrayscaleConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/m;->a:I

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.action.GRAYSCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/m;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    .line 54
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/ColorDisplayManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->e:Landroid/hardware/display/ColorDisplayManager;

    .line 55
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/m$a;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/m$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/m;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->f:Lcom/android/settings/homepage/contextualcards/conditional/m$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/homepage/contextualcards/conditional/m;)Lcom/android/settings/homepage/contextualcards/conditional/i;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->e:Landroid/hardware/display/ColorDisplayManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z

    .line 1117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.GRAYSCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1118
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1119
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/conditional/i;->c()V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->g:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->f:Lcom/android/settings/homepage/contextualcards/conditional/m$a;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/m;->b:Landroid/content/IntentFilter;

    const-string v3, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->f:Lcom/android/settings/homepage/contextualcards/conditional/m$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final d()J
    .locals 2

    .line 60
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/m;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    const v1, 0x7f1205f3

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 66
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->g:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->e:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->isSaturationActivated()Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "GrayscaleCondition"

    const-string v2, "Failure parsing grayscale settings intent, skipping"

    .line 70
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 91
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/m;->a:I

    int-to-long v1, v1

    .line 2070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x693

    .line 2075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 93
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    const v2, 0x7f1205e2

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    const v3, 0x7f1205dd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    .line 97
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    const v2, 0x7f1205dc

    .line 99
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/m;->c:Landroid/content/Context;

    const v2, 0x7f0806f1

    .line 100
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 2390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 102
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method
