.class Lcom/platform/usercenter/common/constants/EnvConstantManager$SingletonHolder;
.super Ljava/lang/Object;
.source "EnvConstantManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/platform/usercenter/common/constants/EnvConstantManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonHolder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/platform/usercenter/common/constants/EnvConstantManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/platform/usercenter/common/constants/EnvConstantManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/platform/usercenter/common/constants/EnvConstantManager;-><init>(Lcom/platform/usercenter/common/constants/EnvConstantManager$1;)V

    sput-object v0, Lcom/platform/usercenter/common/constants/EnvConstantManager$SingletonHolder;->INSTANCE:Lcom/platform/usercenter/common/constants/EnvConstantManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/platform/usercenter/common/constants/EnvConstantManager;
    .locals 1

    .line 10
    sget-object v0, Lcom/platform/usercenter/common/constants/EnvConstantManager$SingletonHolder;->INSTANCE:Lcom/platform/usercenter/common/constants/EnvConstantManager;

    return-object v0
.end method