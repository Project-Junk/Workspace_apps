.class Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;
.super Ljava/lang/Object;
.source "OnScreenFingerprintControl.java"

# interfaces
.implements Lcom/color/compat/hardware/fingerprint/FingerprintManagerNative$OpticalFingerprintListenerCallbackNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpticalFingerprintUpdate(I)V
    .locals 6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOpticalFingerprintUpdate i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnScreenFingerprintControl"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    const-string v2, "waiting for closing of status bar"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_9

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eq p1, v4, :cond_6

    if-eq p1, v5, :cond_4

    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->stopFaceCheck(Z)V

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->touchEvent(Z)V

    goto/16 :goto_0

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0, v3}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$002(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Z)Z

    .line 192
    sput-boolean v3, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->sServiceRequest:Z

    .line 193
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_3
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->composeFpIconLayerImpl(Z)V

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    goto/16 :goto_0

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 175
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->stopFaceCheck(Z)V

    .line 178
    :cond_5
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v2, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->touchEvent(Z)V

    goto :goto_0

    .line 157
    :cond_6
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isPlatformMtk()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-boolean v0, v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mScreenTurnedOff:Z

    if-eqz v0, :cond_7

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v0, v5}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->setDozeOverride(I)V

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$400(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockMediator;->startListeningForFaceByFP()V

    .line 169
    :cond_8
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v0, v3}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->touchEvent(Z)V

    goto :goto_0

    .line 145
    :cond_9
    iget-object v4, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v4, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$002(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Z)Z

    .line 146
    sput-boolean v3, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->sServiceRequest:Z

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$200(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 148
    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_a
    invoke-static {v3}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->composeFpIconLayerImpl(Z)V

    .line 151
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$300(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->enableAODShowMech()V

    goto :goto_0

    .line 138
    :cond_b
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v2, v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$002(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;Z)Z

    .line 139
    sput-boolean v0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->sServiceRequest:Z

    .line 140
    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->composeFpIconLayerImpl(Z)V

    .line 141
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->access$100(Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;)V

    :goto_0
    if-nez p1, :cond_c

    .line 204
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    .line 205
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/face/KeyguardFaceUnlockHelper;->isFaceAuthStayOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 206
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthSucceed()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 207
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardOccluded()Z

    move-result p1

    if-nez p1, :cond_c

    const-string p0, "don\'t cancel highlight when faceUnlock stayOn."

    .line 208
    invoke-static {v1, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_c
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl$2;->this$0:Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->mContext:Landroid/content/Context;

    sget-boolean p1, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintDisplayControl;->sServiceRequest:Z

    invoke-static {p0, p1}, Lcom/coloros/systemui/keyguard/onscreenfingerprint/OnScreenFingerprintControl;->highlightControl(Landroid/content/Context;Z)V

    return-void
.end method
