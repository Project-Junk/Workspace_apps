.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Pb4HmeqsjasrNaXBByGh_-CFogk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Pb4HmeqsjasrNaXBByGh_-CFogk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Pb4HmeqsjasrNaXBByGh_-CFogk;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Pb4HmeqsjasrNaXBByGh_-CFogk;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Pb4HmeqsjasrNaXBByGh_-CFogk;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$Pb4HmeqsjasrNaXBByGh_-CFogk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$resetCarrierKeysForImsiEncryption$5(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
