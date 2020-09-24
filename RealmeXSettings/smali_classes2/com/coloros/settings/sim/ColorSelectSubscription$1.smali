.class final Lcom/coloros/settings/sim/ColorSelectSubscription$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorSelectSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/sim/ColorSelectSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/sim/ColorSelectSubscription;


# direct methods
.method constructor <init>(Lcom/coloros/settings/sim/ColorSelectSubscription;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/coloros/settings/sim/ColorSelectSubscription$1;->a:Lcom/coloros/settings/sim/ColorSelectSubscription;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ss"

    .line 109
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ABSENT"

    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 111
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/sim/ColorSelectSubscription$1;->a:Lcom/coloros/settings/sim/ColorSelectSubscription;

    invoke-virtual {p1}, Lcom/coloros/settings/sim/ColorSelectSubscription;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    const-string p1, "SelectSubscription"

    const-string p2, "onReceive ACTION_SIM_STATE_CHANGED finish Activity"

    .line 116
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
