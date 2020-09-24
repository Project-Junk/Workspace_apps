.class Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment$1;->this$0:Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 173
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app.intent.action.TALKBACK_SWITCH_CHAGNED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "talkback_enabled"

    .line 174
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive, talkback enabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NavBar"

    const-string v1, "NavigationBarSettingsFragment"

    invoke-static {v0, v1, p2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 178
    iget-object p0, p0, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment$1;->this$0:Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;

    invoke-static {p0}, Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;->access$000(Lcom/coloros/systemui/navbar/settings/NavigationBarSettingsFragment;)V

    :cond_0
    return-void
.end method
