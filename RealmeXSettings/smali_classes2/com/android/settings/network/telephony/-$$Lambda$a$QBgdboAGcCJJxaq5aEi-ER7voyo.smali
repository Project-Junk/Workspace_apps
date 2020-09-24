.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$a$QBgdboAGcCJJxaq5aEi-ER7voyo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a$QBgdboAGcCJJxaq5aEi-ER7voyo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$a$QBgdboAGcCJJxaq5aEi-ER7voyo;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$a$QBgdboAGcCJJxaq5aEi-ER7voyo;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$a$QBgdboAGcCJJxaq5aEi-ER7voyo;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$a$QBgdboAGcCJJxaq5aEi-ER7voyo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/telephony/CellInfo;

    invoke-static {p1}, Lcom/android/settings/network/telephony/a;->lambda$QBgdboAGcCJJxaq5aEi-ER7voyo(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
