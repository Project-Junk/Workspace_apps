.class Lcom/heytap/openid/sdk/OpenIDHelper$OpenIDHelperHolder;
.super Ljava/lang/Object;
.source "OpenIDHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/openid/sdk/OpenIDHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenIDHelperHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/heytap/openid/sdk/OpenIDHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/heytap/openid/sdk/OpenIDHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/heytap/openid/sdk/OpenIDHelper;-><init>(Lcom/heytap/openid/sdk/OpenIDHelper$1;)V

    sput-object v0, Lcom/heytap/openid/sdk/OpenIDHelper$OpenIDHelperHolder;->INSTANCE:Lcom/heytap/openid/sdk/OpenIDHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/heytap/openid/sdk/OpenIDHelper;
    .locals 1

    .line 37
    sget-object v0, Lcom/heytap/openid/sdk/OpenIDHelper$OpenIDHelperHolder;->INSTANCE:Lcom/heytap/openid/sdk/OpenIDHelper;

    return-object v0
.end method
