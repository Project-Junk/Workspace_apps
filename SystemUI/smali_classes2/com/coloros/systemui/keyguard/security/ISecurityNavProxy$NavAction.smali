.class public final enum Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;
.super Ljava/lang/Enum;
.source "ISecurityNavProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

.field public static final enum NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

.field public static final enum NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

.field public static final enum NAV_INVALID:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    const/4 v1, 0x0

    const-string v2, "NAV_INVALID"

    invoke-direct {v0, v2, v1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_INVALID:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    .line 24
    new-instance v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    const/4 v2, 0x1

    const-string v3, "NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD"

    invoke-direct {v0, v3, v2}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    .line 25
    new-instance v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    const/4 v3, 0x2

    const-string v4, "NAV_BACK_KEY_DELETE_PWD_INPUT"

    invoke-direct {v0, v4, v3}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    const/4 v0, 0x3

    .line 22
    new-array v0, v0, [Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    sget-object v4, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_INVALID:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    aput-object v4, v0, v1

    sget-object v1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->$VALUES:[Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;
    .locals 1

    .line 22
    const-class v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    return-object p0
.end method

.method public static values()[Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;
    .locals 1

    .line 22
    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->$VALUES:[Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    invoke-virtual {v0}, [Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    return-object v0
.end method
