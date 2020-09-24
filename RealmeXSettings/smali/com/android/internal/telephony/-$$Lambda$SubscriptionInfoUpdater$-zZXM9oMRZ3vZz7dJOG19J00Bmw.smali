.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$-zZXM9oMRZ3vZz7dJOG19J00Bmw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/uicc/UiccController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$-zZXM9oMRZ3vZz7dJOG19J00Bmw;->f$0:Lcom/android/internal/telephony/uicc/UiccController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$-zZXM9oMRZ3vZz7dJOG19J00Bmw;->f$0:Lcom/android/internal/telephony/uicc/UiccController;

    check-cast p1, Lcom/android/internal/telephony/uicc/UiccSlot;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->lambda$updateSubscriptionInfoByIccId$1(Lcom/android/internal/telephony/uicc/UiccController;Lcom/android/internal/telephony/uicc/UiccSlot;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
