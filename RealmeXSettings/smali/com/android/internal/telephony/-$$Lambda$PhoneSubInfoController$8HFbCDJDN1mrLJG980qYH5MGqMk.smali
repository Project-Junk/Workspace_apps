.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$8HFbCDJDN1mrLJG980qYH5MGqMk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$8HFbCDJDN1mrLJG980qYH5MGqMk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$8HFbCDJDN1mrLJG980qYH5MGqMk;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$8HFbCDJDN1mrLJG980qYH5MGqMk;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$8HFbCDJDN1mrLJG980qYH5MGqMk;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$8HFbCDJDN1mrLJG980qYH5MGqMk;

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

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$callPhoneMethodForSubIdWithReadPhoneNumberCheck$26(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
