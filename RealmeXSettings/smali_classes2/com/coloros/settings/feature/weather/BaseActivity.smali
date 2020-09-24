.class public Lcom/coloros/settings/feature/weather/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation


# instance fields
.field private a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/coloros/settings/feature/weather/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/weather/BaseActivity$1;-><init>(Lcom/coloros/settings/feature/weather/BaseActivity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/weather/BaseActivity;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/feature/weather/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1053
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 1054
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/BaseActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/feature/weather/BaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 1059
    iget-object v0, p0, Lcom/coloros/settings/feature/weather/BaseActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/weather/BaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
