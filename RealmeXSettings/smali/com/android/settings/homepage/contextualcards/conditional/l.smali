.class public final Lcom/android/settings/homepage/contextualcards/conditional/l;
.super Ljava/lang/Object;
.source "DndConditionCardController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/l$a;
    }
.end annotation


# static fields
.field static final a:I

.field static final b:Landroid/content/IntentFilter;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final e:Landroid/app/NotificationManager;

.field private final f:Lcom/android/settings/homepage/contextualcards/conditional/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DndConditionCardController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/l;->a:I

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/l;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    .line 54
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->e:Landroid/app/NotificationManager;

    .line 55
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/l$a;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/l$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/l;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->f:Lcom/android/settings/homepage/contextualcards/conditional/l$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/homepage/contextualcards/conditional/l;)Lcom/android/settings/homepage/contextualcards/conditional/i;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->e:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "DndCondition"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 80
    new-instance v0, Lcom/android/settings/core/f;

    invoke-direct {v0, p1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/android/settings/notification/ZenModeSettings;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x5de

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    const v1, 0x7f121b86

    .line 1063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->f:Lcom/android/settings/homepage/contextualcards/conditional/l$a;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/l;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->f:Lcom/android/settings/homepage/contextualcards/conditional/l$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final d()J
    .locals 2

    .line 60
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/l;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->e:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 94
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/l;->a:I

    int-to-long v1, v1

    .line 1070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x17d

    .line 1075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 96
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    const v2, 0x7f1205e2

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    .line 98
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    const v3, 0x7f1205e8

    .line 99
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    .line 100
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 2118
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->e:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->areAllZenBehaviorSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2119
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    const v2, 0x7f1205e6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2121
    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    const v2, 0x7f1205e7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2355
    :goto_0
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 101
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/l;->c:Landroid/content/Context;

    const v2, 0x7f0806d2

    .line 102
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 2390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 104
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method
