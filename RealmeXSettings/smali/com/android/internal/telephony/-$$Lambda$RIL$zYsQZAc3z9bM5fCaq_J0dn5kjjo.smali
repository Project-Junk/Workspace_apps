.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$RIL$zYsQZAc3z9bM5fCaq_J0dn5kjjo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$zYsQZAc3z9bM5fCaq_J0dn5kjjo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$RIL$zYsQZAc3z9bM5fCaq_J0dn5kjjo;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$RIL$zYsQZAc3z9bM5fCaq_J0dn5kjjo;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$RIL$zYsQZAc3z9bM5fCaq_J0dn5kjjo;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$RIL$zYsQZAc3z9bM5fCaq_J0dn5kjjo;

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

    invoke-static {p1}, Lcom/android/internal/telephony/RIL;->lambda$convertDataCallResult$0(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
