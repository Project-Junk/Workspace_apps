.class public Lcom/color/support/util/ColorStatusBarResponseActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "ColorStatusBarResponseActivity"

    iput-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseActivity;->b:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/color/support/util/ColorStatusBarResponseActivity$1;

    invoke-direct {v0, p0}, Lcom/color/support/util/ColorStatusBarResponseActivity$1;-><init>(Lcom/color/support/util/ColorStatusBarResponseActivity;)V

    iput-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseActivity;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.color.clicktop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/color/support/util/ColorStatusBarResponseActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/color/support/util/ColorStatusBarResponseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/color/support/util/ColorStatusBarResponseActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/color/support/util/ColorStatusBarResponseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/color/support/util/ColorStatusBarResponseActivity;->b()V

    return-void
.end method
