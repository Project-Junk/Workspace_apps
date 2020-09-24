.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$VCQsMNqRHpN3RyoXYzh2YUwA2yc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$VCQsMNqRHpN3RyoXYzh2YUwA2yc;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$VCQsMNqRHpN3RyoXYzh2YUwA2yc;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->lambda$getActiveSubIdList$3$SubscriptionController(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
