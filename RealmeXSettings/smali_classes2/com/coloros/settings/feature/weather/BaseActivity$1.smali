.class final Lcom/coloros/settings/feature/weather/BaseActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/BaseActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/weather/BaseActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/BaseActivity$1;->a:Lcom/coloros/settings/feature/weather/BaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/coloros/settings/feature/weather/BaseActivity$1;->a:Lcom/coloros/settings/feature/weather/BaseActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/weather/BaseActivity;->finish()V

    :cond_0
    return-void
.end method
