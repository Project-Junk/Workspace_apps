.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/SubscriptionController;

.field private final synthetic f$1:Landroid/os/ParcelUuid;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/ParcelUuid;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    iput-object p2, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;->f$1:Landroid/os/ParcelUuid;

    iput-object p3, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;->f$1:Landroid/os/ParcelUuid;

    iget-object v2, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$fhiBEWuOayfoxzOdGnhRr0rVlUE;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->lambda$getSubscriptionsInGroup$4$SubscriptionController(Landroid/os/ParcelUuid;Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    return p1
.end method
