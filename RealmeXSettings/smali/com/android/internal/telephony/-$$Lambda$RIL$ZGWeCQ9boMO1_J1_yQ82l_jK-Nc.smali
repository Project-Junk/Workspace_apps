.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$RIL$ZGWeCQ9boMO1_J1_yQ82l_jK-Nc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$ZGWeCQ9boMO1_J1_yQ82l_jK-Nc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$RIL$ZGWeCQ9boMO1_J1_yQ82l_jK-Nc;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$RIL$ZGWeCQ9boMO1_J1_yQ82l_jK-Nc;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$RIL$ZGWeCQ9boMO1_J1_yQ82l_jK-Nc;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$ZGWeCQ9boMO1_J1_yQ82l_jK-Nc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->lambda$convertDataCallResult$3(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
