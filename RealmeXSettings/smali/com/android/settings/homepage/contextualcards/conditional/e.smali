.class public final Lcom/android/settings/homepage/contextualcards/conditional/e;
.super Ljava/lang/Object;
.source "CellularDataConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/e$a;
    }
.end annotation


# static fields
.field static final a:I

.field private static final b:Landroid/content/IntentFilter;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final e:Lcom/android/settings/homepage/contextualcards/conditional/e$a;

.field private final f:Landroid/telephony/TelephonyManager;

.field private final g:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "CellularDataConditionController"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/settings/homepage/contextualcards/conditional/e;->a:I

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/e;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    .line 50
    new-instance p2, Lcom/android/settings/homepage/contextualcards/conditional/e$a;

    invoke-direct {p2, p0}, Lcom/android/settings/homepage/contextualcards/conditional/e$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/e;)V

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->e:Lcom/android/settings/homepage/contextualcards/conditional/e$a;

    .line 51
    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->g:Landroid/net/ConnectivityManager;

    .line 53
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->f:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/homepage/contextualcards/conditional/e;)Lcom/android/settings/homepage/contextualcards/conditional/i;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->f:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings$DataUsageSummaryActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->e:Lcom/android/settings/homepage/contextualcards/conditional/e$a;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/e;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->e:Lcom/android/settings/homepage/contextualcards/conditional/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final d()J
    .locals 2

    .line 58
    sget v0, Lcom/android/settings/homepage/contextualcards/conditional/e;->a:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final e()Z
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->g:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->f:Landroid/telephony/TelephonyManager;

    .line 64
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->f:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final f()Lcom/android/settings/homepage/contextualcards/b;
    .locals 4

    .line 83
    new-instance v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/conditional/k$a;-><init>()V

    sget v1, Lcom/android/settings/homepage/contextualcards/conditional/e;->a:I

    int-to-long v1, v1

    .line 1070
    iput-wide v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->v:J

    const/16 v1, 0x17c

    .line 1075
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->w:I

    .line 85
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    const v2, 0x7f1205e3

    .line 86
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1080
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/conditional/k$a;->x:Ljava/lang/CharSequence;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    .line 87
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    const v3, 0x7f1205d4

    .line 88
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1300
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->a:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    .line 89
    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1345
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->j:Ljava/lang/String;

    .line 89
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    const v2, 0x7f1205d3

    .line 90
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1355
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->l:Ljava/lang/String;

    .line 90
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/e;->c:Landroid/content/Context;

    const v2, 0x7f0806bb

    .line 91
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1380
    iput-object v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->q:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0d0111

    .line 1390
    iput v1, v0, Lcom/android/settings/homepage/contextualcards/b$a;->s:I

    .line 93
    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/b$a;->a()Lcom/android/settings/homepage/contextualcards/b;

    move-result-object v0

    return-object v0
.end method
