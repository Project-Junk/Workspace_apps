.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$z1ZWZtk5wqutKrKUs4Unkis2MRg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/SubscriptionController;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$z1ZWZtk5wqutKrKUs4Unkis2MRg;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    iput-object p2, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$z1ZWZtk5wqutKrKUs4Unkis2MRg;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$z1ZWZtk5wqutKrKUs4Unkis2MRg;->f$0:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v1, p0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$z1ZWZtk5wqutKrKUs4Unkis2MRg;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->lambda$getAccessibleSubscriptionInfoList$1$SubscriptionController(Ljava/lang/String;Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    return p1
.end method
