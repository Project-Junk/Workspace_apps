.class public abstract Lcom/android/settings/notification/AbstractZenModePreferenceController;
.super Lcom/android/settingslib/core/a;
.source "AbstractZenModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AbstractZenModePreferenceController$b;,
        Lcom/android/settings/notification/AbstractZenModePreferenceController$a;
    }
.end annotation


# static fields
.field protected static h:Lcom/android/settings/notification/AbstractZenModePreferenceController$b;


# instance fields
.field protected e:Lcom/android/settings/notification/AbstractZenModePreferenceController$a;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final f:Ljava/lang/String;

.field final g:Landroid/app/NotificationManager;

.field protected i:Lcom/android/settingslib/core/instrumentation/d;

.field protected final j:Lcom/android/settings/notification/w;

.field protected k:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/android/settings/notification/AbstractZenModePreferenceController$b;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController$b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->h:Lcom/android/settings/notification/AbstractZenModePreferenceController$b;

    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 67
    :cond_0
    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->f:Ljava/lang/String;

    const-string p2, "notification"

    .line 68
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/NotificationManager;

    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->g:Landroid/app/NotificationManager;

    .line 71
    iget-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    .line 73
    invoke-static {p1}, Lcom/android/settings/notification/w;->a(Landroid/content/Context;)Lcom/android/settings/notification/w;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->j:Lcom/android/settings/notification/w;

    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->j:Lcom/android/settings/notification/w;

    iget v1, v1, Lcom/android/settings/notification/w;->a:I

    const-string v2, "zen_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected final c()I
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_duration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 84
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->k:Landroidx/preference/PreferenceScreen;

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 87
    new-instance v0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;-><init>(Lcom/android/settings/notification/AbstractZenModePreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->e:Lcom/android/settings/notification/AbstractZenModePreferenceController$a;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->f:Ljava/lang/String;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->e:Lcom/android/settings/notification/AbstractZenModePreferenceController$a;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1145
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->e:Lcom/android/settings/notification/AbstractZenModePreferenceController$a;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1139
    iget-object v2, v0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->a:Landroid/net/Uri;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1140
    iget-object v2, v0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->b:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1141
    iget-object v2, v0, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->c:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->e:Lcom/android/settings/notification/AbstractZenModePreferenceController$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/notification/AbstractZenModePreferenceController$a;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    return-void
.end method
