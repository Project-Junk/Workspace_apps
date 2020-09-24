.class Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$3;
.super Lcom/coloros/systemui/statusbar/receiver/PackageRestartReceiver;
.source "ColorSystemPromptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-direct {p0}, Lcom/coloros/systemui/statusbar/receiver/PackageRestartReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", package:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Statusbar"

    invoke-static {v1, v0, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p1, "com.coloros.soundrecorder"

    .line 185
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$3;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$400(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)V

    :cond_0
    return-void
.end method
