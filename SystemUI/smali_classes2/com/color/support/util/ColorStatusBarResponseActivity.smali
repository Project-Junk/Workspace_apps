.class public Lcom/color/support/util/ColorStatusBarResponseActivity;
.super Landroid/app/Activity;
.source "ColorStatusBarResponseActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "ColorStatusBarResponseActivity"

    .line 29
    iput-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method private initReceiver()V
    .locals 2

    .line 40
    new-instance v0, Lcom/color/support/util/ColorStatusBarResponseActivity$1;

    invoke-direct {v0, p0}, Lcom/color/support/util/ColorStatusBarResponseActivity$1;-><init>(Lcom/color/support/util/ColorStatusBarResponseActivity;)V

    iput-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseActivity;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.color.clicktop"

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/color/support/util/ColorStatusBarResponseActivity;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/color/support/util/ColorStatusBarResponseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 59
    iget-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseActivity;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/color/support/util/ColorStatusBarResponseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 35
    invoke-direct {p0}, Lcom/color/support/util/ColorStatusBarResponseActivity;->initReceiver()V

    return-void
.end method

.method public onStatusBarClicked()V
    .locals 0

    return-void
.end method
