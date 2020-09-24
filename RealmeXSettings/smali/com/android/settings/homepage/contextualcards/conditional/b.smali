.class public final Lcom/android/settings/homepage/contextualcards/conditional/b;
.super Ljava/lang/Object;
.source "AirplaneModeConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/b$a;
    }
.end annotation


# static fields
.field static final a:I

.field private static final b:Landroid/content/IntentFilter;


# instance fields
.field private final c:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final d:Landroid/content/Context;

.field private final e:Lcom/android/settings/homepage/contextualcards/conditional/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "AirplaneModeConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/b;->a:I

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/b;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    .line 47
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/b$a;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/b$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/b;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->e:Lcom/android/settings/homepage/contextualcards/conditional/b$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/homepage/contextualcards/conditional/b;)Lcom/android/settings/homepage/contextualcards/conditional/i;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->c:Lcom/android/settings/homepage/contextualcards/conditional/i;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->e:Lcom/android/settings/homepage/contextualcards/conditional/b$a;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/b;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->e:Lcom/android/settings/homepage/contextualcards/conditional/b$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final d()J
    .locals 2

    .line 52
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/b;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 73
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/b;->a:I

    int-to-long v1, v1

    .line 1070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x179

    .line 1075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 75
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    const v2, 0x7f1205e2

    .line 76
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    .line 77
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    const v3, 0x7f1205ce

    .line 78
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    .line 79
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 79
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    const v2, 0x7f1205cd

    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/b;->d:Landroid/content/Context;

    const v2, 0x7f0806a2

    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 1390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 83
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method
