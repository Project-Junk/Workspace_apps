.class Lcom/platform/usercenter/common/security/SecurityProtocolManager$LazyHolder;
.super Ljava/lang/Object;
.source "SecurityProtocolManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/common/security/SecurityProtocolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LazyHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/platform/usercenter/common/security/SecurityProtocolManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/platform/usercenter/common/security/SecurityProtocolManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/platform/usercenter/common/security/SecurityProtocolManager;-><init>(Lcom/platform/usercenter/common/security/SecurityProtocolManager$1;)V

    sput-object v0, Lcom/platform/usercenter/common/security/SecurityProtocolManager$LazyHolder;->INSTANCE:Lcom/platform/usercenter/common/security/SecurityProtocolManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
