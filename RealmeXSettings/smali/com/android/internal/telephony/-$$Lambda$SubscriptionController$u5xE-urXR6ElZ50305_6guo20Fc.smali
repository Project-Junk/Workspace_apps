.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$u5xE-urXR6ElZ50305_6guo20Fc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$u5xE-urXR6ElZ50305_6guo20Fc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$u5xE-urXR6ElZ50305_6guo20Fc;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$u5xE-urXR6ElZ50305_6guo20Fc;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$u5xE-urXR6ElZ50305_6guo20Fc;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$SubscriptionController$u5xE-urXR6ElZ50305_6guo20Fc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->lambda$getActiveSubIdArrayList$2(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I

    move-result p1

    return p1
.end method