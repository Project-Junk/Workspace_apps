.class synthetic Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$2;
.super Ljava/lang/Object;
.source "KeyguardNavigationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$coloros$systemui$keyguard$security$ISecurityNavProxy$NavAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 114
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->values()[Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$2;->$SwitchMap$com$coloros$systemui$keyguard$security$ISecurityNavProxy$NavAction:[I

    :try_start_0
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$2;->$SwitchMap$com$coloros$systemui$keyguard$security$ISecurityNavProxy$NavAction:[I

    sget-object v1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$2;->$SwitchMap$com$coloros$systemui$keyguard$security$ISecurityNavProxy$NavAction:[I

    sget-object v1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
