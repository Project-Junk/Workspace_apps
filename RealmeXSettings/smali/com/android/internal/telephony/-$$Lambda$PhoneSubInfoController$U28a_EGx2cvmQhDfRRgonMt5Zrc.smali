.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$U28a_EGx2cvmQhDfRRgonMt5Zrc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$U28a_EGx2cvmQhDfRRgonMt5Zrc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$U28a_EGx2cvmQhDfRRgonMt5Zrc;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$U28a_EGx2cvmQhDfRRgonMt5Zrc;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$U28a_EGx2cvmQhDfRRgonMt5Zrc;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$U28a_EGx2cvmQhDfRRgonMt5Zrc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$callPhoneMethodForSubIdWithReadSubscriberIdentifiersCheck$23(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
