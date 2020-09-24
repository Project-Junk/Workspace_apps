.class Lcom/android/systemui/statusbar/policy/CallbackHandler$2;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/String;Ljava/lang/String;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$activityIn:Z

.field final synthetic val$activityOut:Z

.field final synthetic val$description:Ljava/lang/String;

.field final synthetic val$isWide:Z

.field final synthetic val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$qsType:I

.field final synthetic val$roaming:Z

.field final synthetic val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field final synthetic val$statusType:I

.field final synthetic val$subId:I

.field final synthetic val$typeContentDescription:Ljava/lang/String;

.field final synthetic val$volteIcon:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput p4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$statusType:I

    iput p5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$qsType:I

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$activityIn:Z

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$activityOut:Z

    iput p8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$volteIcon:I

    iput-object p9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$typeContentDescription:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$description:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$isWide:Z

    iput p12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$subId:I

    iput-boolean p13, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$roaming:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/CallbackHandler;->mSignalCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .line 145
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isOppoSystemuiNetworkUi()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataIndicators:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Statusbar"

    const-string v4, "CallBackHandler"

    invoke-static {v3, v4, v1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$statusIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$qsIcon:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$statusType:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$qsType:I

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$activityIn:Z

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$activityOut:Z

    iget v9, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$volteIcon:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$typeContentDescription:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$description:Ljava/lang/String;

    iget-boolean v12, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$isWide:Z

    iget v13, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$subId:I

    iget-boolean v14, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$2;->val$roaming:Z

    invoke-interface/range {v2 .. v14}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZILjava/lang/String;Ljava/lang/String;ZIZ)V

    goto :goto_0

    :cond_1
    return-void
.end method
