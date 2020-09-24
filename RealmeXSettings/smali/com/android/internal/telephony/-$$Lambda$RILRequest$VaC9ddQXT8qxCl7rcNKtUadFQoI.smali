.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$RILRequest$VaC9ddQXT8qxCl7rcNKtUadFQoI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RILRequest$VaC9ddQXT8qxCl7rcNKtUadFQoI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$RILRequest$VaC9ddQXT8qxCl7rcNKtUadFQoI;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$RILRequest$VaC9ddQXT8qxCl7rcNKtUadFQoI;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$RILRequest$VaC9ddQXT8qxCl7rcNKtUadFQoI;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RILRequest$VaC9ddQXT8qxCl7rcNKtUadFQoI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telephony/RILRequest;->lambda$obtain$0(I)I

    move-result p1

    return p1
.end method
