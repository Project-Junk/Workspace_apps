.class public Lcom/android/settings/survey/SurveyMixin;
.super Ljava/lang/Object;
.source "SurveyMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroidx/fragment/app/Fragment;

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, Lcom/android/settings/survey/SurveyMixin;->a:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/android/settings/survey/SurveyMixin;->b:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/settings/survey/SurveyMixin;->c:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 1090
    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->c:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 1087
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot unregister receiver if activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/b;->getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/android/settings/overlay/d;->a()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 66
    invoke-interface {v0}, Lcom/android/settings/overlay/d;->b()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/survey/SurveyMixin;->c:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
