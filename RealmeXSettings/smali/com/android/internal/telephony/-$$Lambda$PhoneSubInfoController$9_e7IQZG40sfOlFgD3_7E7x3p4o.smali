.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$9_e7IQZG40sfOlFgD3_7E7x3p4o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$9_e7IQZG40sfOlFgD3_7E7x3p4o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$9_e7IQZG40sfOlFgD3_7E7x3p4o;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$9_e7IQZG40sfOlFgD3_7E7x3p4o;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$9_e7IQZG40sfOlFgD3_7E7x3p4o;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$9_e7IQZG40sfOlFgD3_7E7x3p4o;

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

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$getIsimPcscf$18(Lcom/android/internal/telephony/Phone;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method