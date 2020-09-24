.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$RIL$Ir4pOMTf7R0Jtw4O3F7JgMVtXO4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$Ir4pOMTf7R0Jtw4O3F7JgMVtXO4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$RIL$Ir4pOMTf7R0Jtw4O3F7JgMVtXO4;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$RIL$Ir4pOMTf7R0Jtw4O3F7JgMVtXO4;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$RIL$Ir4pOMTf7R0Jtw4O3F7JgMVtXO4;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$Ir4pOMTf7R0Jtw4O3F7JgMVtXO4;

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

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->lambda$convertDataCallResult$1(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
