.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$MMx9iQX0JVqqMPLTUZhdBubFSzU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$MMx9iQX0JVqqMPLTUZhdBubFSzU;->f$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionInfoUpdater$MMx9iQX0JVqqMPLTUZhdBubFSzU;->f$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->lambda$updateSubscriptionInfoByIccId$2$SubscriptionInfoUpdater(Ljava/lang/Integer;)V

    return-void
.end method
