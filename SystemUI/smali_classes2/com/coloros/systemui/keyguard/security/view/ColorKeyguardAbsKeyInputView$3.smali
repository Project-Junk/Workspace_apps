.class synthetic Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$3;
.super Ljava/lang/Object;
.source "ColorKeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$coloros$systemui$keyguard$security$view$ColorKeyguardAbsKeyInputView$OkKeyGoState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->values()[Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$3;->$SwitchMap$com$coloros$systemui$keyguard$security$view$ColorKeyguardAbsKeyInputView$OkKeyGoState:[I

    :try_start_0
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$3;->$SwitchMap$com$coloros$systemui$keyguard$security$view$ColorKeyguardAbsKeyInputView$OkKeyGoState:[I

    sget-object v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_BACK:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$3;->$SwitchMap$com$coloros$systemui$keyguard$security$view$ColorKeyguardAbsKeyInputView$OkKeyGoState:[I

    sget-object v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_DONE:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
