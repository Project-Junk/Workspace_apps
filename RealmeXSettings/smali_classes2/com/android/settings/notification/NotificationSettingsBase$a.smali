.class public final Lcom/android/settings/notification/NotificationSettingsBase$a;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method protected constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    .line 464
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 465
    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/l;

    .line 466
    invoke-virtual {v2, v0}, Lcom/android/settings/notification/l;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationSettingsBase;->a(Lcom/android/settings/notification/NotificationSettingsBase;)V

    .line 471
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->o:Lcom/android/settings/notification/k$a;

    iget-boolean v0, v0, Lcom/android/settings/notification/k$a;->f:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->n:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->k:Landroid/app/NotificationChannelGroup;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->k:Landroid/app/NotificationChannelGroup;

    invoke-virtual {v0}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v1

    .line 480
    :goto_2
    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationSettingsBase;->s:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    .line 481
    iget-object v5, p0, Lcom/android/settings/notification/NotificationSettingsBase$a;->a:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v5}, Lcom/android/settings/notification/NotificationSettingsBase;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    if-nez v0, :cond_5

    move v6, v1

    goto :goto_4

    :cond_5
    move v6, v2

    :goto_4
    invoke-static {v5, v4, v6}, Lcom/android/settings/notification/NotificationSettingsBase;->a(Landroidx/preference/PreferenceGroup;Landroidx/preference/Preference;Z)V

    goto :goto_3

    :cond_6
    return-void
.end method
