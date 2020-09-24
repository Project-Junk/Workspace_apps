.class public final synthetic Lcom/android/ims/-$$Lambda$e$Lzl8s8jP23p9Bc33uHfTrrlbPf0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/ims/-$$Lambda$e$Lzl8s8jP23p9Bc33uHfTrrlbPf0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/-$$Lambda$e$Lzl8s8jP23p9Bc33uHfTrrlbPf0;

    invoke-direct {v0}, Lcom/android/ims/-$$Lambda$e$Lzl8s8jP23p9Bc33uHfTrrlbPf0;-><init>()V

    sput-object v0, Lcom/android/ims/-$$Lambda$e$Lzl8s8jP23p9Bc33uHfTrrlbPf0;->INSTANCE:Lcom/android/ims/-$$Lambda$e$Lzl8s8jP23p9Bc33uHfTrrlbPf0;

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

    check-cast p1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    invoke-static {p1}, Lcom/android/ims/e;->lambda$Lzl8s8jP23p9Bc33uHfTrrlbPf0(Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;)Z

    move-result p1

    return p1
.end method
