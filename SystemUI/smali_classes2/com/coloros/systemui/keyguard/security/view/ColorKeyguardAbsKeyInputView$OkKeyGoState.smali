.class public final enum Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;
.super Ljava/lang/Enum;
.source "ColorKeyguardAbsKeyInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "OkKeyGoState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

.field public static final enum GO_BACK:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

.field public static final enum GO_DONE:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 70
    new-instance v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    const/4 v1, 0x0

    const-string v2, "GO_BACK"

    invoke-direct {v0, v2, v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_BACK:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    .line 71
    new-instance v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    const/4 v2, 0x1

    const-string v3, "GO_DONE"

    invoke-direct {v0, v3, v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_DONE:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    const/4 v0, 0x2

    .line 69
    new-array v0, v0, [Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    sget-object v3, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_BACK:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->GO_DONE:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->$VALUES:[Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;
    .locals 1

    .line 69
    const-class v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    return-object p0
.end method

.method public static values()[Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;
    .locals 1

    .line 69
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->$VALUES:[Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    invoke-virtual {v0}, [Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardAbsKeyInputView$OkKeyGoState;

    return-object v0
.end method
