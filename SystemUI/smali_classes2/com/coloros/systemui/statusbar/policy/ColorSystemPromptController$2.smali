.class Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;
.super Ljava/lang/Object;
.source "ColorSystemPromptController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 152
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$100(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lcom/coloros/common/util/Util;->getCurrentTopAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "third party recoder highlight---currentTopApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mRecordPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    .line 161
    invoke-static {v2}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$200(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "ColorSystemPromptController"

    .line 160
    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$200(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    invoke-static {v1}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$200(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$300(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController$2;->this$0:Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;->access$300(Lcom/coloros/systemui/statusbar/policy/ColorSystemPromptController;Z)V

    :goto_0
    return-void
.end method
