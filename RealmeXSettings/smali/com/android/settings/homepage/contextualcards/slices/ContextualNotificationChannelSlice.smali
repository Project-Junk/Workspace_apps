.class public Lcom/android/settings/homepage/contextualcards/slices/ContextualNotificationChannelSlice;
.super Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;
.source "ContextualNotificationChannelSlice.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 0

    .line 47
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualNotificationChannelSlice;->c:Landroid/content/Context;

    const p2, 0x7f1211c1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/ContextualNotificationChannelSlice;->c:Landroid/content/Context;

    const-string v1, "notification_channel_slice_prefs"

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const-string v2, "interacted_packages"

    .line 55
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 56
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 42
    sget-object v0, Lcom/android/settings/slices/a;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/c;",
            ">;"
        }
    .end annotation

    .line 61
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelWorker;

    return-object v0
.end method
