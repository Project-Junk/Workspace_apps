.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FHid4fId_8FGzS_VkQR6V_NuxrY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$PermissionCheckHelper;


# instance fields
.field private final synthetic f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FHid4fId_8FGzS_VkQR6V_NuxrY;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iput-object p2, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FHid4fId_8FGzS_VkQR6V_NuxrY;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final checkPermission(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FHid4fId_8FGzS_VkQR6V_NuxrY;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v1, p0, Lcom/android/internal/telephony/-$$Lambda$PhoneSubInfoController$FHid4fId_8FGzS_VkQR6V_NuxrY;->f$1:Ljava/lang/String;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->lambda$callPhoneMethodForSubIdWithPrivilegedCheck$24$PhoneSubInfoController(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
