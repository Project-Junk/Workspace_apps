.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$D5yF1HbS4cvCyoAj3FESkPtA_0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$D5yF1HbS4cvCyoAj3FESkPtA_0g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$D5yF1HbS4cvCyoAj3FESkPtA_0g;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$D5yF1HbS4cvCyoAj3FESkPtA_0g;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$D5yF1HbS4cvCyoAj3FESkPtA_0g;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$D5yF1HbS4cvCyoAj3FESkPtA_0g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->lambda$updateSubscriptionInfoByIccId$0(Lcom/android/internal/telephony/uicc/UiccSlot;)Z

    move-result p1

    return p1
.end method
