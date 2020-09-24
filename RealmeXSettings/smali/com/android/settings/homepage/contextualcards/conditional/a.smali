.class public abstract Lcom/android/settings/homepage/contextualcards/conditional/a;
.super Ljava/lang/Object;
.source "AbnormalRingerConditionController.java"

# interfaces
.implements Lcom/android/settings/homepage/contextualcards/conditional/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/contextualcards/conditional/a$a;
    }
.end annotation


# static fields
.field private static final b:Landroid/content/IntentFilter;


# instance fields
.field protected final a:Landroid/media/AudioManager;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/android/settings/homepage/contextualcards/conditional/i;

.field private final e:Lcom/android/settings/homepage/contextualcards/conditional/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/conditional/a;->b:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/homepage/contextualcards/conditional/i;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->c:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    const-string p2, "audio"

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->a:Landroid/media/AudioManager;

    .line 40
    new-instance p1, Lcom/android/settings/homepage/contextualcards/conditional/a$a;

    invoke-direct {p1, p0}, Lcom/android/settings/homepage/contextualcards/conditional/a$a;-><init>(Lcom/android/settings/homepage/contextualcards/conditional/a;)V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->e:Lcom/android/settings/homepage/contextualcards/conditional/a$a;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/homepage/contextualcards/conditional/a;)Lcom/android/settings/homepage/contextualcards/conditional/i;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->d:Lcom/android/settings/homepage/contextualcards/conditional/i;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 50
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->a:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 51
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->a:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SOUND_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->e:Lcom/android/settings/homepage/contextualcards/conditional/a$a;

    sget-object v2, Lcom/android/settings/homepage/contextualcards/conditional/a;->b:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/conditional/a;->e:Lcom/android/settings/homepage/contextualcards/conditional/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
