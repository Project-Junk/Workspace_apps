.class public final Lcom/android/settings/homepage/contextualcards/conditional/r;
.super Ljava/lang/Object;
.source "WorkModeConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/r$a;
    }
.end annotation


# static fields
.field static final a:I

.field private static final b:Landroid/content/IntentFilter;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/UserManager;

.field private final e:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final f:Lcom/android/settings/homepage/contextualcards/conditional/r$a;

.field private g:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "WorkModeConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/r;->a:I

    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/r;->b:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/android/settings/homepage/contextualcards/conditional/r;->b:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    .line 56
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->d:Landroid/os/UserManager;

    .line 57
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->e:Lcom/android/settings/homepage/contextualcards/conditional/i;

    .line 58
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/r$a;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/r$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/r;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->f:Lcom/android/settings/homepage/contextualcards/conditional/r$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/homepage/contextualcards/conditional/r;)Lcom/android/settings/homepage/contextualcards/conditional/i;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->e:Lcom/android/settings/homepage/contextualcards/conditional/i;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->g:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->d:Landroid/os/UserManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings$AccountDashboardActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->f:Lcom/android/settings/homepage/contextualcards/conditional/r$a;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/r;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->f:Lcom/android/settings/homepage/contextualcards/conditional/r$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final d()J
    .locals 2

    .line 63
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/r;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 6

    .line 1111
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->d:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 1112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    .line 1113
    iput-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->g:Landroid/os/UserHandle;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1115
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1116
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1118
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->g:Landroid/os/UserHandle;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->g:Landroid/os/UserHandle;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->d:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 87
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/r;->a:I

    int-to-long v1, v1

    .line 2070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x17f

    .line 2075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 89
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    const v2, 0x7f1205e3

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    const v3, 0x7f1205e5

    .line 92
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 91
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    .line 93
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    const v2, 0x7f1205e4

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/r;->c:Landroid/content/Context;

    const v2, 0x7f08084c

    .line 95
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 2390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 97
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method
